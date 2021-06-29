import tkinter as tk
from tkinter import DoubleVar, ttk

parent = tk.Tk()
parent.geometry("200x100")
my_double_var = DoubleVar()

my_spinbox = ttk.Spinbox(
    parent,
    from_ = 0.5,
    to = 52.0,
    increment = .01,
    textvariable = my_double_var
)
my_spinbox.pack()

parent.mainloop()