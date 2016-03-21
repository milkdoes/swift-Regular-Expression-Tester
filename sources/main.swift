/*
Use of infix operator and comparison function by:
joelparkerhenderson, stackoverflow.com/users/528726/joelparkerhenderson and stackoverflow.com/users/3203487/david-berry David Berry. Swift regex: does a string match a pattern? 21 April 2015. 09 March 2016 <http://stackoverflow.com/questions/29784447/swift-regex-does-a-string-match-a-pattern>.
*/

import Foundation

// Define a new operator to make comparisons with regular expressions.
infix operator =~ {}

// Function that compares a string (left) with a regular expression (right).
func =~(string:String, regex:String) -> Bool {
    return string.rangeOfString(regex, options: .RegularExpressionSearch) != nil
}

// Function to define the value (if it is available) of a given String input.
func DefineInput(input: String){

// Define if the string is a number (including "E" and "e" exponents, including positive and negative numbers).
if (input =~ "^[-+]?[0-9]*[.]?[0-9]*([Ee]?[+-]?)?[0-9]+$"){
   print("The input is a number.")
   return
}

// Define if the string is a valid variable identifier.
if (input =~ "^[_A-Za-z]+([0-9_A-Za-z]*)$"){
   print("The input is a variable identifier.")
   return
}

// Define if the string is an email.
if (input =~ "^[A-Za-z0-9!#$%&'*+-/=?^_`|{}~]+[A-Za-z0-9!#$%&'*+-/=?^_`|{}~.]*@[A-Za-z0-9.-]+([.][A-Za-z]{2,})$"){
   print("The input is an email.")
   return
}

// Define if the string is a valid URL.
if (input =~ "^(https?|ftp|mailto|file|data):[/][/](www[.])?[-a-zA-Z0-9@:%._\\+~#=]{2,256}[.][a-z]{2,6}\\b[-a-zA-Z0-9@:%_\\+.~#?&//=]*$"){
   print("The input is a valid URL.")
   return
}

// Print if the entered string does not belong to any of the previous regular expressions.
print("The input string does not belong to a valid number, id, email or URL.")
}

// REMOVE COMMENT TO ACTIVATE LOOP
/*
// Variable to exit loop.
var exit = "n"

repeat{
*/

print("Regular expression comparison of identifiers, e-mail's, numbers and URL's")
print("\nEnter text to identify:")

var input = readLine(stripNewline: true)

DefineInput(input!)

// REMOVE FOR LOOP.
/*
print("Exit? (s/n): ")
exit = readLine(stripNewline: true)!
system("clear")
} while (exit == "n")
*/
