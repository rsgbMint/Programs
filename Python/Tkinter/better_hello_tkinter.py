"""A better Hello World for Tkinter"""
import tkinter as tk
from tkinter import ttk

class HelloView(tk.Frame):
    """A friendly little module"""

    def __init__(self, parent, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)