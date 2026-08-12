# 🐍 Day 14 - Lists

![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python)
![IDE](https://img.shields.io/badge/IDE-PyCharm-green?logo=pycharm)
![Level](https://img.shields.io/badge/Level-Beginner-success)

---

## Overview

A **list** is one of the most commonly used data structures in Python.

A list allows us to store **multiple values inside one variable**. Lists are especially useful when we have a collection of values that we want to access, modify, add to, remove from, or process using loops.

For example, instead of creating separate variables:

```python
student_1 = "Onkar"
student_2 = "Rahul"
student_3 = "Amit"
```

we can store all three values in one list:

```python
students = ["Onkar", "Rahul", "Amit"]
```

The important thing to remember is that a Python list is:

- **Ordered** - elements maintain their position.
- **Mutable** - elements can be changed after the list is created.
- **Indexed** - each element has a position.
- **Iterable** - we can process its elements using loops.
- **Able to contain duplicates** - the same value can appear multiple times.
- **Able to contain different data types** - a single list can contain integers, strings, booleans, etc.

Lists are extremely important for Data Engineering because Python programs frequently work with collections of file names, column names, records, API results, validation errors, and intermediate data.

---

## Table of Contents

- [1. What is a List?](#1-what-is-a-list)
- [2. Creating a List](#2-creating-a-list)
- [3. Accessing List Elements](#3-accessing-list-elements)
- [4. Positive Indexing](#4-positive-indexing)
- [5. Negative Indexing](#5-negative-indexing)
- [6. List Slicing](#6-list-slicing)
- [7. Updating List Elements](#7-updating-list-elements)
- [8. Lists are Mutable](#8-lists-are-mutable)
- [9. Adding Elements](#9-adding-elements)
- [10. Removing Elements](#10-removing-elements)
- [11. Useful Built-in Functions](#11-useful-built-in-functions)
- [12. Useful List Methods](#12-useful-list-methods)
- [13. Traversing a List](#13-traversing-a-list)
- [14. Searching in a List](#14-searching-in-a-list)
- [15. Nested Lists](#15-nested-lists)
- [16. Copying Lists](#16-copying-lists)
- [17. List Assignment vs Copy](#17-list-assignment-vs-copy)
- [18. Sorting Lists](#18-sorting-lists)
- [19. Reversing Lists](#19-reversing-lists)
- [20. List Unpacking](#20-list-unpacking)
- [21. List vs Tuple](#21-list-vs-tuple)
- [22. Common Mistakes](#22-common-mistakes)
- [23. Interview Questions](#23-interview-questions)
- [24. Data Engineering Perspective](#24-data-engineering-perspective)

---

# 1. What is a List?

A list is a collection of values stored inside **square brackets `[]`**.

```python
numbers = [10, 20, 30, 40]
```

Here:

```text
numbers
   ↓
[10, 20, 30, 40]
```

The variable `numbers` refers to one list containing four elements.

A list can also contain different data types:

```python
values = [10, "Python", 3.14, True]
```

Here the list contains:

```text
10       → integer
"Python" → string
3.14     → float
True     → boolean
```

Python does not require every element of a list to have the same data type.

### Important Properties of Lists

| Property | Meaning |
|---|---|
| Ordered | Elements have a defined position |
| Mutable | Elements can be changed |
| Indexed | Elements can be accessed using indexes |
| Iterable | Elements can be processed one by one |
| Duplicates allowed | Same value can appear multiple times |
| Heterogeneous | Different data types can be stored together |

> [!IMPORTANT]
> The two properties you should remember first for interviews are **ordered** and **mutable**.

---

# 2. Creating a List

## 2.1 Creating a List with Values

```python
numbers = [10, 20, 30]
```

The values `10`, `20`, and `30` are stored as three separate elements.

## 2.2 Creating an Empty List

```python
numbers = []
```

This creates a list containing zero elements.

We commonly create an empty list when we plan to add values later.

```python
numbers = []

numbers.append(10)
numbers.append(20)
```

The final list becomes:

```text
[10, 20]
```

## 2.3 Creating a List with Different Data Types

```python
student = [101, "Onkar", 8.0, True]
```

This is valid because Python lists can contain different types of objects.

## 2.4 Using `list()`

Python provides the `list()` constructor for creating a list from an iterable.

```python
numbers = list((10, 20, 30))
```

The tuple `(10, 20, 30)` is converted into:

```text
[10, 20, 30]
```

We can also convert a string into a list of characters:

```python
letters = list("Python")
```

Result:

```text
['P', 'y', 't', 'h', 'o', 'n']
```

> [!NOTE]
> `list()` creates a list from an iterable. The iterable is processed element by element.

---

# 3. Accessing List Elements

Because lists are ordered, every element has a position called an **index**.

Consider:

```python
numbers = [10, 20, 30, 40]
```

The indexes are:

```text
Value:     10   20   30   40
Index:      0    1    2    3
```

Python uses **zero-based indexing**.

That means the first element is at index `0`, not index `1`.

To access an element, use:

```text
list[index]
```

Example:

```python
print(numbers[0])
```

Output:

```text
10
```

Similarly:

```python
print(numbers[2])
```

Output:

```text
30
```

> [!WARNING]
> If you try to access an index that does not exist, Python raises `IndexError`.

---

# 4. Positive Indexing

Positive indexing starts from the **left side** of the list and begins at `0`.

```text
numbers = [10, 20, 30, 40, 50]

Value:  10   20   30   40   50
Index:   0    1    2    3    4
```

For a list of length `5`, the last positive index is `4`.

In general:

```text
last index = len(list) - 1
```

Example:

```python
numbers = [10, 20, 30, 40, 50]

print(numbers[0])
print(numbers[4])
```

Output:

```text
10
50
```

---

# 5. Negative Indexing

Negative indexing starts from the **right side** of the list.

```text
numbers = [10, 20, 30, 40]

Value:      10    20    30    40
Positive:    0     1     2     3
Negative:   -4    -3    -2    -1
```

The last element always has index `-1`.

```python
print(numbers[-1])
```

Output:

```text
40
```

The second-last element is at `-2`:

```python
print(numbers[-2])
```

Output:

```text
30
```

Negative indexing is useful when we want elements from the end without calculating the list length.

---

# 6. List Slicing

Slicing allows us to extract **multiple elements** from a list.

The general syntax is:

```text
list[start : stop : step]
```

Where:

- `start` → where slicing begins
- `stop` → where slicing stops, but this index is **not included**
- `step` → how many positions to move at a time

Consider:

```python
numbers = [10, 20, 30, 40, 50]
```

Now:

```python
print(numbers[1:4])
```

Output:

```text
[20, 30, 40]
```

Index `4` is not included.

## 6.1 Omitting Start

```python
print(numbers[:3])
```

Output:

```text
[10, 20, 30]
```

## 6.2 Omitting Stop

```python
print(numbers[2:])
```

Output:

```text
[30, 40, 50]
```

## 6.3 Using a Step

```python
print(numbers[0:5:2])
```

Output:

```text
[10, 30, 50]
```

## 6.4 Reversing with Slicing

```python
print(numbers[::-1])
```

Output:

```text
[50, 40, 30, 20, 10]
```

A step of `-1` moves from right to left.

---

# 7. Updating List Elements

Lists allow us to change existing elements because they are mutable.

Consider:

```python
numbers = [10, 20, 30]
```

To change `20` to `200`:

```python
numbers[1] = 200
```

Now:

```python
print(numbers)
```

Output:

```text
[10, 200, 30]
```

We can also replace a slice:

```python
numbers = [10, 20, 30, 40]

numbers[1:3] = [200, 300]

print(numbers)
```

Output:

```text
[10, 200, 300, 40]
```

---

# 8. Lists are Mutable

**Mutable** means an object can be changed after it has been created.

Lists are mutable.

```python
numbers = [10, 20, 30]

numbers[0] = 100

print(numbers)
```

Output:

```text
[100, 20, 30]
```

### Compare with a String

Strings are immutable:

```python
text = "Python"
```

This is not allowed:

```python
text[0] = "J"
```

Python raises a `TypeError` because strings cannot be changed character by character.

Lists behave differently:

```python
letters = ["P", "y", "t", "h", "o", "n"]

letters[0] = "J"
```

Now the list becomes:

```text
['J', 'y', 't', 'h', 'o', 'n']
```

> [!IMPORTANT]
> Remember this interview comparison: **list = mutable, string = immutable, tuple = immutable**.

---

# 9. Adding Elements

Python provides three important ways to add elements:

- `append()`
- `insert()`
- `extend()`

## 9.1 `append()`

`append()` adds **one object** to the end of the list.

```python
numbers = [10, 20]

numbers.append(30)

print(numbers)
```

Output:

```text
[10, 20, 30]
```

If we append a list, the entire list becomes one element:

```python
numbers = [1, 2]

numbers.append([3, 4])

print(numbers)
```

Output:

```text
[1, 2, [3, 4]]
```

## 9.2 `insert()`

`insert()` adds an element at a specific index.

Syntax:

```text
list.insert(index, value)
```

Example:

```python
numbers = [10, 20, 30]

numbers.insert(1, 15)

print(numbers)
```

Output:

```text
[10, 15, 20, 30]
```

The existing elements shift to the right.

## 9.3 `extend()`

`extend()` adds elements from another iterable individually.

```python
numbers = [1, 2]

numbers.extend([3, 4])

print(numbers)
```

Output:

```text
[1, 2, 3, 4]
```

### `append()` vs `extend()`

```text
append([3, 4]) → [1, 2, [3, 4]]
extend([3, 4]) → [1, 2, 3, 4]
```

> [!TIP]
> A common interview question is **`append()` vs `extend()`**. Remember: `append()` adds one object; `extend()` adds elements from an iterable.

---

# 10. Removing Elements

Python provides several ways to remove elements:

- `remove()`
- `pop()`
- `del`
- `clear()`

## 10.1 `remove()`

`remove()` removes the **first matching value**.

```python
numbers = [10, 20, 30, 20]

numbers.remove(20)

print(numbers)
```

Output:

```text
[10, 30, 20]
```

If the value does not exist, Python raises `ValueError`.

## 10.2 `pop()`

`pop()` removes an element by index and returns the removed value.

```python
numbers = [10, 20, 30]

value = numbers.pop(1)

print(value)
print(numbers)
```

Output:

```text
20
[10, 30]
```

Without an index, `pop()` removes the last element:

```python
numbers = [10, 20, 30]

value = numbers.pop()

print(value)
print(numbers)
```

Output:

```text
30
[10, 20]
```

## 10.3 `del`

`del` can delete an element or a slice.

```python
numbers = [10, 20, 30]

del numbers[1]

print(numbers)
```

Output:

```text
[10, 30]
```

## 10.4 `clear()`

`clear()` removes every element while keeping the list itself.

```python
numbers = [10, 20, 30]

numbers.clear()

print(numbers)
```

Output:

```text
[]
```

### Removal Comparison

| Operation | Removes by | Returns removed value? |
|---|---|---|
| `remove(value)` | Value | No |
| `pop(index)` | Index | Yes |
| `del list[index]` | Index/slice | No |
| `clear()` | Everything | No |

---

# 11. Useful Built-in Functions

## `len()`

Returns the number of elements.

```python
numbers = [10, 20, 30, 40]

print(len(numbers))
```

Output:

```text
4
```

## `max()`

Returns the largest value.

```python
numbers = [10, 50, 20, 40]

print(max(numbers))
```

Output:

```text
50
```

## `min()`

Returns the smallest value.

```python
print(min(numbers))
```

Output:

```text
10
```

## `sum()`

Returns the total of numeric elements.

```python
numbers = [10, 20, 30]

print(sum(numbers))
```

Output:

```text
60
```

---

# 12. Useful List Methods

| Method | Purpose |
|---|---|
| `append()` | Add one object at the end |
| `insert()` | Add an object at a position |
| `extend()` | Add elements from an iterable |
| `remove()` | Remove the first matching value |
| `pop()` | Remove and return an element |
| `clear()` | Remove all elements |
| `index()` | Find the first matching index |
| `count()` | Count occurrences |
| `sort()` | Sort the list in place |
| `reverse()` | Reverse the list in place |
| `copy()` | Create a shallow copy |

---

# 13. Traversing a List

**Traversing** means visiting each element one by one.

The most common approach is a `for` loop:

```python
languages = ["Python", "SQL", "Snowflake"]

for language in languages:
    print(language)
```

Output:

```text
Python
SQL
Snowflake
```

We can also use indexes:

```python
for index in range(len(languages)):
    print(index, languages[index])
```

Output:

```text
0 Python
1 SQL
2 Snowflake
```

---

# 14. Searching in a List

The `in` operator checks whether a value exists.

```python
languages = ["Python", "SQL", "Snowflake"]

print("Python" in languages)
print("Java" in languages)
```

Output:

```text
True
False
```

`not in` checks that a value does not exist:

```python
print("Java" not in languages)
```

Output:

```text
True
```

### `index()`

`index()` returns the position of the first matching value.

```python
print(languages.index("SQL"))
```

Output:

```text
1
```

> [!WARNING]
> `index()` raises `ValueError` when the value is not present. Use `in` when you only need to check existence.

---

# 15. Nested Lists

A list can contain other lists. This is called a **nested list**.

```python
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]
```

To access `5`:

```python
print(matrix[1][1])
```

Output:

```text
5
```

The first index selects the inner list, and the second index selects the element inside it.

Nested lists can be traversed using nested loops:

```python
for row in matrix:
    for value in row:
        print(value)
```

---

# 16. Copying Lists

Because lists are mutable, copying them correctly is important.

```python
x = [1, 2, 3]
y = x.copy()
```

Now `x` and `y` are separate outer list objects.

```python
y.append(4)

print(x)
print(y)
```

Output:

```text
[1, 2, 3]
[1, 2, 3, 4]
```

This is a **shallow copy**.

For a simple one-level list, modifying the copied list does not modify the original list.

---

# 17. List Assignment vs Copy

Consider:

```python
x = [1, 2, 3]
y = x
```

This does **not** create a new list. Both variables refer to the same object.

Conceptually:

```text
x ─────┐
       ↓
   [1, 2, 3]
       ↑
       └───── y
```

Therefore:

```python
y.append(4)

print(x)
print(y)
```

Output:

```text
[1, 2, 3, 4]
[1, 2, 3, 4]
```

To create a separate shallow copy:

```python
y = x.copy()
```

This distinction is important in Python interviews and when preventing accidental changes to data.

---

# 18. Sorting Lists

`sort()` sorts a list **in place**.

```python
numbers = [50, 10, 40, 20, 30]

numbers.sort()

print(numbers)
```

Output:

```text
[10, 20, 30, 40, 50]
```

For descending order:

```python
numbers.sort(reverse=True)
```

### `sort()` Returns `None`

```python
numbers = [3, 1, 2]

result = numbers.sort()

print(result)
```

Output:

```text
None
```

`sort()` modifies the original list instead of returning a new sorted list.

### `sorted()`

`sorted()` returns a new sorted result:

```python
numbers = [3, 1, 2]

result = sorted(numbers)

print(result)
print(numbers)
```

Output:

```text
[1, 2, 3]
[3, 1, 2]
```

### `sort()` vs `sorted()`

| `sort()` | `sorted()` |
|---|---|
| List method | Built-in function |
| Changes original list | Returns a new sorted result |
| Returns `None` | Returns sorted result |
| Used directly on lists | Works with many iterables |

---

# 19. Reversing Lists

## Using `reverse()`

```python
numbers = [1, 2, 3, 4]

numbers.reverse()

print(numbers)
```

Output:

```text
[4, 3, 2, 1]
```

`reverse()` modifies the original list.

## Using Slicing

```python
numbers = [1, 2, 3, 4]

reversed_numbers = numbers[::-1]

print(reversed_numbers)
```

Output:

```text
[4, 3, 2, 1]
```

Here a new list is created.

---

# 20. List Unpacking

List unpacking assigns elements to multiple variables.

```python
numbers = [10, 20, 30]

a, b, c = numbers
```

Now:

```text
a = 10
b = 20
c = 30
```

Python also supports starred unpacking:

```python
numbers = [10, 20, 30, 40, 50]

first, *middle, last = numbers
```

Now:

```text
first  = 10
middle = [20, 30, 40]
last   = 50
```

---

# 21. List vs Tuple

Lists and tuples are both ordered collections, but their mutability is different.

| List | Tuple |
|---|---|
| Mutable | Immutable |
| Uses `[]` | Uses `()` |
| Elements can be changed | Elements cannot be changed |
| Useful for changing collections | Useful for fixed collections |

Example:

```python
numbers = [10, 20, 30]
numbers[0] = 100
```

This works.

But:

```python
numbers = (10, 20, 30)
numbers[0] = 100
```

raises `TypeError` because tuples are immutable.

Tuples will be covered in detail in **Day 15**.

---

# 22. Common Mistakes

## Mistake 1: Invalid Index

```python
numbers = [10, 20]
print(numbers[2])
```

Valid indexes are `0` and `1`, so Python raises `IndexError`.

## Mistake 2: Confusing `append()` and `extend()`

```text
append([3, 4]) → [1, 2, [3, 4]]
extend([3, 4]) → [1, 2, 3, 4]
```

## Mistake 3: Assuming `y = x` Creates a Copy

```python
x = [1, 2, 3]
y = x
```

Both variables refer to the same list.

Use:

```python
y = x.copy()
```

for a separate shallow copy.

## Mistake 4: Expecting `sort()` to Return a List

```python
numbers = [3, 1, 2]
result = numbers.sort()
print(result)
```

Output:

```text
None
```

Use `sorted(numbers)` when you want a new sorted result.

## Mistake 5: Forgetting that Slice Stop is Exclusive

```python
numbers = [10, 20, 30, 40]
print(numbers[1:3])
```

Output:

```text
[20, 30]
```

Index `3` is not included.

---

# 23. Interview Questions

### Q1. What is a list in Python?

A list is an ordered, mutable collection that can store multiple values. It can contain duplicate values and different data types.

### Q2. Are lists mutable?

Yes. We can change, add, or remove elements after a list has been created.

### Q3. What is the difference between `append()` and `extend()`?

`append()` adds one object as a single element. `extend()` adds elements from an iterable individually.

### Q4. What is the difference between `remove()` and `pop()`?

`remove()` removes the first matching value. `pop()` removes an element by index and returns the removed element.

### Q5. What happens when we write `y = x` for a list?

Both variables reference the same list object. No separate list is created.

### Q6. How do you create a shallow copy of a list?

Use `x.copy()` or slicing such as `x[:]`.

### Q7. What is the difference between `sort()` and `sorted()`?

`sort()` modifies the list in place and returns `None`. `sorted()` returns a new sorted result and leaves the original list unchanged.

### Q8. What is a nested list?

A nested list is a list containing one or more lists as elements.

### Q9. Can a list contain duplicate values?

Yes.

### Q10. Can a list contain different data types?

Yes.

### Q11. How do you access the last element of a list?

Using negative indexing:

```python
numbers[-1]
```

### Q12. What is list slicing?

List slicing extracts a portion of a list using:

```text
list[start:stop:step]
```

The `stop` index is excluded.

### Q13. What is the difference between `del`, `remove()`, and `pop()`?

- `del` deletes using an index or slice.
- `remove()` deletes the first matching value.
- `pop()` deletes by index and returns the removed value.

### Q14. What happens if `remove()` cannot find the value?

Python raises `ValueError`.

### Q15. What happens if a list index does not exist?

Python raises `IndexError`.

---

# 24. Data Engineering Perspective

Lists are used frequently in Python-based Data Engineering workflows, especially for **small and intermediate collections**.

## 24.1 Storing Column Names

```python
columns = [
    "customer_id",
    "customer_name",
    "email",
    "created_at"
]
```

A list makes it easy to iterate through column names or pass them to another function.

## 24.2 Storing File Names

```python
files = [
    "customers.csv",
    "orders.csv",
    "products.csv"
]
```

We can process them one by one:

```python
for file in files:
    print(file)
```

## 24.3 Storing Validation Errors

During data validation, we may collect errors:

```python
errors = []

errors.append("Missing customer_id")
errors.append("Invalid email")
```

The list can then contain:

```text
["Missing customer_id", "Invalid email"]
```

## 24.4 Holding Records Before Database Loading

A Python program may temporarily hold a small batch of records:

```python
records = [
    (101, "Onkar", "onkar@example.com"),
    (102, "Rahul", "rahul@example.com"),
    (103, "Amit", "amit@example.com")
]
```

The list contains multiple tuples, where each tuple represents one record.

## 24.5 Memory Consideration

Lists store their elements in memory.

For a very large dataset, loading every record into one Python list can consume significant memory.

For large-scale processing, Data Engineers may use:

- Generators
- Iterators
- Streaming
- Batch processing
- DataFrame processing
- Distributed processing

> [!IMPORTANT]
> Knowing the syntax of lists is not enough for a Data Engineer. You should also understand when keeping data in an in-memory Python list is appropriate and when it can become a scalability problem.

---

## Navigation

🏠 **Home:** [Python Daily Learning Journey](../README.md)

⬅️ **Previous:** [Day 13 - Strings](../Day_13_Strings/readme.md)

➡️ **Next:** [Day 15 - Tuples](../Day_15_Tuples/readme.md)
