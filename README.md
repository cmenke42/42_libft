# 42_libft 💻

Welcome to **42_libft**, a C library recoded in a 42 Way, featuring standard C functions and additional data manipulation functions.

## 🧐 Character Checks
- `ft_isalpha`: is alphabetic?
- `ft_isdigit`: is a digit?
- `ft_isalnum`: is alphanumeric?
- `ft_isascii`: is within the ASCII range?
- `ft_isprint`: is printable?

## 📜 String Manipulation
- `ft_strchr`: Locate the first occurrence of a character in a string.
- `ft_strrchr`: Locate the last occurrence of a character in a string.
- `ft_strncmp`: Compare two strings up to a specified number of characters.
- `ft_strnstr`: Locate a substring within a string, with a length limit.
- `ft_strlcpy`: Copy strings with a specified size.
- `ft_strlcat`: Concatenate strings with a specified size.
- `ft_substr`: Create a substring from a string.
- `ft_strjoin`: Concatenate two strings.
- `ft_strtrim`: Trim a set of characters from the beginning and end of a string.
- `ft_split`: Split a string into an array of substrings.
- `ft_strmapi`: Apply a function to each character of a string.
- `ft_striteri`: Iterate through a string while accessing its index.
- `ft_strdup`: Duplicate a string.
- `ft_itoa`: Convert an integer to a string.
- `ft_atoi`: Convert a string to an integer.

## 🧠 Memory Operations
- `ft_memset`: Fill memory with a constant byte.
- `ft_bzero`: Set a block of memory to zero.
- `ft_memcpy`: Copy memory from source to destination.
- `ft_memmove`: Move memory from source to destination, even if they overlap.
- `ft_memchr`: Locate the first occurrence of a character in memory.
- `ft_memcmp`: Compare two memory areas.
- `ft_calloc`: Allocate memory with initialization to zero.

## 🔗 Linked Lists
- `ft_lstnew`: Create a new node.
- `ft_lstadd_front`: Add a new node at the beginning.
- `ft_lstsize`: Get the size of a linked list.
- `ft_lstlast`: Get the last node of a linked list.
- `ft_lstadd_back`: Add a new node at the end.
- `ft_lstdelone`: Delete a node.
- `ft_lstclear`: Clear the entire linked list.
- `ft_lstiter`: Apply a function to each node of a linked list.
- `ft_lstmap`: Create a new linked list by applying a function to each node.

## 🖨️ Printing
- `ft_putchar_fd`: Write a character to a file descriptor.
- `ft_putstr_fd`: Write a string to a file descriptor.
- `ft_putendl_fd`: Write a string followed by a newline to a file descriptor.
- `ft_putnbr_fd`: Write an integer to a file descriptor.

## ✨ Function Naming

Every function in this library starts with `ft_`, making it easy to identify and use within your C projects.

## 🚀 Getting Started

To use **42_libft**, simply include the library in your C project.
