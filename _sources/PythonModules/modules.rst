..  Copyright (C)  Brad Miller, David Ranum, Jeffrey Elkner, Peter Wentworth, Allen B. Downey, Chris
    Meyers, and Dario Mitchell.  Permission is granted to copy, distribute
    and/or modify this document under the terms of the GNU Free Documentation
    License, Version 1.3 or any later version published by the Free Software
    Foundation; with Invariant Sections being Forward, Prefaces, and
    Contributor List, no Front-Cover Texts, and no Back-Cover Texts.  A copy of
    the license is included in the section entitled "GNU Free Documentation
    License".

.. qnum::
   :prefix: modules-1-
   :start: 1

.. index:: documentation online, Global Module Index
   module; standard

Modules and Getting Help
------------------------

.. youtube:: GCLHuPBtLdQ
    :divid: vid_modules
    :height: 315
    :width: 560
    :align: left

A **module** is a file containing Python definitions and statements intended
for use in other Python programs. There are many Python modules that come with
Python as part of the **standard library**. We have already used one of these briefly,
the ``math`` module.  Recall that once we import the module, we can use things
that are defined inside.


.. activecode:: chmod_01
    :nocodelens:

    import math            # allows us to use the math library

    print(math.factorial(10))     # prints 10!
    print(math.exp(4))   		  # prints e^4

    print(math.log2(1024))        # prints log2(1024)
    print(math.sqrt(100))         # prints the square root of 100


Here we are using ``factorial``, ``exp``, ``log2``, and ``sqrt``, all of which are defined inside the math module.

But what if no one had told us about math?  How would we know
that it exists. How would we know what it can do for us? The answer is to ask for help and the best place to get
help about the Python programming environment is to consult with the Python Documentation.


The  `Python Documentation <http://docs.python.org/py3k/>`_ site for Python version 3 (the home page is shown below) is an extremely useful reference
for all aspects of Python.
The site contains
a listing of all the standard modules that are available with Python
(see `Global Module Index <http://docs.python.org/py3k/py-modindex.html>`_).
You will also see that there is a `Language Reference <http://docs.python.org/py3k/reference/index.html>`_
and a `Tutorial <http://docs.python.org/py3k/tutorial/index.html>`_ (mostly aimed at people who are already familiar with another programming language), as well as
installation instructions, how-tos, and frequently asked questions.  We encourage you to become familiar with this site
and to use it often.



.. image:: Figures/pythondocmedium.png

If you have not done so already, take a look at the Global Module Index.  Here you will see an alphabetical listing of all
the modules that are available as part of the standard library.  Find the math module.

.. image:: Figures/moduleindexmedium.png


You can see that all the math functionality that we have talked about is there.  However, there is so much more.  
Take some time to read through and familiarize yourself with some of the other things that math can do.



.. admonition:: Note: Python modules and limitations with activecode

	Throughout the chapters of this book, activecode windows allow you to practice the Python that you are learning.
	We mentioned in the first chapter that programming is normally done using some type of development
	environment and that the
	activecode used here was strictly to help us learn.  It is not the way we write production programs.

	To that end, it is necessary to mention that many of the  modules available in standard Python
	will **not** work in the activecode environment.  In fact, only math and random have been
	completely ported at this point.  If you wish to explore any
	additional modules, you will need to also explore using a more robust development environment.

**Check your understanding**

.. mchoice:: question4_1_1
   :practice: T
   :answer_a: A file containing Python definitions and statements intended for use in other Python programs.
   :answer_b: A separate block of code within a program.
   :answer_c: One line of code in a program.
   :answer_d: A file that contains documentation about functions in Python.
   :correct: a
   :feedback_a: A module can be reused in different programs.
   :feedback_b: While a module is separate block of code, it is separate from a program.
   :feedback_c: The call to a feature within a module may be one line of code, but modules are usually multiple lines of code separate from the program
   :feedback_d: Each module has its own documentation, but the module itself is more than just documentation.

   In Python a module is:

.. mchoice:: question4_1_2
   :practice: T
   :answer_a: Go to the Python Documentation site.
   :answer_b: Look at the import statements of the program you are working with or writing.
   :answer_c: Ask the professor
   :answer_d: Look in this textbook.
   :correct: a
   :feedback_a: The site contains a listing of all the standard modules that are available with Python.
   :feedback_b: The import statements only tell you what modules are currently being used in the program, not how to use them or what they contain.
   :feedback_c: While the professor knows a subset of the modules available in Python, chances are the professor will have to look up the available modules just like you would.
   :feedback_d: This book only explains a portion of the modules available.  For a full listing you should look elsewhere.

   To find out information on the standard modules available with Python you should:

.. mchoice:: question4_1_3
   :practice: T
   :answer_a: True
   :answer_b: False
   :correct: b
   :feedback_a: Only turtle, math, and random have been ported to work in activecode at this time.
   :feedback_b: Only turtle, math, and random have been ported to work in activecode at this time.

   True / False:  All standard Python modules will work in activecode.
