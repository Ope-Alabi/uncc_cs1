..  Copyright (C)  Brad Miller, David Ranum, Jeffrey Elkner, Peter Wentworth, Allen B. Downey, Chris
    Meyers, and Dario Mitchell.  Permission is granted to copy, distribute
    and/or modify this document under the terms of the GNU Free Documentation
    License, Version 1.3 or any later version published by the Free Software
    Foundation; with Invariant Sections being Forward, Prefaces, and
    Contributor List, no Front-Cover Texts, and no Back-Cover Texts.  A copy of
    the license is included in the section entitled "GNU Free Documentation
    License".

.. qnum::
   :prefix: select-4-
   :start: 1

.. index:: heading, body, selection, if, else, pass, compound statement, conditional statement
   statement; if
   statement; pass

Conditional Execution: Binary Selection
---------------------------------------

.. youtube:: HriDtn-0Dcw
    :height: 315
    :width: 560
    :align: left


In order to write useful programs, we almost always need the ability to check
conditions and change the behavior of the program accordingly. **Selection statements**, sometimes
also referred to as **conditional statements**, give us this ability. The simplest form of selection is the **if statement**.
This is sometimes referred to as **binary selection** since there are two possible paths of execution.

.. activecode:: ch05_4

    x = 15

    if x % 2 == 0:
        print(x, "is even")
    else:
        print(x, "is odd")


The syntax for an ``if`` statement looks like this:

.. sourcecode:: python

    if BOOLEAN EXPRESSION:
        STATEMENTS_1        # executed if condition evaluates to True
    else:
        STATEMENTS_2        # executed if condition evaluates to False

The boolean expression after the ``if`` statement is called the **condition**.
If it is true, then the immediately following indented statements get executed. If not, then the statements
indented under the ``else`` clause get executed.

.. sidebar::  Flowchart of a **if** statement with an **else**

   .. image:: Figures/flowchart_if_else.png

As a program executes, the interpreter always keeps track of which statement is
about to be executed.  We call this the **control flow**, or the **flow of
execution** of the program.  When humans execute programs, they often use their
finger to point to each statement in turn.  So you could think of control flow
as "Python's moving finger".

Control flow until now has been strictly top to bottom, one statement at a
time.  We call this type of control **sequential**.  In Python flow is sequential as long as
successive statements are indented the *same* amount.  The ``if`` statement 
introduces indented sub-statements after the if heading.

Each ``if`` statement consists of a header line and a body. The header
line begins with the keyword ``if`` followed by a *boolean expression* and ends with
a colon (:).

The more indented statements that follow are called a **block** or sometimes a **body**.

Each of the statements inside the first block of statements is executed in order if the boolean
expression evaluates to ``True``. The entire first block of statements
is skipped if the boolean expression evaluates to ``False``, and instead
all the statements under the ``else`` clause are executed.

There is no limit on the number of statements that can appear under the two clauses of an
``if`` statement, but there has to be at least one statement in each block.

Each compound statement includes a heading and all the following further-indented statements in
the block after the heading.  The ``if`` - ``else`` statement is an unusual compound statement because it
has more than one part at the same level of indentation as the ``if`` heading,
(the ``else`` clause, with its own indented block).

.. admonition:: Lab

    * `Approximating Pi with Simulation <../Labs/montepi.html>`_ In this guided lab exercise we will work
      through a problem solving exercise related to approximating the value of pi using random numbers.



**Check your understanding**

.. mchoice:: test_question6_4_1
   :practice: T
   :answer_a: Just one.
   :answer_b: Zero or more.
   :answer_c: One or more.
   :answer_d: One or more, and each must contain the same number.
   :correct: c
   :feedback_a: Each block may also contain more than one.
   :feedback_b: Each block must contain at least one statement.
   :feedback_c: Yes, a block must contain at least one statement and can have many statements.
   :feedback_d: The blocks may contain different numbers of statements.

   How many statements can appear in each block (the if and the else) in a conditional statement?

.. mchoice:: test_question6_4_2
   :practice: T
   :answer_a: TRUE
   :answer_b: FALSE
   :answer_c: TRUE on one line and FALSE on the next
   :answer_d: Nothing will be printed
   :correct: b
   :feedback_a: TRUE is printed by the if-block, which only executes if the conditional (in this case, 4+5 == 10) is true.  In this case 5+4 is not equal to 10.
   :feedback_b: Since 4+5==10 evaluates to False, Python will skip over the if block and execute the statement in the else block.
   :feedback_c: Python would never print both TRUE and FALSE because it will only execute one of the if-block or the else-block, but not both.
   :feedback_d: Python will always execute either the if-block (if the condition is true) or the else-block (if the condition is false).  It would never skip over both blocks.

   What does the following code print (choose from output a, b, c or nothing)?

   .. code-block:: python

     if 4 + 5 == 10:
         print("TRUE")
     else:
         print("FALSE")


.. mchoice:: test_question6_4_3
   :practice: T
   :answer_a: Output a
   :answer_b: Output b
   :answer_c: Output c
   :answer_d: Output d
   :correct: c
   :feedback_a: Although TRUE is printed after the if-else statement completes, both blocks within the if-else statement print something too.  In this case, Python would have had to have skipped both blocks in the if-else statement, which it never would do.
   :feedback_b: Because there is a TRUE printed after the if-else statement ends, Python will always print TRUE as the last statement.
   :feedback_c: Python will print FALSE from within the else-block (because 5+4 does not equal 10), and then print TRUE after the if-else statement completes.
   :feedback_d: To print these three lines, Python would have to execute both blocks in the if-else statement, which it can never do.

   What does the following code print?

   .. code-block:: python

     if 4 + 5 == 10:
         print("TRUE")
     else:
         print("FALSE")
     print("TRUE")

   ::

      a. TRUE

      b.
         TRUE
         FALSE

      c.
         FALSE
         TRUE
      d.
         TRUE
         FALSE
         TRUE
