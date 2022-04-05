## INDEX

- [INDEX](#index)
- [types](#types)
  - [Referenced Types](#referenced-types)
  - [Primitive Types](#primitive-types)
- [Numbers](#numbers)
  - [Whole Numbers](#whole-numbers)
  - [Decimal Numbers](#decimal-numbers)
  - [Signed](#signed)
  - [Unsigned](#unsigned)
- [Jagged Array](#jagged-array)
  - [use a jagged array?](#use-a-jagged-array)
- [Search Array](#search-array)
  - [Linear (sequential) Search `O(n)`](#linear-sequential-search-on)
- [Big O Notation](#big-o-notation)
  - [Operations](#operations)
  - [O(1) Time (Constant Time)](#o1-time-constant-time)
    - [If you plan on inserting once and accessing a bunch, then an array is a good data structure to use !!](#if-you-plan-on-inserting-once-and-accessing-a-bunch-then-an-array-is-a-good-data-structure-to-use-)
- [Linked Lists](#linked-lists)
- [Singly vs. doubly linked lists](#singly-vs-doubly-linked-lists)
- [stack](#stack)
- [Queues](#queues)
- [Pros and cons of stacks and queues](#pros-and-cons-of-stacks-and-queues)
- [associative arrays](#associative-arrays)
  - [hash functions](#hash-functions)
    - [In programming, we often use hash values as a way to get to or store a value at a certain location](#in-programming-we-often-use-hash-values-as-a-way-to-get-to-or-store-a-value-at-a-certain-location)
  - [hash tables](#hash-tables)
- [sets](#sets)
- [tree data structures](#tree-data-structures)
  - [binary search trees `BST`](#binary-search-trees-bst)
  - [Heaps](#heaps)

---

## types

- Data structures are different because the amount of space they take up often depends on how they are allocated initialized and maintained.

### Referenced Types

**(variableName -> memoryAddress -> value)**

- Strings
- **Data Structures**

### Primitive Types

> With primitive data types, we know exactly how much space they will take up. No matter what the specific value is.

**(variableName -> data)**

- int
- boolean
- character
- float
- double
- short
- long

> If we tried to add another integer to a collection we would overwrite the first integer in the second collection. This means by storing data consecutively in data structures, we risk overwriting and losing precious data. How can we solve this? We can use something called `pointers`. Instead of storing the entire data structure directly in a set of consecutive bits, we'll create an address that will point to where the structure, or sometimes part of the structure is in memory.

---

## Numbers

- A single 1 or 0 is a bit
- A boolean is 1 bit

### Whole Numbers

| Data Type | Range of Numbers         | Storage Space |
| --------- | ------------------------ | ------------- |
| **Short** | -32,768 to 32,767        | 16 bits       |
| **Int**   | ~-2 billion to 2 billion | 32 bits       |
| **Long**  | -(2^63) to 2^63          | 64 bits       |

### Decimal Numbers

| Data Type  | Range of Numbers   | Storage Space |
| ---------- | ------------------ | ------------- |
| **Float**  | ~7 decimal digits  | 32 bits       |
| **Double** | ~16 decimal digits | 64 bits       |

### Signed

- Positive and negative values 16-bit short range: -32,768 to 32,767

### Unsigned

- Only positive values 16-bit short range: 0 to 65,535

---

## Jagged Array

- C# (unlike some other languages) differentiates between multidimensional and jagged arrays

- Basic arrays in Java and C++ **CANNOT** be resized
- Basic arrays in Ruby and Javascript **CAN** be resized

### use a jagged array?

Data comes in various shapes and sometimes that shape is uneven. With a 2D-array, there's a potential to waste a great amount of memory by having a great amount of unused space. Jagged arrays can be optimized at the intermediate language level and this can be exploited to speed up programs.

---

## Search Array

### Linear (sequential) Search `O(n)`

> linear search is a linear time algorithm, meaning that the time it takes for the algorithm to run increases the size of the input.

**Best Case:** First item in array is key **O(1) time**

**Worst Case:** Last item in array is key **O(n) time**

---

## Big O Notation

Notation used to describe the performance or complexity of an algorithm

### Operations

- Access
- Updated
- Insertion
  - **Best Case:** Large enough array --> O(1) time
  - **Worst Case:** Array is full --> O(n) time (Linear time)
- Search
  - **Best Case:** Compare to item --> O(1) time
  - **Worst Case:** Item does not exist --> O(n) time
- Delete
  - **Best Case:** Locate and delete item --> O(1) time
  - **Worst Case:** Search, then locate, then delete item --> O(n) time
- Sort (Different types of sorts)

### O(1) Time (Constant Time)

Consistent duration of algorithm execution in same time (or space) regardless of the size of the input

#### If you plan on inserting once and accessing a bunch, then an array is a good data structure to use !!

---

## Linked Lists

- Similar to an array, it's a linear data structure, we link the elements using **pointers**.

- **Node:** contains data and a pointer to the next node.
  - First node is referred to as the "head".
  - last node is referred to as the "tail" that has a **null** next pointer.
- because each link is a pointer, or in other words holds an address to a memory location, this data structure does not have to be stored at neighbouring locations in memory. We can link to **any location in memory**.
- Easiest to insert at the head and tail of the linked list.
- To access we don't need an index. We follow the pointers until we get to the value. Very similar to searching.
- To delete an item, we first have to find the item and then update the next pointer of the node preceding and following that node.

---

## Singly vs. doubly linked lists

- singly linked list : one next pointer
- doubly linked list : one next pointer + previous pointer to each node. **here we can go forward or backward**

---

## stack

- stack is an ordered series of objects just like a list, but its intended use is slightly different. We push objectives onto the stack and pop objects off of it. Think of a stack of pancakes. Each pancake is stacked on top of the other.
- for stacks we add and remove from the **top**. Stacks follow `a last in, first out, or LIFO policy`. We say LIFO because the last item on the stack will be the first item removed from the stack.
- stack especially useful for keeping track of state or the order of when things have occurred.

---

## Queues

queues represent a series of ordered objects, but the way we access, add and remove items is slightly different. If you think of a queue at an amusement park or a line of people at a store, a queue has a **front** and a **back**, and it works the exact same way in code. It is designed to have elements inserted at the end of the queue and elements removed from the beginning of the queue.

- Enqueue : add an item to the queue
- Dequeue : remove an item from the queue

> specialized queue: priority / DEQUEK

---

## Pros and cons of stacks and queues

- **Stacks**
  - are great for programs where you need to **reverse** things. For example, let's say you push a string onto a stack one character at a time.
  - Pushing, peeking and popping takes very little time, in fact, constant time because stacks often have a linked list implementation or dynamic array implementation.
  - Stacks really just help you keep state.
- **queues**
  - show their advantages when you're using first in, first out or FIFO functionality.
  - if you are pulling most items from the middle and not the front of your data structure, then queues are **not** your solution.

---

## associative arrays

- is a collection of key-value pairs.
- Most associative arrays, whether they are dictionaries, maps, or hashes, are implemented using a **hash table**.

### hash functions

- hash functions are not reversible, This means you cannot feed the hash value into another function and get the original data back.

> **ASCII** , it's a format for text files where each character has a single numerical representation. For example, T is represented with 116,
> When two different inputs map to the same hash value or produce the same hash value when thrown into a hash function, we call it a **collision**.

#### In programming, we often use hash values as a way to get to or store a value at a certain location

### hash tables

- it is a typical way of implementing an associative array.
- When a hash table's created internally, it's really an array-based data structure where we add extra functionality to get us past the limitations of an array. We use the term bucket to describe each entry or place for a key-value pair to go in a hash table. We'll never add just a key or just a value. We'll always add a pair.
- in order to find the correct location. There is no linear search and no traversing through a series of elements. We just go straight to the element with the key
- As the size of the bucket grows, we lose the benefits of a hash table which allow us to quickly look up a value for a particular key.

---

## sets

a set is a collection of unique items. The order of these items doesn't matter, but none of the elements are duplicated.

- here we don't care about the order of the elements, and often, we don't even want to retrieve a piece of data. That's why we don't have an index, or key, or anything specific to look up the value.
- Here, we care about membership. With sets, we are usually testing if a piece of data is a member in that set. We care about if the set contains a given number, character, or string, and in implementation,

---

## tree data structures

![tree](./img/tree.png)

- we can think of a linked list as a very specialized type of tree structure where each node has only one link and that link is to a child node.
- **binary-tree** : is where each parent had a maximum of two direct child nodes.

### binary search trees `BST`

- A binary search tree is also a specialized type where we add an additional constraint, order.
- remember the phone-book example from **cs50**
- In a BST, we keep track of order and keep a sorted data structure by being particular about what values are in the left child, right child, and parent nodes.
- Rules:
  - A left child node must be less than its parent
  - A right child node must be more than its parent.
  - That rule follows all the way down.
- when more levels of nodes on the right-hand side than the left. When this happens, we say our tree is **unbalanced**. The downside to having an unbalanced tree is we would have to perform more checks to find, insert, and delete values on the right-hand side than we would the left.

### Heaps

- is a data structure that's implemented as a binary tree.
- heaps are collection of objects
- For a **min heap**, any child must be greater than its parent node. For a **max heap**, any child must be less than its parent node.
- so they take const time to find min or max value.
- searching and deleting take **O(n)** time because we have to scan all items
