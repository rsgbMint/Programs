import tkinter as tk
from tkinter import ttk

parent = tk.Tk()
parent.geometry("200x100")

my_boolean_var = tk.BooleanVar()

my_checkbutton = ttk.Checkbutton(
    parent, text= "Check to make this option True",
    variable =my_boolean_var
)
my_checkbutton.pack()

tk.mainloop()
