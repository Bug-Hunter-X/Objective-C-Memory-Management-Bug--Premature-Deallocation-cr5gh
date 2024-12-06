# Objective-C Memory Management Bug: Premature Deallocation

This repository demonstrates a common Objective-C memory management bug involving premature object deallocation.  The bug occurs when a method receives an object without retaining it, leading to unexpected behavior or crashes.

## Bug Description
The `bug.m` file contains a class `MyClass` with a method `someMethod` that takes a string as input.  This method assigns the string to a property without retaining it.  If the string object's reference count drops to zero before `someMethod` finishes, the object is deallocated, causing potential problems.

## Solution
The `bugSolution.m` file provides a corrected version that addresses the bug by retaining the incoming string object using a `strong` property.