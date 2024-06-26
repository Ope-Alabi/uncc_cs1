..  Copyright (C)  Brad Miller, David Ranum, Jeffrey Elkner, Peter Wentworth, Allen B. Downey, Chris
    Meyers, and Dario Mitchell.  Permission is granted to copy, distribute
    and/or modify this document under the terms of the GNU Free Documentation
    License, Version 1.3 or any later version published by the Free Software
    Foundation; with Invariant Sections being Forward, Prefaces, and
    Contributor List, no Front-Cover Texts, and no Back-Cover Texts.  A copy of
    the license is included in the section entitled "GNU Free Documentation
    License".

.. index:: state of an object
   
Objects Revisited
-----------------

In Python, every value is actually an object. Whether it be a string, a list, or even an integer, they are all objects.  Programs manipulate those objects either by performing
computation with them or by asking them to perform methods.  To be more specific, we say that an object has
a **state** and a collection of **methods** that it can perform.  The state of an object represents those things
that the object knows about itself.  For example, each list has a state consisting
of the items it contains, a length and so on.  Each list also has the ability to add, delete, and sort the items inside of it.  Individual lists are different in 
that even though they are all lists, they differ in the specific values of the individual state attributes (maybe they have different items inside them).


