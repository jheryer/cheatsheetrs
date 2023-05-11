# Python
Source: https://www.pythoncheatsheet.org/

## Math Operators
|
| Operators | Description | Example |
| --- | --- | --- |
| `**` | Exponent | `2 ** 3 = 8` |
| `%` | Modulus or Remainder | `22 % 8 = 6` |
| `//` | Integer division | `22 // 8 = 2` |
| `/` | Division | `22 / 8 = 2.75` |
| `*` | Multiplication | `3 * 3 = 9` |
| `-` | Subtraction | `5 - 2 = 3` |
| `+` | Addition | `2 + 2 = 4` |
|
## Augmented Assignment Operators
|
| Operator | Equivalent |
| --- | --- |
| `var += 1` | `var = var + 1` |
| `var -= 1` | `var = var - 1` |
| `var *= 1` | `var = var * 1` |
| `var /= 1` | `var = var / 1` |
| `var %= 1` | `var = var % 1` |
|
## Data Types
|
| Data Type | Examples |
| --- | --- |
| `Integers` | `-2, -1, 0, 1, 2, 3, 4, 5` |
| `Floating-point numbers` | `-1.25, -1.0, --0.5, 0.0, 0.5, 1.0, 1.2` |
| `Strings` | `'a', 'aa', 'aaa', 'Hello!', '11 cats'` |
|
## Concatenation and Replication
|
| Description | Examples |
| --- | --- |
| String concatenation | `'Alice' 'Bob'`, 'AliceBob' |
| String replication: | `'Alice' * 5`, 'AliceAliceAliceAliceAlice' |
|
## Variables
|
| Description | Example |
| --- | --- |
| Variables can only be one word, no spaces. | `var = 'Hello'` |
| Only use only letters, numbers, and the underscore (_) character | `my_var = 'Hello'` |
| Cannot begin with a number. A number can be placed anywhere else within the name. | `my_var_2 = 'Hello'` |
| Variable name starting with an underscore (_) are considered as “unuseful” | `_spam = 'Hello'` |
|
## Comments
|
| Description | Example |
| --- | --- |
| Inline comment | `# This is a comment` |
| Multiline comment | Each new line begins with `#` |
| Code with a comment | `a = 1  # initialization` |
| Function docstring| Begin and end with `"""` or `'''` lines |
|
## Print
|
| Code | Output |
| --- | --- |
| `print('Hello world!')` | 'Hello world!' |
| `a = 1, print('Hello world!', a)` | 'Hello world! 1' |
|
## The end keyword
The keyword argument 'end' can be used to avoid the newline after the output, or end the output with a different string.
|Code | Output |
| --- | --- |
|`phrase = ['printed', 'with', 'a', 'dash', 'in', 'between']` |  |
|`for word in phrase: print(word, end='-')` | 'printed-with-a-dash-in-between-' |
|
## The sep keyword
The keyword sep specify how to separate the objects, if there is more than one.
| Code | Output |
| --- | --- |
| `print('cats', 'dogs', 'mice', sep=',')` | 'cats,dogs,mice' |
|
## The input() Function
This function takes the input from the user and converts it into a string.
|Code | Output |
| --- | --- |
| `my_name = input()` | |
| `print('Hi, {}'.format(my_name))` | 'Hi, Martha' |
|
## The len() Function
Evaluates to the integer value of the number of characters in a string, list, dictionary, etc.
| Code | Output |
| --- | --- |
| `len('hello')` | '5' |
|
## The str(), int(), and float() Functions
These functions allow you to change the type of variable. For example, you can transform from an 'integer' or 'float' to a 'string'. Or, from a string to an integer or float
| Code | Output |
| --- | --- |
| `str(29)` | '29' |
| `str(-3.14)` | '-3.14' |
| `int('11')` | `11` |
| `float('3.14')` | `3.14` |
|
## Built-in Functions
|
| Function | Description |
| --- | --- |
| `abs()` | Return the absolute value of a number. |
| `aiter()` | Return an asynchronous iterator for an asynchronous |iterable. |
| `all()` | Return True if all elements of the iterable are true. |
| `any()` | Return True if any element of the iterable is true. |
| `ascii()` | Return a string with a printable representation of an object. |
| `bin()` | Convert an integer number to a binary string. |
| `bool()` | Return a Boolean value. |
| `breakpoint()` | Drops you into the debugger at the call site. |
| `bytearray()` | Return a new array of bytes. |
| `bytes()` | Return a new “bytes” object. |
| `callable()` | Return True if the object argument is callable, False if not. |
| `chr()` | Return the string representing a character. |
| `classmethod()` | Transform a method into a class method. |
| `compile()` | Compile the source into a code or AST object. |
| `complex()` | Return a complex number with the value real + imag*1j. |
| `delattr()` | Deletes the named attribute, provided the object allows it. |
| `dict()` | Create a new dictionary. |
| `dir()` | Return the list of names in the current local scope. |
| `divmod()` | Return a pair of numbers consisting of their quotient and remainder. |
| `enumerate()` | Return an enumerate object. |
| `eval()` | Evaluates and executes an expression. |
| `exec()` | This function supports dynamic execution of Python code. |
| `filter()` | Construct an iterator from an iterable and returns true. |
| `float()` | Return a floating point number from a number or string. |
| `format()` | Convert a value to a “formatted” representation. |
| `frozenset()` | Return a new frozenset object. |
| `getattr()` | Return the value of the named attribute of object. |
| `globals()` | Return the dictionary implementing the current module namespace. |
| `hasattr()` | True if the string is the name of one of the object’s attributes. |
| `hash()` | Return the hash value of the object. |
| `help()` | Invoke the built-in help system. |
| `hex()` | Convert an integer number to a lowercase hexadecimal string. |
| `id()` | Return the “identity” of an object. |
| `input()` | This function takes an input and converts it into a string. |
| `int()` | Return an integer object constructed from a number or string. |
| `isinstance()` | Return True if the object argument is an instance of an object. |
| `issubclass()` | Return True if class is a subclass of classinfo. |
| `iter()` | Return an iterator object. |
| `len()` | Return the length (the number of items) of an object. |
| `list()` | Rather than being a function, list is a mutable sequence type. |
| `locals()` | Update and return a dictionary with the current local symbol table. |
| `map()` | Return an iterator that applies function to every item of iterable. |
| `max()` | Return the largest item in an iterable. |
| `min()` | Return the smallest item in an iterable. |
| `next()` | Retrieve the next item from the iterator. |
| `object()` | Return a new featureless object. |
| `oct()` | Convert an integer number to an octal string. |
| `open()` | Open file and return a corresponding file object. |
| `ord()` | Return an integer representing the Unicode code point of a character. |
| `pow()` | Return base to the power exp. |
| `print()` | Print objects to the text stream file. |
| `property()` | Return a property attribute. |
| `repr()` | Return a string containing a printable representation of an object. |
| `reversed()` | Return a reverse iterator |
| `round()` | Return number rounded to ndigits precision after the decimal point. |
| `set()` | Return a new set object. |
| `setattr()` | This is the counterpart of getattr(). |
| `slice()` | Return a sliced object representing a set of indices. |
| `sorted()` | Return a new sorted list from the items in iterable. |
| `staticmethod()` | Transform a method into a static method. |
| `str()` | Return a str version of object. |
| `sum()` | Sums start and the items of an iterable. |
| `super()` | Return a proxy object that delegates method calls to a parent or sibling. |
| `tuple()` | Rather than being a function, is actually an immutable sequence type. |
| `type()` | Return the type of an object. |
| `vars()` | Return the dict attribute for any other object with a dict attribute. |
| `zip()` | Iterate over several iterables in parallel. |
| `import()` | This function is invoked by the import statement. |
|

