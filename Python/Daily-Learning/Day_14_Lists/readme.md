# 🐍 Day 14 - Lists

![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python)
![IDE](https://img.shields.io/badge/IDE-PyCharm-green?logo=pycharm)
![Level](https://img.shields.io/badge/Level-Beginner-success)

---

## Overview

A **list** is an ordered, mutable collection used to store multiple values in a single variable.

Lists are one of the most important Python data structures and are commonly used when processing collections of records, values, and intermediate data in Data Engineering.

---

## Table of Contents

- What is a List?
- Creating Lists
- Indexing
- Negative Indexing
- Slicing
- Lists are Mutable
- Adding Elements
- Removing Elements
- Updating Elements
- Useful List Functions
- Useful List Methods
- Traversing Lists
- Nested Lists
- List Copying
- List vs Tuple
- Common Mistakes
- Interview Questions
- Data Engineering Perspective
- Summary

---

# 1. What is a List?

A list stores multiple values inside square brackets `[]`.

```python
numbers = [10, 20, 30, 40]
```

A list can contain different data types:

```python
values = [10, "Python", 3.14, True]
```

A list is:

- Ordered
- Mutable
- Indexed
- Iterable
- Able to contain duplicate values

---

# 2. Creating Lists

```python
numbers = [10, 20, 30]
names = ["Onkar", "Rahul", "Amit"]
empty_list = []
```

Python also provides `list()`:

```python
numbers = list((10, 20, 30))
```

---

# 3. Indexing

List indexing starts at `0`.

```text
[10, 20, 30, 40]
  0   1   2   3
```

```python
numbers = [10, 20, 30, 40]

print(numbers[0])
print(numbers[2])
```

Output:

```text
10
30
```

---

# 4. Negative Indexing

Negative indexes start from the end.

```text
[10, 20, 30, 40]
 -4  -3  -2  -1
```

```python
print(numbers[-1])
```

Output:

```text
40
```

---

# 5. Slicing

Slicing extracts part of a list.

```python
numbers = [10, 20, 30, 40, 50]

print(numbers[1:4])
```

Output:

```text
[20, 30, 40]
```

General syntax:

```text
list[start:stop:step]
```

The `stop` index is excluded.

---

# 6. Lists are Mutable

Mutable means that an existing list can be changed after creation.

```python
numbers = [10, 20, 30]

numbers[1] = 200

print(numbers)
```

Output:

```text
[10, 200, 30]
```

> [!IMPORTANT]
> Lists are mutable, while strings and tuples are immutable.

---

# 7. Adding Elements

### `append()`

Adds one element at the end.

```python
numbers = [10, 20]
numbers.append(30)
```

Result:

```text
[10, 20, 30]
```

### `insert()`

Adds an element at a specific position.

```python
numbers.insert(1, 15)
```

### `extend()`

Adds multiple elements from another iterable.

```python
numbers.extend([40, 50])
```

> [!NOTE]
> `append([40, 50])` adds the entire list as one element, while `extend([40, 50])` adds `40` and `50` separately.

---

# 8. Removing Elements

### `remove()`

Removes the first matching value.

```python
numbers.remove(20)
```

### `pop()`

Removes and returns an element by index. Without an index, it removes the last element.

```python
last_value = numbers.pop()
```

### `del`

Deletes an element or slice.

```python
del numbers[0]
```

### `clear()`

Removes all elements.

```python
numbers.clear()
```

---

# 9. Useful List Functions

### `len()`

Returns the number of elements.

```python
numbers = [10, 20, 30]
print(len(numbers))
```

### `max()` and `min()`

Return the largest and smallest values.

```python
print(max(numbers))
print(min(numbers))
```

### `sum()`

Returns the total for numeric elements.

```python
print(sum(numbers))
```

---

# 10. Useful List Methods

Common methods include:

| Method | Purpose |
|---|---|
| `append()` | Add one element at the end |
| `insert()` | Add at a position |
| `extend()` | Add multiple elements |
| `remove()` | Remove by value |
| `pop()` | Remove by index and return value |
| `clear()` | Remove all elements |
| `index()` | Find the first matching index |
| `count()` | Count occurrences |
| `sort()` | Sort the list in place |
| `reverse()` | Reverse the list in place |
| `copy()` | Create a shallow copy |

---

# 11. Traversing a List

The most common approach is a `for` loop.

```python
languages = ["Python", "SQL", "Snowflake"]

for language in languages:
    print(language)
```

You can also use indexes:

```python
for index in range(len(languages)):
    print(index, languages[index])
```

---

# 12. Nested Lists

A list can contain other lists.

```python
matrix = [
    [1, 2, 3],
    [4, 5, 6]
]
```

Accessing `5`:

```python
print(matrix[1][1])
```

The first index selects the inner list and the second selects the element.

---

# 13. Copying Lists

Be careful with assignment:

```python
x = [1, 2, 3]
y = x
```

`x` and `y` refer to the same list object.

A shallow copy creates a new outer list:

```python
y = x.copy()
```

Now changing `y` does not change `x` for ordinary one-level lists.

---

# 14. List vs Tuple

| List | Tuple |
|---|---|
| Mutable | Immutable |
| Uses `[]` | Uses `()` |
| Can be modified | Cannot be modified after creation |
| Usually used for changing collections | Useful for fixed collections |

---

# 15. Common Mistakes

### Confusing `append()` and `extend()`

```python
numbers = [1, 2]
numbers.append([3, 4])
```

Result:

```text
[1, 2, [3, 4]]
```

With `extend()`:

```python
numbers = [1, 2]
numbers.extend([3, 4])
```

Result:

```text
[1, 2, 3, 4]
```

### Index out of range

```python
numbers = [10, 20]
print(numbers[2])
```

This raises `IndexError` because valid indexes are `0` and `1`.

---

# Interview Questions

### What is a list?

A list is an ordered, mutable collection in Python.

### Are lists mutable?

Yes. Elements can be added, removed, or changed after the list is created.

### What is the difference between `append()` and `extend()`?

`append()` adds one object as a single element. `extend()` adds elements from an iterable individually.

### What is the difference between `remove()` and `pop()`?

`remove()` removes by value. `pop()` removes by index and returns the removed value.

### What happens when you use `y = x` for lists?

Both variables reference the same list object.

### How do you create a copy of a list?

Use `x.copy()` or slicing such as `x[:]` for a shallow copy.

### Can a list contain duplicate values?

Yes.

### Can a list contain different data types?

Yes.

### What is a nested list?

A list containing one or more lists as elements.

---

# Data Engineering Perspective

Lists are frequently used for intermediate processing in Python ETL code.

Examples include:

- Storing column names
- Collecting file paths
- Holding API results
- Building batches of records
- Passing collections to database operations
- Storing validation errors

Example:

```python
columns = ["customer_id", "name", "email", "created_at"]
```

A list can also represent records before loading them into a database:

```python
records = [
    (101, "Onkar", "onkar@example.com"),
    (102, "Rahul", "rahul@example.com")
]
```

> [!NOTE]
> For very large datasets, keeping everything in a Python list can consume significant memory. Data Engineers often use generators, iterators, streaming, or distributed processing when datasets are large.

---

# Summary

After completing Day 14, you should be able to:

- Create and identify Python lists.
- Use positive and negative indexing.
- Slice lists.
- Modify list elements.
- Add and remove elements.
- Explain `append()`, `insert()`, and `extend()`.
- Explain `remove()`, `pop()`, `del`, and `clear()`.
- Traverse lists using loops.
- Work with nested lists.
- Copy lists correctly.
- Explain list mutability.
- Apply lists to Data Engineering scenarios.

---

## Navigation

🏠 **Home:** [Python Daily Learning Journey](../README.md)

⬅️ **Previous:** [Day 13 - Strings](../Day_13_Strings/readme.md)

➡️ **Next:** [Day 15 - Tuples](../Day_15_Tuples/readme.md)
