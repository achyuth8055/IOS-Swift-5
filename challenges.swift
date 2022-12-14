
//challenge to Generate the random Password using alphabets

var array = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

var password:String =  " " //empty password variable with String Type is assigned here
var i = 0 // i variable is created for using in a loop
while i < 8 { //looping the statment untile 8character password is generated
  password += array.randomElement()!  // concatinating the password string on every iteration until i becomes 7
  i += 1 // incrementing the value of i to avoid infinity loop
}

print("Random Generated Passsword is : \(password)");  // printng the randomly generated password String on Console
