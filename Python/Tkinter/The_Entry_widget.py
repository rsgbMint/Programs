import tkinter as tk
from tkinter import ttk
from typing import Text

class MainApplication(tk.Tk):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.title('The Entry Widget')
        Entry_widget(self).grid()


class Entry_widget(tk.Frame):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        my_entry = ttk.Entry(self)

        my_entry.grid()

if __name__ == '__main__':
    app = MainApplication()
    app.mainloop()
