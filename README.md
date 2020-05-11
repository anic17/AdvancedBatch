# Exploits

In this repository you will find some batch exploits, including privilege escalation, batch injection and more.
Contribute or wait until we find more vulnerabilities.


## Batch injection

SQL injection is well  known for the trick ```'or '1'='1```, but you will may asking: 
Is there a way to  to the same thing but in a batch file?

The answer is Yes


It's really simple.
Imagine you're using a login program in Batch and you are asking for a password.

First, type in Command Prompt ```type [file to exploit].bat | findstr /c:"-"``` to find all GOTO labels at program.

When you have found the label that bypasses the password, type this code in login: ```& goto [vulnerableLabel]```
When using that, you will be bypassing login.



### If this doesn't work...

Try to change the input to ```&echo on```, to view the password.
This can be easily fixed, one example is Scripting Windows Host Console password that you cannot do any of the two methods.


This may not always work, but with a bad coded login program can bypass the security.







### WARNING: All content in this repository is only for educational purposes and must be NOT used for criminal purposes!
