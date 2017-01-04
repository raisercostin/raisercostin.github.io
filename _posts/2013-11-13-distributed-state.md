Date: 2013-11-13
Title: Distributed state management
Tags: design, decisions, eessi
Slug: distributed-state

## State vs Events
It will be nice to always perceive the status of a flow at two levels:
- Raw Flow (Raw/Low Level Flow) - is just the simple ordered list of all FlowChanges. All the information is there.
- Flow (Business/High Level Flow) - is the high level state of the flow described in business terms. This state is inferred from the Raw Flow.

In general is good to decouple those since they are very useful in different circumstances and good to support different responsibilities:
Raw Flow is good for 

* synchronizing all the details, 
* to ensure parallelism, 
* to detect conflicting changes, 
* to export/import data to other systems, 
* to visualize the flow changes as a list of papers in a folder.

Flow is good/is easy to be used for

* get the active list of participants
* get the list of seds
* get the owners of seds
* get the list of responsibilities to send seds to others
* get the active/canceled seds
* get the following rules (what sed followed what sed)

Is important to always think of them as they are equivalent and that any of them represents properly the Flow State. In our case we always compute the Flow from the RawFlow

## Issues

Regarding adding data in the header of the messages which can be seen as flow amendments to the SED layer there are several drawbacks that prevents this:

1. If state (and not events) are exchanged in parallel between counter parties you will observe in-transit problems. The simplest system that I can imagine is this.
 - Let's assume you have a central state machine.
 - You have two operations on it: getCurrentState() and setCurrentState(x)
 - If you have only one process that want to change the state it can always cal getCurrentState(), based on this computes a new state y that then is passed with setCurrentState(y)
 - In case you want to have parallel changes to the state machine you need to ensure that nobody modifies the state from the moment you get the current state and compute the new state. You can do this by having a lock on the central state machine. If you will not have this you could end up having an inconsistent state.
 - In a parallel system you will have additional problems on creating such a distributed lock.
 - The proper solution to interact with the state machine is for each process to generate events, and a single process will deliver these events to the state machine. The state machine changes consistently the state based on the events and not by directly changing the state by an external system.
 - The pattern is described by several terms out of which on hype are the [actor systems](http://en.wikipedia.org/wiki/Actor_model). Clarifications you can also found in the way [link state routing protocol](http://en.wikipedia.org/wiki/Link-state_routing_protocol) is implemented
1. A second way to describe the system in more business terms is the following:
 - A decision is shared between two clerks. Any of them could decide who will pay an ammount.
 - In parallel each of them communicate a state: the payer will be x (decides the first clerk) the payer will be y (decides the second clerk).
 - Based on these local decisions money are sent to a person from both institutions.
 -First problem is to detect that the state decided by X is conflicted with state decided by Y. They could be legitimate if state decided by Y was taken in full knowledge of state decided by X. To solve this problem in terms of states is hard.
 - In case you solve first you have a second problem how do you "revert" all the state changes that happened on an invalid state? This problem is even harder.
1. The problem becomes extremely simple if you attempt to solve it in terms of events. Each clerk want to change the state according to an event. The event might be accepted or rejected. Any successive event will be tried and only the ones that have meaning(don't introduce conflicts) will be applied.
1. In our case the state that we are talking about is the participant list. The full participant list if is attempt to be exchanged in the messages might be inconsistent. We need a full participant list (as a state of flow) that is constructed from parallel events.

## Solution

1. In our case the Flow State is a complex/combined state that can be always computed from the Flow Changes (events) and never computed from partial state communicated through various messages.
