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

```
A METTRE EN PAGE
|[](src/.c)|``|<br><sup></sup>|
|[](src/.c)|``|<br><sup></sup>|

### 42 additional functions
char		*ft_substr(char const *s, unsigned int start, size_t len);
char		*ft_strjoin(char const *s1, char const *s2);
char		*ft_strtrim(char const *s1, char const *set);
char		**ft_split(char const *s, char c);
char		*ft_strmapi(char const *s, char (*f)(unsigned int, char));
void		ft_striteri(char *s, void (*f)(unsigned int, char*));

### print functions
void		ft_putchar_fd(char c, int fd);
void		ft_putstr_fd(char *s, int fd);
void		ft_putendl_fd(char *s, int fd);
void		ft_putnbr_fd(int n, int fd);

### linked lists functions
t_list		*ft_lstnew(void *content);
void		ft_lstadd_front(t_list **lst, t_list *new);
int			ft_lstsize(t_list *lst);
t_list		*ft_lstlast(t_list *lst);
void		ft_lstadd_back(t_list **lst, t_list *new);
void		ft_lstdelone(t_list *lst, void (*del)(void *));
void		ft_lstclear(t_list **lst, void (*del)(void *));
void		ft_lstiter(t_list *lst, void (*f)(void *));
t_list		*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));

### get_next_line related
char	*get_next_line(int fd, int free_static_please);
I made a change regarding the original 42 get_next_line to be able to free the static if needed

### printf_related
void		ft_putnbr(int n);
int			ft_putchar(char c);
int			ft_putstr(char *s);
int			ft_nlen_base(long long int n, int base);
int			ft_nlen_ubase(unsigned long int n, int base);
int			ft_putnbr_base(long long int n, char *base);

### so_long related
char		*ft_free_strjoin(char *s1, char *s2);
char		**ft_strdup_array(char **to_copy, int height);
char		**ft_lstsplit(t_list *lst);

### push_swap related
int			ft_int_ovcheck(const char *number);
```
