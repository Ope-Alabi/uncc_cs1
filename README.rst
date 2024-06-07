How to Think Like a Computer Scientist: Interactive Edition
===========================================================

This project began with the original How to Think Like a Computer Scientist text by Jeffrey Elkner, Peter Wentworth, Allen B. Downey, Chris  Meyers, and Dario Mitchell.  Since 2011 Brad Miller, David Ranum, Barbara Ericson, Mark Guzdial, and many others have built on the text making it interactive.

Programming is not a "spectator sport".  It is something you do,
something you participate in. It would make sense, then,
that the book you use to learn programming should allow you to be active.
That is our goal.

This book is meant to provide you with an interactive experience as you learn
to program in Python.  You can read the text, watch videos,
and write and execute Python code.  In addition to simply executing code,
there is a unique feature called 'codelens' that allows you to control the
flow of execution in order to gain a better understanding of how the program
works.

.. image:: https://travis-ci.org/RunestoneInteractive/thinkcspy.svg?branch=master
    :target: https://travis-ci.org/RunestoneInteractive/thinkcspy
    
Getting Started
===============

We have tried to make it as easy as possible for you to build and use this book.  

You can see and read this book online at `runestone.academy <http://runestone.academy/ns/books/published/thinkcspy/index.html?mode=browsing>`_

.. important:: The restructuredText version of this book is deprecated!

Building with PreTeXt
---------------------

1. Create a virtual environment
2. pip install pretextbook
3. To build run: pretext build web
4. pretext view html

Note: The pretext sources are in the pretext folder, we will keep the _sources folder until we are 100% sure that the book has been converted correctly and as thoroughly as possible.

Building with Docker
--------------------

You can build and run the container at the same time with this line ::
    
    docker run -it --rm --name pretext-1212 --network=host $(docker build -q .)

Alternatively, you can just build with ::

    docker build .

This will show building progress.
Removing ``-q --disable-pip-version-check --root-user-action=ignore`` from line 11 of ``Dockerfile`` will show pip installing progress.

Then running the container can be done with ::

    docker run -it --rm --name pretext-1212 --network=host <image id>

The built page will be accessible at ``http://localhost:8128/output/html/``.

Building for Production on a Runestone Server
---------------------------------------------

1. clone this repo to `httlacs` instead of `thinkcspy`
2. Run `rsmanage addcourse` and add `httlacs` as course name and base course name
3. Run `rsmanage build --ptx httlacs`
