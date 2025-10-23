import turtle

screen = turtle.Screen()
screen.title("Turtle Hello World!")

writer = turtle.Turtle()
writer.hideturtle() 
writer.penup()     
writer.goto(0, 0)  

writer.write("Hello, World!", align="center", font=("Arial", 24, "normal"))

screen.mainloop()