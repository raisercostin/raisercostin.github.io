---
layout: post
Date: 2013-11-06
Title: About WI-FI
Tags: howto
Slug: wifi
category : pages
tags : [how-to, jekyll]
image: 2013-11-06-configure-wifi-Program Manager.png
---
# Problem
How to debug/configure wifi connection.
{{ more }}

# Investigation
## Glossary
What are these 

* wifi protocols: 8012.11 a/b/g/n
* data speeds
* n150, 300mbps
* band
* SSID
* channel: 1-9 (for 300mbps), 1-13(for 150mbps)
* channel bandwidth
* security WPA2

## Tools

- InSSIDer3 (windows)
- inSSIDer Office (windows)
- speedtest.net (browser)
- wifi analyser (android)
- ping (windows)
- tracert (windows)
- tcp optimizer
- DNSBench.exe (windows) - https://www.grc.com/DNS/BENCHMARK.HTM
 
## Debugging
- divide and conquer

# Solution
![InSSIDer3 wifi screenshot](/2013-11-06-configure-wifi-Program Manager.png)

## Do & Don't

* Don't use Channel 13 (not compatible with my withing scale and with my samsung galaxy tab 2.0)
* Don't use other channels than 1, 7 and 11 (it seems that they are not standard - as explained in the InSSIDer3 help).
* Do try to use Channel Bandwidth: 20/40 MHz (to have dual channel like: 7+11).
* Do try to use only Band 2.4GHz (802.11n) and not 802.11b/g/n which is good for maximum compatibility but will generate drops in performance if one device is using b or g.