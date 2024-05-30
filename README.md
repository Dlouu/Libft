# Libft
Libft is the first project of 42 cursus. I had to recreate some C function of `<ctype.h>`, `<stdlib.h>`and `<string.h>` and create some custom functions. This library is used in other 42 projects and I added some personal custom functions for my needs.

## How to use the library
```
git clone https://github.com/Dlouu/Libft.git Libft
cd Libft
make
```

now you can use the archive by linking it at compilation of your program
```
-L <directory_of_libft> -lft
```

## Makefile rules
* make : create `libft.a` archive<br>
* make clean : delete `*.o objects`<br>
* make fclean : delete `*.o objects` and `library`<br>
* make re : `fclean` + `make`<br>
* make uwu : `make re` + `make clean`<br><br>

## FUNCTIONS
### check functions
|Name|Prototype|Use|
|-|-|-|
|[ft_isalpha](src/ft_isalpha.c)|`int ft_isalpha(int c);`|checks if a character is in **alphabet**<br><sup>from `'A'` to `'Z'` and `a` to `z`</sup>|
|[ft_isdigit](src/ft_isdigit.c)|`int ft_isdigit(int c);`|checks if a character is a **digit**<br><sup>from `'0'` to `'9'`</sup>|
|[ft_isalnum](src/ft_isalnum.c)|`int ft_isalnum(int c);`|checks if a character is a **digit** or in **alphabet**<br><sup>`ft_isalpha` + `ft_isdigit`</sup>|
|[ft_isascii](src/ft_isascii.c)|`int ft_isascii(int c);`|checks if a character is part of the **ASCII table**<br><sup>see `man ascii`</sup>|
|[ft_isprint](src/ft_isprint.c)|`int ft_isprint(int c);`|checks if a character is **printable**|
|[ft_isblank](src/ft_isblank.c)|`int ft_isblank(int c);`|checks if a character is a **blank space**<br><sup>`' '` or `'\t'`</sup>|
|[ft_issign](src/ft_issign.c)|`int ft_issign(int c);`|checks if a character is a **sign**<br><sup>`'+'` `'-'` `'/'` `'%'`</sup>|
|[ft_isspace](src/ft_isspace.c)|`int ft_isspace(int c);`|checks if a character is a **whitespace**<br><sup>space `' '` form-feed `'\f'` newline `'\n'` carriage-return `'\r'` <br>horizontal-tab `'\t'` vertical-tab `'\v'`</sup>|
|[ft_ispunct](src/ft_ispunct.c)|`int ft_ispunct(int c);`|checks if a character is a **punctuation sign**<br><sup>`` ! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ ] \ ^ _ ` { } ~``</sup>|
* the return value is 1 if the character fits or 0 if it doesn't.

### convert functions
|Name|Prototype|Use|
|-|-|-|
|[ft_toupper](src/ft_toupper.c)|`int	ft_toupper(int c);`|converts a character to **uppercase**|
|[ft_tolower](src/ft_tolower.c)|`int	ft_tolower(int c);`|converts a character to **lowercase**|
|[ft_atoi](src/ft_atoi.c)|`int	ft_atoi(const char *nptr);`|converts a string to an **integer**<br><sup>from `-2,147,483,648` to `2,147,483,647`</sup>|
|[ft_atol](src/ft_atol.c)|`long int	ft_atol(const char *nptr);`|converts a string to a **long integer**<br><sup>from `-4,294,967,296` to `4,294,967,295`</sup>|
|[ft_itoa](src/ft_itoa.c)|`char	*ft_itoa(int n);`|converts an integer to a **string**|
|[ft_abs](src/ft_abs.c)|`int	ft_abs(int n);`|converts a value to it's `absolute` value<br><sup>ex : `-42` converts to `42`</sup>|

### string operations functions
|Name|Prototype|Use|
|-|-|-|
|[ft_strlen](src/ft_strlen.c)|`size_t	ft_strlen(const char *s);`|checks for the **length** of a string|
|[ft_strlcpy](src/ft_strlcpy.c)|`size_t	ft_strlcpy(char *dst, const char *src, size_t size);`|**copies** a string of a specific size|
|[ft_strlcat](src/ft_strlcat.c)|`size_t	ft_strlcat(char *dst, const char *src, size_t size);`|**concatenates** a string of a specific size|
|[ft_strchr](src/ft_strchr.c)|`char	*ft_strchr(const char *s, int c);`|**finds** a character in a string<br><sup>return it's pointer</sup>|
|[ft_strrchr](src/ft_strrchr.c)|`char	*ft_strrchr(const char *s, int c);`|same as **strchr** but in reverse|
|[ft_strncmp](src/ft_strncmp.c)|`int	ft_strncmp(const char *s1, const char *s2, size_t n);`|**compares** two strings<br><sup>for n characters</sup>|
|[ft_strnstr](src/ft_strnstr.c)|`char	*ft_strnstr(const char *big, const char *little, size_t len);`|**finds** a substring in a string<br><sup>returns it's pointer or `NULL`</sup>|

### memory operations functions
|Name|Prototype|Use|
|-|-|-|
|[ft_memset](src/ft_memset.c)|`void	*ft_memset(void *s, int c, size_t n);`|**fills memory** with a given character<br><sup></sup>|
|[ft_bzero](src/ft_bzero.c)|`void	ft_bzero(void *s, size_t n);`|**fills memory** with `'\0'` NULL-terminate byte|
|[ft_memcpy](src/ft_memcpy.c)|`void	*ft_memcpy(void *dest, const void *src, size_t n);`|**copies** n characters of a string in a memory area|
|[ft_memmove](src/ft_memmove.c)|`void	*ft_memmove(void *dest, const void *src, size_t n);`|same as `memmove` even when overlapping|
|[ft_memchr](src/ft_memchr.c)|`void	*ft_memchr(const void *s, int c, size_t n);`|**checks** for a character in a memory area<br><sup>returns the character or `NULL`</sup>|
|[ft_memcmp](src/ft_memcmp.c)|`int	ft_memcmp(const void *s1, const void *s2, size_t n);`|**compares** memory areas<br><sup></sup>|
|[ft_calloc](src/ft_calloc.c)|`void	*ft_calloc(size_t nmemb, size_t size);`|**creates** a memory area **filled** with `'\0'` NULL-terminate byte|
|[ft_strdup](src/ft_strdup.c)|`char	*ft_strdup(const char *s);`|**creates** a memory area with the string passed as a parameter|

### 42 additional functions
|Name|Prototype|Use|
|-|-|-|
|[ft_substr](src/ft_substr.c)|`char *ft_substr(char const *s, unsigned int start, size_t len);`|copies a string at a specific start and end|
|[ft_strjoin](src/ft_strjoin.c)|`char *ft_strjoin(char const *s1, char const *s2);`|**joins** two strings in a new one|
|[ft_strtrim](src/ft_strtrim.c)|`char *ft_strtrim(char const *s1, char const *set);`|**trims** a string (beginning and end)|
|[ft_split](src/ft_split.c)|`char **ft_split(char const *s, char c);`|creates a NULL-terminated array of strings from a string separated with a given char|
|[ft_strmapi](src/ft_strmapi.c)|`char *ft_strmapi(char const *s, char (*f)(unsigned int, char));`|applies a function to a memory|
|[ft_striteri](src/ft_striteri.c)|`void ft_striteri(char *s, void (*f)(unsigned int, char*));`|applies a function to a string|

### print functions
|Name|Prototype|Use|
|-|-|-|
|[ft_putchar_fd](src/ft_putchar_fd.c)|`void ft_putchar_fd(char c, int fd);`|**prints a char** in a file descriptor|
|[ft_putstr_fd](src/ft_putstr_fd.c)|`void ft_putstr_fd(char *s, int fd);`|**prints a string** in a file descriptor|
|[ft_putendl_fd](src/ft_putendl_fd.c)|`void ft_putendl_fd(char *s, int fd);`|**prints a string with a newline** in a file descriptor|
|[ft_putnbr_fd](src/ft_putnbr_fd.c)|`void ft_putnbr_fd(int n, int fd);`|**prints an integer** in a file descriptor|

### linked lists functions
|Name|Prototype|Use|
|-|-|-|
|[ft_lstnew](src/ft_lstnew.c)|`t_list *ft_lstnew(void *content);`|creates a new node|
|[ft_lstadd_front](src/ft_lstadd_front.c)|`void ft_lstadd_front(t_list **lst, t_list *new);`|adds a node to the linked list to the front|
|[ft_lstsize](src/ft_lstsize.c)|`int ft_lstsize(t_list *lst);`|shows the **length** of a linked list|
|[ft_lstlast](src/ft_lstlast.c)|`t_list *ft_lstlast(t_list *lst);`|jump to the last node of the linked list|
|[ft_lstadd_back](src/ft_lstadd_back.c)|`void ft_lstadd_back(t_list **lst, t_list *new);`|adds a node to the linked list at the back|
|[ft_lstdelone](src/ft_lstdelone.c)|`void ft_lstdelone(t_list *lst, void (*del)(void *));`|deletes a node|
|[ft_lstclear](src/ft_lstclear.c)|`void ft_lstclear(t_list **lst, void (*del)(void *));`|deletes a linked list with a delete function<br><sup>usually I use free function</sup>|
|[ft_lstiter](src/ft_lstiter.c)|`void ft_lstiter(t_list *lst, void (*f)(void *));`|applies a function to a linked list|
|[ft_lstmap](src/ft_lstmap.c)|`t_list *ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));`|applies a function to a malloc'ed linked list|

### get_next_line related
|Name|Prototype|Use|
|-|-|-|
|[get_next_line](src/get_next_line.c)|`char	*get_next_line(int fd, int free_static_please);`|Read a fd<br><sup>used to read lines of a file descriptor</sup>|
I made a change regarding the original 42 get_next_line to be able to free the static if needed

### printf_related
|Name|Prototype|Use|
|-|-|-|
|[ft_putnbr](src/ft_putnbr.c)|`void	 ft_putnbr(int n);`|prints an **integer**|
|[ft_putchar](src/ft_putchar.c)|`int ft_putchar(char c);`|prints a **char**<br><sup>return value is the number of written characters</sup>|
|[ft_putstr](src/ft_putstr.c)|`int ft_putstr(char *s);`|prints a **string**<br><sup>return value is the number of written characters</sup>|
|[ft_nlen_base](src/ft_nlen_base.c)|`int ft_nlen_base(long long int n, int base);`|calculate the number of char need to write a number|
|[ft_nlen_ubase](src/ft_nlen_ubase.c)|`int ft_nlen_ubase(unsigned long int n, int base);`|same for **unsigned number**|
|[ft_putnbr_base](src/ft_putnbr_base.c)|`int ft_putnbr_base(long long int n, char *base);`|ft_putnbr that works with other bases<br><sup>`binary` `Base 10` `hexadecimal` or `custom`</sup>|

### so_long related
|Name|Prototype|Use|
|-|-|-|
|[ft_free_strjoin](src/ft_free_strjoin.c)|`char *ft_free_strjoin(char *s1, char *s2);`|**ft_strjoin** that frees *s1|
|[ft_strdup_array](src/ft_strdup_array.c)|`char	 **ft_strdup_array(char **to_copy, int height);`|create a **duplicate** of an array 2d|
|[ft_lstsplit](src/ft_lstsplit.c)|`char **ft_lstsplit(t_list *lst);`|**splits** a linked list into a 2d array|

### push_swap related
|Name|Prototype|Use|
|-|-|-|
|[ft_int_ovcheck](src/ft_int_ovcheck.c)|`int ft_int_ovcheck(const char *number);`|checks if an number fits in an integer|
