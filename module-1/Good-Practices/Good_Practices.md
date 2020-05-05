
# GOOD PRACTICES
Consistency is important but knowing when to be inconsistent is important also. When in doubt, use your judgement.
CODE LAYOUT
1) Indentation
•	Use 4 spaces per indentation level.
•	The 4-space rule is optional for continuation lines.
2) Tab or spaces
•	Spaces are the preferred indentation method
•	Tabs should be used solely to remain consistent with code that is already indented with tabs.
3) Maximum line length
•	Limit all lines to a maximum of 79 characters.
4) Line break before or after a binary operator.
•	As long as convention is consistent, we can break before or after a binary operator.
5) Blank lines
•	Surround top-level function and class definitions with two blank lines.
•	Method definitions inside a class are surrounded by a single blank line.
•	Use blank lines in functions, sparingly, to indicate logical sections.
6) Source file encoding
•	All identifiers in the Python standard library MUST use ASCII-only identifiers, and SHOULD use English words wherever feasible (in many cases, abbreviations and technical terms are used which aren’t English). 
•	In addition, string literals and comments must also be in ASCII. The only exceptions are (a) test cases testing the non-ASCII features, and (b) names of authors. Authors whose names are not based on the Latin alphabet (latin-1, ISO/IEC 8859-1 character set) MUST provide a transliteration of their names in this character set.

7) Imports
•	Imports should usually be on separate lines.
•	Imports are always put at the top of the file, just after any module comments and docstrings, and before module globals and constants.
•	Imports should be grouped in the following order:
       Standard library imports.
       Related third party imports.
       Local application/library specific imports.
8) Module level dunder names
•	Module level “dunders” (i.e. names with two leading and two trailing underscores) such as __all__, __author__, __version__, etc. should be placed after the module docstring but before any import statements except from __future__ imports. Python mandates that future-imports must appear in the module before any other code except docstrings.

STRING QUOTES

In Python, single-quoted strings and double-quoted strings are the same. This PEP does not make a recommendation for this. Pick a rule and stick to it. When a string contains single or double quote characters, however, use the other one to avoid backslashes in the string. It improves readability.
WHITESPACE IS EXPRESSIONS AND STATEMENTS
•	Use Double Quatations for Triple Quote Strings, otherwise use either Double or Single Quatations
•	Avoid extraneous whitespace inside "parentheses, brackets or braces" or "between a trailing comma and a following close parenthesis" or "before a comma, semicolon, or colon" or "before the open parenthesis that starts the argument list of a function call"Trailing commas are usually optional, except they are mandatory when making a tuple of one element
•	Avoid trailing whitespace anywhere. Because it's usually invisible, it can be confusing: e.g. a backslash followed by a space and a newline does not count as a line continuation marker. Some editors don't preserve it and many projects (like CPython itself) have pre-commit hooks that reject it.
•	Always surround these binary operators with a single space on either side: assignment (=), augmented assignment (+=, -= etc.), comparisons (==, <, >, !=, <>, <=, >=, in, not in, is, is not), Booleans (and, or, not).
•	If operators with different priorities are used, consider adding whitespace around the operators with the lowest priority(ies). Use your own judgment; however, never use more than one space, and always have the same amount of whitespace on both sides of a binary operator
WHEN TO USE TRAILING COMMAS

•	Trailing commas are usually optional, except they are mandatory when making a tuple of one element 
•	Trailing commas are redundant, they are often helpful when a version control system is used, when a list of values, arguments or imported items is expected to be extended over time
COMMENTS

•	Comments that contradict the code are worse than no comments. Always make a priority of keeping the comments up-to-date when the code changes!
•	Comments should be complete sentences. The first word should be capitalized, unless it is an identifier that begins with a lower case letter (never alter the case of identifiers!).
•	Block comments generally consist of one or more paragraphs built out of complete sentences, with each sentence ending in a period.
•	You should use two spaces after a sentence-ending period in multi- sentence comments, except after the final sentence.
•	Write your comments in English.

BLOCK COMMENTS

•	Block comments generally apply to some (or all) code that follows them, and are indented to the same level as that code. 
•	Each line of a block comment starts with a # and a single space (unless it is indented text inside the comment).
•	Paragraphs inside a block comment are separated by a line containing a single #.
INLINE COMMENTS
•	Use inline comments sparingly.
•	An inline comment is a comment on the same line as a statement. Inline comments should be separated by at least two spaces from the statement. They should start with a # and a single space.
DOCUMENTATION STRINGS

