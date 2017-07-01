state:draft

---

# Problems
1. How to reuse testing code?  
   Extract code in methods and call them.
2. How to reuse entire batteries?  
   Extract test parameters and define a junit parametric test.
3. How to execute a specific failing test from a parametric test in eclipse?  
   You cannot. Extract it in a separate test and call it.

# Conclusions
- Parametric tests are brittle.
- Reuse through methods with parameters.
- Have boilerplate test methods that call the methods with parameters.