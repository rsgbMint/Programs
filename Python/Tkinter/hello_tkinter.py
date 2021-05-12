"""Hello World application for Tkinter"""
from tkinter import *
from tkinter.ttk import *

root = Tk()
label = Label(root, text= "Hello World")
label.pack()
root.mainloop()

# from tkinter import *: This imports the ttk or themed Tk widget library.
# root = This creates our root or master application object. This represents.
#        This represents the primary top-level windows and main execution thread of the app.

# label = Label(root, text="Hello World"): This creates a new Label object. (Display text or images).
#         root: Is the parent or master widget.
#         text: Is the text to be displayed on the label object.
#         label: We store the new Label instance in a variable "label".

# label.pack(): This places the new label widget onto its parent widget that is one 
#               of the three geometry manager methods they can use.

# root.mainloop: This final line starts our main event loop.   
