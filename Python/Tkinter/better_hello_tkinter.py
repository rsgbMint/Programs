"""A better Hello World for Tkinter"""
import tkinter as tk
from tkinter import ttk

# we subclass Tk which will represent our main application object
class MyApplication(tk.Tk):
    """Hello World Main Application"""
    
    def __init__(self, *args, **kwargs):
        # we don't need a parent widget this time
        super().__init__(*args, **kwargs)

        # to configure our application window
        self.title("Hello Tkinter")
        self.geometry("800x600")
        self.resizable(width=False, height=False)

        # we want the view to fill the application to all sides of its cell
        HelloView(self).grid(sticky=(tk.E + tk.W + tk.N + tk.S))
        self.columnconfigure(0, weight=1)


class HelloView(tk.Frame):
    """A friendly little module"""

    def __init__(self, parent, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)

        # two Tkinter variable objects to store the name and greeting strings
        self.name = tk.StringVar()
        self.hello_string = tk.StringVar()

        # set "Hello World" value to hello_string object
        self.hello_string.set("Hello World")
        
        # build our view by creating a label object and entry 
        name_label = ttk.Label(self, text="Name:")
        name_entry = ttk.Entry(self, textvariable=self.name)
        
        # create a button
        ch_button = ttk.Button(self, text="Change",
            command=self.on_change)
        
        # create another label to display our text
        hello_label = ttk.Label(self, textvariable=self.hello_string,
            font=("TkDefaultFont", 64),wraplength=800)
        
        # let's arrange our widgets
        name_label.grid(row=0,column=0, sticky=tk.W)
        name_entry.grid(row=0,column=1, sticky=(tk.W + tk.E))
        ch_button.grid(row=0, column=2, sticky=tk.E)
        hello_label.grid(row=1, column=0, columnspan=3)
        
        # adjusting the grid configuration
        self.columnconfigure(1, weight=1)

    # we create the callback for ch_button
    def on_change(self):
        if self.name.get().strip():
            self.hello_string.set("Hello " + self.name.get())
        else:
            self.hello_string.set("Hello World")

# to check if a script is being run directly
if __name__ == '__main__':
    app = MyApplication()
    app.mainloop()