# Libft - Your very first own library

*This project has been created as part of the 42 curriculum by pabartoc.*

## 📝 What I Learned
Building this library from scratch was a deep dive into the core fundamentals of C programming. Throughout this project, I learned how to:
- Manage dynamic memory safely using `malloc` and `free` to prevent leaks.
- Manipulate memory and strings at the byte level using pointers.
- Build, traverse, and free complex data structures, specifically singly linked lists.
- Understand the underlying mechanics of standard C library (libc) functions by recreating them.
- Write robust `Makefile` scripts to automate the compilation process cleanly and efficiently.

## 🏫 Description
**Libft** is the foundational project of the 42 curriculum. C programming can be quite tedious without access to highly useful standard functions. This project involves coding a custom C library (`libft.a`) containing a variety of general-purpose functions. This library will be used extensively in future school assignments. 

It consists of three main parts:
1. Re-implementations of standard `libc` functions.
2. Additional utility functions for string manipulation and output formatting.
3. Functions to manage and manipulate singly linked lists.

## 🏗️ Project Structure
This repository is organized in a standard, professional C project structure:

- `inc/`: Contains the header file (`libft.h`) with all function prototypes and struct definitions.
- `src/`: Contains all the source code (`.c` files) for the functions.
- `obj/`: Created automatically during compilation to store the compiled object files (`.o`), keeping the root directory clean.
- `Makefile`: The script used to compile the library.

## 🏗️ Repository Structure

```text
.
├── inc/
│   └── libft.h
├── src/
│   ├── ft_atoi.c
│   ├── ft_bzero.c
│   ├── ft_calloc.c
│   ├── ft_isalnum.c
│   ├── ft_isalpha.c
│   ├── ft_isascii.c
│   ├── ft_isdigit.c
│   ├── ft_isprint.c
│   ├── ft_itoa.c
│   ├── ft_lstadd_back.c
│   ├── ft_lstadd_front.c
│   ├── ft_lstclear.c
│   ├── ft_lstdelone.c
│   ├── ft_lstiter.c
│   ├── ft_lstlast.c
│   ├── ft_lstmap.c
│   ├── ft_lstnew.c
│   ├── ft_lstsize.c
│   ├── ft_memchr.c
│   ├── ft_memcmp.c
│   ├── ft_memcpy.c
│   ├── ft_memmove.c
│   ├── ft_memset.c
│   ├── ft_putchar_fd.c
│   ├── ft_putendl_fd.c
│   ├── ft_putnbr_fd.c
│   ├── ft_putstr_fd.c
│   ├── ft_split.c
│   ├── ft_strchr.c
│   ├── ft_strdup.c
│   ├── ft_striteri.c
│   ├── ft_strjoin.c
│   ├── ft_strlcat.c
│   ├── ft_strlcpy.c
│   ├── ft_strlen.c
│   ├── ft_strmapi.c
│   ├── ft_strncmp.c
│   ├── ft_strnstr.c
│   ├── ft_strrchr.c
│   ├── ft_strtrim.c
│   ├── ft_substr.c
│   ├── ft_tolower.c
│   └── ft_toupper.c
├── .gitignore
├── Makefile
└── README.md
```

## Instructions

To use this library in your own projects, you need to download and compile it first.

### 👨🏻‍🔧 Installation
Clone the repository:
```bash
git clone https://github.com/pyoskel/libft.git libft
```

### Compilation
Run the following command at the root of the repository to compile the library:
```bash
make
```
This will generate the `libft.a` static library file.

### 🛠️ Makefile Rules
- `make` or `make all`: Compiles the library `libft.a`.
- `make clean`: Removes the generated object files (`.o`) and the `obj/` directory.
- `make fclean`: Performs `make clean` and also removes the compiled `libft.a` library.
- `make re`: Performs `make fclean` followed by `make all` (rebuilds the library from scratch).

### Usage
To use the library in your project, include the header in your C files:
```c
#include "libft.h"
```
And compile your code with the library:
```bash
cc your_file.c -L. -lft -o your_program
```

