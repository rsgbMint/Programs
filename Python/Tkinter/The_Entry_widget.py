import tkinter as tk
from tkinter import ttk

# The parent frame
parent = tk.Tk()
parent.geometry("200x100")

# To storage the value entered in my_entry
my_text_var = tk.StringVar()

# Widget that will be inside of parent frame
my_entry = ttk.Entry(parent,textvariable=my_text_var)

# To show in the parent frame
my_entry.pack()

# To obtain and print the my_entry input value
print(my_text_var.get())
tk.mainloop()
