Class Meu.Teste.MeusDados Extends %RegisteredObject
{

Method Mostrar()
{
    Set name = "Franciny"
    Set age = 23
    Set city = "Jaraguá do Sul"
    Set frase = "My name is " _ name _ " and I'm " _age _" old. I'm living in " _ city
    Write frase
}

Method Calculator() 
{
    Set numberone = 5
    Set numbertwo = 3
    Set sum = numberone + numbertwo
    Set wholeDivision = numberone \ numbertwo
    Set division = numberone / numbertwo
    Set subtraction = numberone - numbertwo
    Set multiplication = numberone * numbertwo
    Write sum, !
    Write division, !
    Write wholeDivision, !
    Write subtraction, !
    Write multiplication
}

Method Verification() 
{
    Set age = 18
    Set canVote = (age >= 16)
    Set name = "Franciny"
    Set nameSize = $LENGTH(name)
    Write canVote, !
    Write "I'm " _age_ " old and I " 
    Write $SELECT(canVote: "can vote", 1: "can't vote")
}

Method Stock() 
{
   Set product = "journal"
   Set amount = 10
   Set exists = $DATA(amount)
   Write exists, !
    Kill amount
    Set nowExists = $DATA(amount) 
    Write nowExists
}

Method VerificationAge() 
{
    Set age = 15
    If (age <= 13) {
        Write "Child"
    } ElseIf (age <= 17) {
        Write "Adolescent"
    } Else {
        Write "Adult"
    }
} 

Method AccessVerification() 
{
 Set age = 10
 Set ticket = 1  
 If (age >= 18) && (ticket = 1) {
    Write "You can enter. "
 } Else {
    Write "You cannot enter."
 }
}

Method DiscountVerification()
{
    Set age1 = 59
    If (age1 <= 12) || (age1 >= 60) {
        Write "You have a discount"
    } Else {
        Write "No discount"
    }
}

Method Triangle() 
{
    Set lado1 = 5
    Set lado2 = 9
    Set lado3 = 3
    If (lado1 = lado2) && (lado1 = lado3) && (lado2 = lado3) {
        Write "Equilateral"
    } ElseIf (lado1 = lado2) || (lado1 = lado3) || (lado2 = lado3){
        Write "Isosceles"
    } Else {
        Write "Scalene"
    }
}

Method PasswordVerification() 
{
    Set password = "1234"
    If (password '= 1234) {
        Write "incorrect password", !
    } Else {
        Write "correct password"
    }
}

Method Approved() 
{
    Set note = 75
    If (note > 100) || (note < 0) {
        Write "Invalid grade"
    } Else {
    If (note >= 90) {
        Write "Excellent"
    } ElseIf(note >= 70) {
        Write "Good"
    } ElseIf(note >= 50) {
        Write "Regular"
    } Else {
        Write "Failed"
    }}
}

Method ATM() 
{
    Set balance = 1000
    Set withdraw = 800
    Set password = 1234
    Set enteredPassword = 1234
    If (password '= enteredPassword) {
        Write "Incorrect password"
    } Else {
        Write "Correct password"
        If (withdraw <= 0) {
            Write "Invalid amount"   
        } ElseIf (balance < withdraw) {
                Write "Insufficient balance"
                } Else {
            Set newBalance = balance - withdraw
            Write "Remaining balance: " _newBalance
        }
    }
}

Method IMC() 
{
    Set IMC = 19
     If (IMC >= 30) {
        write "Obesity"
    } ElseIF(IMC >= 25) {
        write "Overweight"
    } ElseIf(IMC >= 18.5) {
        write "Normal weight"
    } ElseIF(IMC < 18) {
        write "Underweight"
    }
} 

Method Register() 
{
    Read "Enter your name: ", name, !
    Read "Enter your age: ", age, !
    Write "Hello, my name is " _name_ " and I'm "_age_" old", !
    If (age >= 18) {
        Write "Of legal age", !
    } Else {
        Write "Minor"
    }
}

Method Purchase()
{
    Read "Enter your name: ", name, !
    Read "Total purchase value: ", value, !
    Read "Are you registered? (type 1 for yes and 0 for no.): ", registered, !
    if (value >= 500) && (registered = 1) {
        Set Descount = value * 0.20
        Set newValue = value - Descount
        Write name_ ", your purchase of "_value_" have "_Descount_" of descount. Final value: "_newValue
    } ElseIf(value >= 500) || (registered = 1) {
        Set Descount = value * 0.10
        Set newValue = value - Descount
        Write name_ ", your purchase of "_value_" have "_Descount_" of descount. Final value: "_newValue
    } Else {
        Write "No descount"
    }
}
}

