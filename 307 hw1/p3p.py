import re

def isValidString(input):
	if not re.search("(^\".*\"$)|(^'.*'$)",input): #string not in "" or ''
		return "False0"
	if re.search("[^\\\\]\\"+input[0]+".",input): #unescaped quote
		return "False1"
	if re.search("[^\\\\](?:\\\\{2})+\\"+input[0]+".",input): #even number of of back slashes before a quote making it unescaped
		return "False2"
	if re.search("([^\\\\](\\\\)\\"+input[0]+"$)|([^\\\\](?:\\\\{2})+(\\\\)\\"+input[0]+"$)",input): #escaping the ending quote
		return "False3"
	return True

def inputsMerged(input1,input2):
	if len(input1) < 2:
		return False
	if len(input2) == 0:
		return False
	if re.search("[^\\\\](?:\\\\{2})+$",input1):
		return False
	return input1 + input2

input1 = input()
input2 = input()
mergeResult = inputsMerged(input1,input2)
if mergeResult != False:
	print(mergeResult)
	print(isValidString(mergeResult))
else:
	print("False")