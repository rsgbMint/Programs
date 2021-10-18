import tkinter as tk
from tkinter import ttk

class InAndDecrease(tk.Frame):
    """ Increase and decrease functionality"""
    
    def __init__(self, master, *args, **kwargs):
        super().__init__(master, *args, **kwargs)

        # We create the widgets
        self.lbl_increase = ttk.Button(text="+", command=self.increase)
        self.lbl_decrease = ttk.Button(text="-", command=self.decrease)
        
        self.variable = tk.StringVar()
        self.label = ttk.Label(text="0")

        # We add the widget to the main window
        self.lbl_increase.grid(row=0, column=0, sticky="nsew")
        self.label.grid(row=0, column=1)
        self.lbl_decrease.grid(row=0, column=2, sticky="nsew")

    # To increase the value by clicking in "+" button
    def increase(self):
        value = int(self.label["text"])
        self.label["text"] = f"{value + 1}"

    # To decrease the value by clicking in "-" button
    def decrease(self):
        value = int(self.label["text"])
        self.label["text"] = f"{value - 1}"

class Application(tk.Tk):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        # Calls the InAndDecrease class 
        InAndDecrease(self).grid()

        # To configure the size of the widgets
        self.rowconfigure(0, minsize=70, weight=1)
        self.columnconfigure([0, 1, 2], minsize=70, weight=1)

if __name__ == '__main__':
    app = Application()
    app.mainloop()