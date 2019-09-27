import re

def isValidString(input):
	if not re.search("(^\".*\"$)|(^'.*'$)",input): #string not in "" or ''
		return False
	if re.search("[^\\\\]\\"+input[0]+".",input): #unescaped quote
		return False
	if re.search("[^\\\\](?:\\\\{2})+\\"+input[0]+".",input): #even number of of back slashes before a quote making it unescaped
		return False
	if re.search("([^\\\\](\\\\)\\"+input[0]+"$)|([^\\\\](?:\\\\{2})+(\\\\)\\"+input[0]+"$)",input): #escaping the ending quote
		return False
	return True

def inputsMerged(input1,input2):
	if len(input1) < 2:
		return False
	if len(input2) == 0:
		return input1
	if re.search("[^\\\\](?:\\\\{2})+$",input1): #input1 ends with even number of backslashes
		return False
	if input1.endswith("\\") and not input1.startswith("\\"):
		i = 0
		for x in input1:
			i += 1
		j = i - 1
		while input1[j] == "\\":
			j -= 1
		slashesNum = int(len(input1[j+1:i]))
		endIndex = i - int((slashesNum/2)) - 1
		return input1[0:endIndex] + input2
	else:
		return input1 + input2

input1 = input()
input2 = input()
mergeResult = inputsMerged(input1,input2)
if mergeResult != False:
	print(isValidString(mergeResult))
else:
	print("False")


""" This program below works perfectly but uses try/except 
input1 = input() 
input2 = input()

if input1.startswith("\"") or input1.startswith("'"):
	if input1.endswith("\\"):
		input1 += "\n"
	try:
		exec("str = " + input1 + input2)
		print("True")
	except SyntaxError:
		print("False")
else:
	print("False")
"""