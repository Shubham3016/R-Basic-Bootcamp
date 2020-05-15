# Create a vector x storing the sequence 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20.

x<-c(10,11,12,13,14,15,16,17,18,19,20,21)

# Add 2 to it. Save the result into a variable called y.
y<-x+2
y

# Multiply y by 3. Save that into a variable called z.
z<-y*3
z

# Subtract 6 from z and divide the result by 3. Save what you get into a variable called answer.
z-6/3
z

# Print your answer variable.

x+2*3-6/3
x+6-2
x+4

#Try to do the entire operation in a single line of code. 

x+(2*3)-(6/3)

# Create a vector called monster, storing the values T, T, T, F, T, T, T, T, T, T.
monster<-c(T,T,T,F,T,T,T,T,T)
monster
typeof(monster)

# Attach the vector you just created to the yugioh vector. Check the type of yugioh.
yugioh<-c(yugioh,monster)
yugioh

typeof(yugioh)

# Is this what you expected?
yes 

# Combine atk and monster into a vector called coerce.check. Check its type and print it, if you need. Try to get the value printed on your screen without typing in the print() command. Can you do that?
coerce.check<-c(atk,monster)
coerce.check

typeof(coerce.check)

coerce.check


