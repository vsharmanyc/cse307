import re

def isFloat(input):
	return not re.search("^.*[^\d]\.[^\d].*$|^\.$|^\.[^\d].*$", input) and re.search("(^[+-]*[0-9]*\.[0-9]*$)|(^([+-]*[0-9]*\.[0-9]*|[+-]*[0-9]+)[eE][+-]{0,1}\d+$)", input)

def isHex(input):
	return re.search("^[+-]*(0X|0x)[A-Fa-f0-9]+$", input)

def isOct(input):
	return re.search("^[+-]*(0O|0o)[0-7]+$", input)

def isBin(input):
	return re.search("^[+-]*(0B|0b)[0-1]+$", input)

def isDec(input):
	return re.search("^[+-]*[0-9]+$", input)

input = input()

if isDec(input) or isBin(input) or isOct(input) or isHex(input):
	print("int")
elif isFloat(input):
	print("float")
else:
	print("None")



""" This program works but the professor said I have to do string parsing instead of try/except
input = input()
try: 
	input = int(input)
except ValueError:
	try:
		input = float(input) 
	except ValueError:
		try:
			input = int(input, 2) 
		except ValueError:
			try:
				input = int(input,8) 
			except ValueError:
				if(not input.startswith("0X") and not input.startswith("0x")):
					input = None
				else:
					try:
						input = int(input,16) 
					except ValueError:
						input = None
if(input != None):
	print(input.__class__.__name__)
else:
	print("None")
"""