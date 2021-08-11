import tkinter as tk
from tkinter import ttk

class MainWindow(tk.Tk):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        ExtractText(self)
        self.title('Extract Text')

class ExtractText(tk.Frame):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

if __name__ == '__main__':
    app = MainWindow()
    app.mainloop()