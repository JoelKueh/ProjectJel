============
Guide To Git
============

1. Introduction
---------------

First, a discliamer: This tutorial will not give you an explanation of how git works.
If you run into any errors, you should look them up and try to understand them better.
This will rather give you the three golden commands that you can try to use from the terminal
to do what you want.

But first, some terminology. The repository that is hosted on GitHub is what we call
the remote. It is identical to the local repository that you have on your machine (remember, we made a clone
of that repository) up until you make some change. There is no heirarchy. The two are one and the same,
The remote is not any more valid than the local except for by convention. The only thing that makes the remote
special is because we say it is.

To start, we are going to live in the world of your local repository. Most of the work happens there to begin with.
Both the local and the remote repositories have a history (we call that history a tree).
Once again, the local repository and the remote repository have the same history at the moment of the clone.
They are identical.

Lets say you open up one of the files from your repository, and start making changes.
Those changes are added to what we call the working directory. The working directory is just the current state
of your files. Git can recognize that your working directory is different from the history.
You can add those changes to what we call the staging area (which is just a kind of buffer between the working directory
and the repository). You then commit the files from the staging area to your local repository.

After you have committed your changes to the local repository, you can then push them to the remote.

Strung together, the whole process looks like this. There are many great pictures to explain this.
I like this one

.. image:: https://miro.medium.com/max/1204/1*zpvd5fjZAFGsVAEsvMGKxA.png

1. Git Pull
-----------

Now that you understand the basic idea a little bit more. Here are the commands that
you would use to do what I described above.

The first command is:

.. code-block::
  
  git pull origin main

Git pull takes the remote repository, and "pulls" the changes into your local repository.

Specifically, it is going to take the changes from the remote repository called "origin", and pull it into the local branch "main".
If you are still curious about branches, I encourage you to look them up. You could also do something like

.. code-block::

  git pull origin/foo foo

To pull the code from the "foo" branch on the remote called origin, and put it into the local branch
"foo" on your local repository.

That might all be a little bit over your head for now, so the importan thing to remember is if
someone made any changes to the remote repository, you'll want to use git pull to get yourself
up to date.

1. Git checkout
---------------

The next important command is:

.. code-block::
  
  git checkout

This command is only important if you are working with another git concept called branches,
(which I will save for later). But it is a way to take information from your local repository
and add it to your working directory. In reality, git pull will do most of this for you,
but it is somewhat useful to know.

3. Git add
----------

Now, lets imagine that you start making some changes to your working directory.
Once you finish making the changes you want to make (whatever feature you were working
on is implemented. Maybe you finished making a room, or added a couple pokemon to the pokedex),
you might to add your changes to your repository.

You would do this with the following comand:

.. code-block::

  git add .

This command takes the changes to your working directory and "adds" them to the staging area.
The period means that all of the changes to the working directory are added, but you can use a
file name to only add a specific file (not that you would have to do that).

4. Git commit
-------------

After adding your changes to the staging area, you need to do one more thing before they show
up in your repository. You are going to use the command:

.. code-block::

  git commit

Git commit, once again, takes the changes to the staging area and moves them over
into the repository. Your commit should come with a descriptive message that explains what you did
It should be along the lines of "Finished Viridian city pokemon center room" or "Changed the color of
Nurse Joy's hair"

You add this descriptive message by adding on an argument to the command above.

.. code-block::
  
  git commit -m YOUR_MESSAGE

Where -m stands for the message argument, and YOUR_MESSAGE is your commit message in quotes.

5. Git push
-----------

The last command in the chain is:

.. code-block::

  git push

It is important to note that sometimes, errors will occur when you use git push.