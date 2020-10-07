# PaperCut Fix
You need 2 scripts - the Visual Basic script which will fire up a shell silently that will invoke the PowerShell script, which first checks connectivity to the server that the PapaerCut cached client lives on, and then checks to see if the client is running. If the client isn't running, we'll start it. 

This is invoked every 15 minutes by a scheduled task.

A few group policies are required to roll out the fix - details below.

# Group Policies

You must have group policies to do the following:

* Copy the script from the deployment or app server onto the target machine - only when it doesn't already exist.
* A scheduled task needs to be deployed to the target machines to invoke the Visual Basic script every 15 minutes. It must be run as the user that's logged in (e.g. `%LogonDomain%\%LogonUser%`). It should be trigger on user login, and every 15 minutes afterwards, and also on workstation unlock.

Whangarei Girls High School, Northland College and Okaihau can be used as reference.