•	Write docstrings for all public modules, functions, classes, and methods. Docstrings are not necessary for non-public methods
NAMING CONVENTIONS
1) Overriding Principle
Names that are visible to the user as public parts of the API should follow conventions that reflect usage rather than implementation.
2) Descriptive: Naming Styles
There are a lot of different naming styles. It helps to be able to recognize what naming style is being used, independently from what they are used for.
3) Prescriptive: Naming Conventions
 a) Names to Avoid
  Never use the characters 'l' (lowercase letter el), 'O' (uppercase letter oh), or 'I' (uppercase letter eye) as single character variable names.

  In some fonts, these characters are indistinguishable from the numerals one and zero.
 b) Package and Module Names
  Modules should have short, all-lowercase names. Underscores can be used in the module name if it improves readability. Python packages should also have short, all-lowercase names, although the use of underscores is discouraged.
   c) Class Names
  Class names should normally use the CapWords convention.
  The naming convention for functions may be used instead in cases where the interface is documented and used primarily as a callable.
 
  Note that there is a separate convention for builtin names: most builtin names are single words (or two words run together), with the CapWords convention used only for exception names and builtin constants.
  d) Type Variable Names
   Names of type variables introduced in PEP 484 should normally use CapWords preferring short names: T, AnyStr, Num. It is recommended to add suffixes _co or _contra to the variables used to declare covariant or contravariant behavior correspondingly:
 e) Exception Names
   Exception name follow same naming convention as Class name
   f) Global Variable Names
    (Let's hope that these variables are meant for use inside one module only.) The conventions are about the same as those for functions.
 g) Function and Variable Names
    Function names should be lowercase, with words separated by underscores as necessary to improve readability.
  Variable names follow the same convention as function names.
  mixedCase is allowed only in contexts where that's already the prevailing style (e.g. threading.py), to retain backwards compatibility.
 h) Function and Method Arguments 
  Always use self for the first argument to instance methods.
  Always use cls for the first argument to class methods.
  If a function argument's name clashes with a reserved keyword, it is generally better to append a single trailing underscore rather than use an abbreviation or spelling corruption. Thus class_ is better than clss. (Perhaps better is to avoid such clashes by using a synonym.)
 i) Method Names and Instance Variables 
•	Use the function naming rules: lowercase with words separated by underscores as necessary to improve readability.
•	Use one leading underscore only for non-public methods and instance variables. 
To avoid name clashes with subclasses, use two leading underscores to invoke Python's name mangling rules.
j) Constants
 Constants are usually defined on a module level and written in all capital letters with underscores separating words. Examples include MAX_OVERFLOW and TOTAL.

4) Designing for Inheritance
 
  Always decide whether a class's methods and instance variables (collectively: "attributes") should be public or non-public. If in doubt, choose non-public; it's easier to make it public later than to make a public attribute non-public.
Public attributes should have no leading underscores.
 If your public attribute name collides with a reserved keyword, append a single trailing underscore to your attribute name. This is preferable to an abbreviation or corrupted spelling. 
PUBLIC AND INTERNAL INTERFACES 

Users be able to clearly distinguish public and internal interfaces 
•	Public interfaces 
•	Compatibility issues 
•	Documented interface except the documentation is to be internal interface or to be provisional 
•	Internal interfaces 
•	Undocumented
•	Internal if the interface contains namespaces (Package,module,class)

•	Code should be written in a way that does not disadvantage other implementations of Python (PyPy, Jython, IronPython, Cython, Psyco, and such).
•	Comparisons to singletons like None should always be done with is or is not, never the equality operators.
•	Use is not operator rather than not ... is. While both expressions are functionally identical, the former is more readable and preferred:
•	When implementing ordering operations with rich comparisons, it is best to implement all six operations (__eq__, __ne__, __lt__, __le__, __gt__, __ge__) rather than relying on other code to only exercise a particular comparison. 
VARIABLE ANNOTATIONS
•	 Annotations for module level variables, class and instance variables, and local variables should have a single space after the colon.
•	There should be no space before the colon.
•	If an assignment has a right hand side, then the equality sign should have exactly one space on both sides.

