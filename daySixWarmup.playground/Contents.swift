import UIKit

//Defining the variable that contains the authors and their quotes
var authorArray : [String] = []

//Giving the three authors and their famous quotes by creating a dictionary where the keys are the authors and the values are the quotes
var quoteDict = [
    "Shakespeare": "To be or not to be",
    "Martin Luther King": "I have a dream",
    "Abraham Lincoln": "Four score and 7 years ago"
]

//Creating a for-in loop that writes the author selected and their respective quote
for (thisAuthor, thisQuote) in quoteDict{
    authorArray.append(thisAuthor)
}

//You now choose which author by entering a number, but since dictionaries don't have an order, a random one is chosen no matter what number you enter
var currentQuote = quoteDict[authorArray[0]]!

//Printing a statement of your choice about the author you selected
print(""\(currentQuote)" is one of the quotes of the author \(authorArray[0])")
