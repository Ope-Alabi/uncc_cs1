..  Copyright (C)  Brad Miller, David Ranum, Jeffrey Elkner, Peter Wentworth, Allen B. Downey, Chris
    Meyers, and Dario Mitchell.  Permission is granted to copy, distribute
    and/or modify this document under the terms of the GNU Free Documentation
    License, Version 1.3 or any later version published by the Free Software
    Foundation; with Invariant Sections being Forward, Prefaces, and
    Contributor List, no Front-Cover Texts, and no Back-Cover Texts.  A copy of
    the license is included in the section entitled "GNU Free Documentation
    License".

.. qnum::
   :prefix: list-14-
   :start: 1

.. index:: alias

Aliasing
--------

Since variables refer to objects, if we assign one variable to another, both
variables refer to the same object:

.. activecode:: listalias1
    
    a = [81, 82, 83]
    b = a
    print(a is b)
    
In this case, the reference diagram looks like this:

.. image:: Figures/refdiag4.png
   :alt: State snapshot for multiple references (aliases) to a list 

Because the same list has two different names, ``a`` and ``b``, we say that it
is **aliased**. Changes made with one alias affect the other.  In the codelens example below, you can see that ``a`` and ``b`` refer
to the same list after executing the assignment statement ``b = a``.


.. codelens:: chp09_is3
    :showoutput:
    
    a = [81, 82, 83]
    b = [81, 82, 83]

    print(a == b)
    print(a is b)

    b = a
    print(a == b)
    print(a is b)

    b[0] = 5
    print(a)
    


Although this behavior can be useful, it is sometimes unexpected or
undesirable. In general, it is safer to avoid aliasing when you are working
with mutable objects. Of course, for immutable objects, there's no problem.
That's why Python is free to alias strings and integers when it sees an opportunity to
economize.

**Check your understanding**

.. mchoice:: test_question9_10_1
   :practice: T
   :answer_a: [4, 2, 8, 6, 5]
   :answer_b: [4, 2, 8, 999, 5]
   :correct: b
   :feedback_a: blist is not a copy of alist, it is a reference to the list alist refers to.
   :feedback_b: Yes, since alist and blist both reference the same list, changes to one also change the other.
   
   What is printed by the following statements?
   
   .. code-block:: python

     alist = [4, 2, 8, 6, 5]
     blist = alist
     blist[3] = 999
     print(alist)


.. mchoice:: test_question9_10_2
   :multiple_answers:
   :answer_a: print(list1 == list2)
   :answer_b: print(list1 is list2)
   :answer_c: print(list1 is list3)
   :answer_d: print(list2 is not list3)
   :answer_e: print(list2 != list3)
   :correct: a,c,d
   :feedback_a: list1 and list2 have the same value
   :feedback_b: list1 and list2 have the same value but do not refer to the same object 
   :feedback_c: list3 is assigned to list1, so they refer to the same object
   :feedback_d: list2 and list3 do not refer to the same object.
   :feedback_e: list2 and list3 have the same value
   :practice: T


    Consider the following lists: 

    .. code-block:: python

        list1=[1,100,1000]
        list2=[1,100,1000]
        list3=list1     

    Which statements will output **True**? (Select **all** that apply).