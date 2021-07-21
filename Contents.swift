import UIKit
//HomeWork1
/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/
let firstString = "I'm learing"
let secondString = "swift"
print(firstString + "\n" + secondString + "!!!")
/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/
let myAge = 35
/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/
let yearsToAdd = 10
var myAgeInTenYears = myAge + yearsToAdd
/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/
let daysInYear = 365.25
/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/
//method 1
var daysPassed = Float(myAgeInTenYears) * Float(daysInYear)
//method 2
let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"
var dateComponet = DateComponents()
dateComponet.year = yearsToAdd
let calendar = Calendar.current
let currentDate = Date()
let birthDate = formatter.date(from: "27.01.1986")
let futureDate = calendar.date(byAdding: dateComponet, to: currentDate)
let daysPassedMethodTwo = calendar.dateComponents([.day], from: birthDate!, to: futureDate!).day
//method 3
let birthDay = calendar.component(.day, from: birthDate!)
let birthMonth = calendar.component(.month, from: birthDate!)
let birthYear = calendar.component(.year, from: birthDate!)
let currentDay = calendar.component(.day, from: currentDate)
let currentMonth = calendar.component(.month, from: currentDate)
let currentYear = calendar.component(.year, from: currentDate)
let numberOfMonthInOneYear: Double = 12
let numberOfDaysInOneMonth = (daysInYear / numberOfMonthInOneYear)
let numberOfFullMonthsInFirstYear = numberOfMonthInOneYear - Double(birthMonth)
let numberOfDaysInFirstMonth = numberOfDaysInOneMonth - Double(birthDay)
let numberOfDaysInFirstYear = numberOfDaysInOneMonth * numberOfFullMonthsInFirstYear + numberOfDaysInFirstMonth
var numberOfFullYears = currentYear - birthYear
if birthMonth >= currentMonth {
    if birthDay < currentDay {
        numberOfFullYears = numberOfFullYears - 1
    }
}
let numberOfDaysInFullYear = daysInYear * Double(numberOfFullYears)
let numberOfFullMonth = currentMonth - 1
let numberOfDaysInCurrentYear = numberOfDaysInOneMonth * Double(numberOfFullMonth) + Double(currentDay)
let numberOfDaysInTenYear = daysInYear * Double(yearsToAdd)
let daysPassedMethodThree = numberOfDaysInFirstYear + numberOfDaysInFullYear + numberOfDaysInCurrentYear + numberOfDaysInTenYear
print("\nAll three methods return different results: \nFirst Method: \(Int(daysPassed)) full days \nSecond Method: \(String(describing: daysPassedMethodTwo)) \nThird Method: \(daysPassedMethodThree)")
/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. In 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/

/*
Exercise 3.
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/
let acSideLenght = 8.0
let cbSideLenght = 6.0
//Hypotenuse
let sideSquareSum = pow(acSideLenght, 2) + pow(cbSideLenght, 2)
let abHypotenuseLenght = sideSquareSum.squareRoot()
let squareArea = (acSideLenght * cbSideLenght)/2
let perimeter = acSideLenght + cbSideLenght + abHypotenuseLenght
