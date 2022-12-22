=====================================
How To Set Up Source Control For GMS2
=====================================

Step 1: Getting GitHub
----------------------

When preparing your workspace to contribute to ProjectJel, there are a couple of things that you have to do.

The first step is setting up a GitHub account so that you can contribute to the online repository that I have created.

1. Go to https://github.com and follow the instructions there to create your account.
2. Next, you need to physically ask me for access to the repository. Send your GitHub username, and I will add you.
3. After I have added you, you will need to accept my request. That can be done with the bell in the top right.

|

Step 2: Getting Git
-------------------

After setting up GitHub, you will need to install some command line utils to begin using git in your terminal.

Got to https://git-scm.com/download/win and use the 64-bit Git for Windows Setup link

Alternatively, this link should start the download automatically `64-bit Git <https://github.com/git-for-windows/git/releases/download/v2.39.0.windows.2/Git-2.39.0.2-64-bit.exe>`_ 

|

Step 3: Setting up Git in the Command line
------------------------------------------

Next, you need to install Git on your system, and set up a couple of things to make it easier to use.

1. Run the installer that you downloaded in the last step.
2. Use all of the default options that it auto-selects for you.
3. Go into file explorer, and made some kind of "repos" folder for your GMS2 projects.
4. Open that folder in the terminal. Right clicking on the folder should give you an option to do this. Alternatively, learn about the "cd" (change directory) command.
5. Run the command "git". If you get an error, then git did not install properly.
6. After you verify the git installation, run these three commands
    1. git config --global user.name "YOUR_NAME" (IN QUOTES)
    2. git config --global user.email "YOUR_EMAIL@GMAIL.COM" (IN QUOTES)
    3. git config --global init.defaultBranch main (NOT IN QUOTES)
7. By this point, you should have access to the repository that I shared with you. Open GitHub and navigate to that repository.
8. There should be a big green button called "<> code"
9.  Click on that button, you should see an https link. Copy that link.
10. Going back to the terminal that you opened up, run git clone YOUR_LINK
11. The folder that you created should now be populated with lots of files. Double click the main project file to verify that everything worked properly.

Now you should have a local copy of the remote repository (the one on GitHub) hosted on your local system
This is YOUR repository. You can break it, add random text, or delete it for all I care.
It is what we call a downstream repository, it will not affect the upstream repository unless you use the command "git push".
I will explain how to do this in a future tutorial.