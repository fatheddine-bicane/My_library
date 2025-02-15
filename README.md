# 📚 My_library

## 📋 Overview
A static C library combining four powerful components: libft (basic C functions), ft_printf (printf implementation), get_next_line (file reading utility), and ft_perror (error handling).

## 💻 How to Use

### Step 1: Create the Static Library
```bash
git clone https://github.com/fatheddine-bicane/My_library.git
cd My_library
make        # Creates my_library.a
```

### Step 2: Include the Header
```c
#include "my_library.h"
```

### Step 3: Compile with the Library
```bash
gcc your_program.c -L. -lmy_library
```

## 🛠️ Library Components

### 1. 📝 ft_printf
A custom implementation of printf that handles essential format specifiers.
```c
int ft_printf(const char *format, ...);

// Examples:
ft_printf("Number: %d, String: %s\n", 42, "hello");
ft_printf("Hex: %x, Pointer: %p\n", 255, ptr);
```
Supports: %c, %s, %p, %d, %i, %u, %x, %X, %%

### 2. 📖 get_next_line
Reads a file line by line, perfect for file parsing.
```c
char *get_next_line(int fd);

// Example:
int fd = open("file.txt", O_RDONLY);
char *line;

while ((line = get_next_line(fd)))
{
    // Process line
    free(line);
}
```

### 3. ⚠️ ft_perror
Custom error handling function for better error management.
```c
void ft_perror(const char *message);

// Example:
if (fd == -1)
    ft_perror("Failed to open file");
```

### 4. 📚 libft
Collection of essential C functions, including:

**String Operations:**
```c
char *ft_strdup(const char *s);    // Duplicate string
char *ft_strjoin(char *s1, char *s2);  // Join strings
char **ft_split(char const *s, char c); // Split string
```

**Memory Management:**
```c
void *ft_calloc(size_t count, size_t size);
void *ft_memcpy(void *dst, const void *src, size_t n);
```

**List Operations:**
```c
t_list *ft_lstnew(void *content);
void ft_lstadd_back(t_list **lst, t_list *new);
```

## 💡 Complete Example

```c
#include "my_library.h"

int main(void)
{
    // Open and read file
    int fd = open("example.txt", O_RDONLY);
    if (fd == -1)
    {
        ft_perror("File open failed");
        return (1);
    }

    // Read and print file contents
    char *line;
    while ((line = get_next_line(fd)))
    {
        ft_printf("Line: %s\n", line);
        free(line);
    }

    // String manipulation
    char *str = ft_strdup("Hello");
    char *result = ft_strjoin(str, " World!");
    
    ft_printf("Final string: %s\n", result);

    // Cleanup
    free(str);
    free(result);
    close(fd);
    return (0);
}
```

## ⚙️ Compilation Commands

```bash
# Library compilation
make        # Creates libmy_library.a
make clean  # Removes object files
make fclean # Removes object files and library
make re     # Rebuilds the library

# Your program compilation
gcc -Wall -Wextra -Werror your_program.c -L. -lmy_library
```

## Author
Created by [fatheddine-bicane]
