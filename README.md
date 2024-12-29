# 📚 42_libft

A library that includes some standard C functions recoded in the 42 style, along with linked list helpers and additional utility functions
like `ft_printf` and `ft_get_next_line`.

## 📖 Table of Contents
- [🚀 Getting Started](#-getting-started)
- [Function Overview](#function-overview) 
    - [🧐 Character Checks](#-character-checks)
    - [📜 String Manipulation](#-string-manipulation)
    - [🔢 Number Conversion](#-number-conversion)
    - [🧠 Memory Operations](#-memory-operations)
    - [🔗 Linked List Operations](#-linked-list-operations)
    - [📝 File Descriptor Input](#-file-descriptor-input)
    - [📝 File Descriptor Output](#-file-descriptor-output)
    - [🖨️ Printing](#️-printing)
- [🏷️ Function Naming](#️-function-naming)

## 🚀 Getting Started
1. Clone the repository:
    ```sh
    git clone https://github.com/cmenke42/42_libft.git
    ```
2. Build the library:
    ```sh
    make -C 42_libft
    ```
3. Include the library in your project by adding the include path and linking against `libft.a`:
    ```sh
    cc -I 42_libft/includes -o target main.c -L42_libft -lft
    ```

    <details>
    <summary>Explanation of the command</summary>

    - `cc`: Invokes the C compiler.
    - `-I 42_libft/includes`: Adds the `42_libft/includes` directory to the list of directories to search for header files.
    - `-L42_libft`: Adds the `42_libft` directory to the list of directories to search for libraries.
    - `-lft`: Searches for a library named `libft.a` when linking. The `lib` prefix and `.a` extension are added automatically.
    - `-o target`: Specifies the output executable name as `target`.
    - `source.c`: The source file to compile.

    </details>

    This command assumes a project structure like this:
    ```text
    project_root/
    ├── 42_libft/
    │   ├── includes/
    │   │   └── libft.h
    │   ├── libft.a
    │   ├── Makefile
    │   ├── README.md
    │   └── src/
    │       └── [ft_atoi.c, ...]
    └── main.c
    ```

## Function Overview

### 🧐 Character Checks
- `ft_isdigit`: Check if a character is a digit.
- `ft_isalpha`: Check if a character is alphabetic.
- `ft_isalnum`: Check if a character is alphanumeric.
- `ft_isascii`: Check if a character is within the ASCII range.
- `ft_isprint`: Check if a character is printable.
- `ft_tolower`: Convert a character to lowercase.
- `ft_toupper`: Convert a character to uppercase.

### 📜 String Manipulation
- `ft_strncmp`: Compare two strings up to n characters.
- `ft_strchr`, `ft_strrchr`: Locate character in string (first/last occurrence).
- `ft_strnstr`: Locate a substring in a string, length-limited.
- `ft_strlcpy`, `ft_strlcat`: Copy/concatenate strings with size limitation.
- `ft_strjoin`: Concatenate two strings.
- `ft_substr`: Extract substring from string.
- `ft_split`: Split string into array of substrings.
- `ft_strdup`: Duplicate a string.
- `ft_strlen`: Get string length.
- `ft_strtrim`: Trim characters from string ends.
- `ft_strmapi`, `ft_striteri`: Apply function to string characters (in-place/new string).

### 🔢 Number Conversion
- `ft_itoa`: Convert integer to string.
- `ft_atoi`: Convert string to integer.

### 🧠 Memory Operations
- `ft_memset`, `ft_bzero`: Set memory to specific value/zero.
- `ft_memcpy`, `ft_memmove`: Copy memory (non-overlapping/safe).
- `ft_memchr`: Find byte in memory.
- `ft_memcmp`: Compare memory areas.
- `ft_calloc`: Allocate and zero-initialize memory.

### 🔗 Linked List Operations
- `ft_lstnew`: Create new list node.
- `ft_lstadd_front`, `ft_lstadd_back`: Add node to list start/end.
- `ft_lstsize`: Count list nodes.
- `ft_lstlast`: Get last list node.
- `ft_lstiter`, `ft_lstmap`: Apply function to list nodes (in-place/new list).
- `ft_lstdelone`, `ft_lstclear`: Delete one/all list node(s).

### 📝 File Descriptor Input
- `ft_get_next_line`: Read a line from a file descriptor.

### 📝 File Descriptor Output
- `ft_putnbr_fd`: Write integer to file descriptor.
- `ft_putchar_fd`: Write character to file descriptor.
- `ft_putstr_fd`, `ft_putendl_fd`: Write string to file descriptor (with/without newline).

### 🖨️ Printing
- `ft_printf`: Custom limited implementation of the `printf` function. 

### 🏷️ Function Naming
- Functions are prefixed with `ft_` to indicate they are part of the libft library.
- The naming convention follows the pattern `ft_<functionality>`.
