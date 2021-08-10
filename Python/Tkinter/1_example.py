import tkinter as tk
from tkinter import ttk

class MainWindow(tk.Tk):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.geometry('300x200')
        Form(self).pack()

class Form(tk.Frame):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        title = ttk.Label(self, text='Register Form').grid(row=0, column=0, columnspan=2)
        label_name = ttk.Label(self, text='Name').grid(row=1, column=0, sticky=tk.W)
        entry_name = ttk.Entry(self).grid(row=1, column=1)
        last_name = ttk.Label(self, text='Last Name').grid(row=2, column=0)
        entry_last_name = ttk.Entry(self).grid(row=2, column=1)
        checkbutton = ttk.Checkbutton(self, text='I accept the terms and conditions').\
            grid(row=3, column=0, columnspan=2)

if __name__ == '__main__':
    app = MainWindow()
    app.mainloop()