## 🔬 Resources
- **Documentation:** `man` pages (e.g., `man 3 memcpy`, `man 3 strlen`) were the primary source of truth for understanding the exact behavior of standard functions.
- **AI Usage:** AI tools were used strictly as an interactive tutor during this project. They were utilized to understand complex concepts like pointer arithmetic, segmentation faults, memory leaks, and to debug `Makefile` configurations. No code was blindly copied; AI was used to explain *why* errors occurred so I could fix them myself, adhering to the 42 foundational learning approach.

---

## 📋 Detailed Function List

### 🔎 Part 1: Libc Functions
Functions that mimic the behavior of the standard C library.

**Character Classification & Conversion:**

| Function | Description |
|----------|-------------|
| `ft_isalpha` | Checks for an alphabetic character. |
| `ft_isdigit` | Checks for a digit (0-9). |
| `ft_isalnum` | Checks for an alphanumeric character. |
| `ft_isascii` | Checks whether a character fits into the ASCII character set. |
| `ft_isprint` | Checks for any printable character. |
| `ft_toupper` | Converts a lower-case letter to upper-case. |
| `ft_tolower` | Converts an upper-case letter to lower-case. |

**String Manipulation:**

| Function | Description |
|----------|-------------|
| `ft_strlen` | Calculates the length of a string. |
| `ft_strchr` | Locates the first occurrence of a character in a string. |
| `ft_strrchr` | Locates the last occurrence of a character in a string. |
| `ft_strncmp` | Compares two strings up to a specified number of bytes. |
| `ft_strnstr` | Locates a substring within a string, searching up to a given length. |
| `ft_strlcpy` | Size-bounded string copying. |
| `ft_strlcat` | Size-bounded string concatenation. |
| `ft_strdup` | Duplicates a string, allocating memory for the copy. |

**Memory Manipulation:**

| Function | Description |
|----------|-------------|
| `ft_memset` | Fills a block of memory with a specific byte. |
| `ft_bzero` | Erases the data in a specified block of memory by writing zeros. |
| `ft_memcpy` | Copies a specified number of bytes from one memory area to another. |
| `ft_memmove` | Safely copies bytes between potentially overlapping memory areas. |
| `ft_memchr` | Scans a block of memory for a specific character. |
| `ft_memcmp` | Compares two memory blocks byte by byte. |
| `ft_calloc` | Allocates memory for an array and initializes it to zero. |

**Conversion:**

| Function | Description |
|----------|-------------|
| `ft_atoi` | Converts a string representation of an integer to an `int`. |

### 🔍 Part 2: Additional Functions
Useful utility functions not natively found in the standard C library.

| Function | Description |
|----------|-------------|
| `ft_substr` | Extracts a substring from a string. |
| `ft_strjoin` | Concatenates two strings into a new, dynamically allocated string. |
| `ft_strtrim` | Removes specified characters from the beginning and end of a string. |
| `ft_split` | Splits a string into an array of words based on a delimiter character. |
| `ft_itoa` | Converts an integer into its string representation. |
| `ft_strmapi` | Applies a function to each character of a string, creating a new string. |
| `ft_striteri` | Applies a function to each character of a string, modifying it in place. |
| `ft_putchar_fd` | Outputs a character to a given file descriptor. |
| `ft_putstr_fd` | Outputs a string to a given file descriptor. |
| `ft_putendl_fd` | Outputs a string to a given file descriptor, followed by a newline. |
| `ft_putnbr_fd` | Outputs an integer to a given file descriptor. |

### 🔎 Part 3: Linked List Functions
Functions designed to create, manipulate, and iterate over singly linked lists (`t_list`).

| Function | Description |
|----------|-------------|
| `ft_lstnew` | Creates a new list node. |
| `ft_lstadd_front` | Adds a new node at the beginning of a list. |
| `ft_lstsize` | Counts the number of nodes in a list. |
| `ft_lstlast` | Returns the last node of a list. |
| `ft_lstadd_back` | Adds a new node at the end of a list. |
| `ft_lstdelone` | Frees the memory of a node's content and the node itself. |
| `ft_lstclear` | Deletes and frees a given node and every successive node. |
| `ft_lstiter` | Iterates through a list and applies a function to the content of each node. |
| `ft_lstmap` | Iterates through a list, applies a function to create modified content, and builds a completely new list with the results. |