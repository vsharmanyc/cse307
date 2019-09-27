import re

input = input()
keyword = ["False", "def", "if", "raise", "None", "del", "import", "return", "True", "elif", "in", "try",
 "and", "else", "is", "while","as", "except", "lambda", "with", "assert", "finally", "nonlocal", "yield",
  "break", "for", "not", "class", "from", "or", "continue", "global", "pass"]

#prints True if the line taken from input is a valid identifier and not a keyword else False
print(re.search("^[A-Za-z_][A-Za-z0-9_]*$", input) and input not in keyword)



"""  this program below works perfectly but seems but then I am not do string parsing if I use it
import keyword
input = input()
print(input.isidentifier() and not keyword.iskeyword(input))
"""