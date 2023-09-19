# ft_printf

ft_printf is a custom implementation of the printf() function from the C standard library. It aims to provide similar functionality to printf() while adhering to specified requirements.
This README will provide an overview of the project, its features, and instructions on how to use it.

# Requirements

1. **Function prototype:** The ft_printf function has the following prototype:
```
int ft_printf(const char *format, ...);
```
2. **Buffer Management:** The custom printf function does not implement buffer management similar to the original printf.

3. **Supported conversions:** It handles the following conversion specifiers:
 * **%c** Prints a single character.
 * **%s** Prints a string as defined by the common C convention.
 * **%p** Prints a void* pointer argument in hexadecimal format.
 * **%d** and **%i** Prints a decimal (base 10) number.
 * **%u** Prints an unsigned decimal (base 10) number.
 * **x** Prints a number in hexadecimal (base 16) lowercase format.
 * **%X** Prints a number in hexadecimal (base 16) uppercase format.
 * **%%** Prints a percent sign.

# Usage

To use ft_printf in your C code, follow these steps:

1. Clone the repository to your local machine:
```
git clone https://github.com/eetukoljonen/ft_printf.git
```
2. Compile the function
```
make
```
3. Compile your program, linking it with the **libftprintf.a** library:
```
gcc -o my_program my_program.c libftprintf.a
```
