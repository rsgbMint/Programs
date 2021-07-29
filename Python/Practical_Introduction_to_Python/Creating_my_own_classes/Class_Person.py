import tkinter as tk
from tkinter import ttk

# Defining the father class
class Person:

    # Initializing the class
    def __init__(self, name, surname):
        self.name = name 
        self.surname = surname

    # First class's method
    def mostrar(self):
        print(self.name, self.surname)

# Inherited class
class Student(Person):
    
    # Initializing the inherited class 
    def __init__(self, name, surname, occupation):
        self.occupation = occupation

        # To access to the parent (Person) class initilizer
        Person.__init__(self, name, surname)
        Person.mostrar(self)
        print(self.occupation)

std1 = Student('Roly', 'Sandro', 'student')
     