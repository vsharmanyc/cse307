import sys
import datetime
import re

def isLeapYear(year):
	return year % 4 == 0 and (year % 100 != 0 or year % 400 == 0)

#this function is used to avoid invalid argument input without using try/except
def valid(arg):
	if re.search("\d\d/\d\d/\d\d\d\d",arg):
		if arg[:2] >= "01" and arg[:2] <= "12":
			daysInMonth = ["","31","28","31","30","31","30","31","31","30","31","30","31"]
			if isLeapYear(int(arg[6:])) and arg[:2] == "02":
				daysInMonth[2] = "29"
			if arg[3:5] >= "01" and arg[3:5] <= daysInMonth[int(arg[:2])]: 
				return True
			else:
				print("Day is out of range")
		else:
			print("Month is out of range")
	else:
		print("Argument is NOT in mm/dd/yyyy format")
	return False

if len(sys.argv) > 1:
	arg = sys.argv[1]
	if valid(arg):
		date = datetime.date(int(arg[6:]), int(arg[:2]), int(arg[3:5]))
		print(date.strftime("%A") + ", " + date.strftime("%B") + " " + arg[3:5] + ", " + arg[6:])
else:
	print("date was not provided")