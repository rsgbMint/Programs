import tkinter as tk
import tkinter.ttk as ttk

window = tk.Tk()
text_box = tk.Text()
text_box.grid(row=0, column=0)

# Retrieves the first character on the first line with "1.0"
data = text_box.get("1.0")

# Retrieves the fourth character on the second line with "2.3"
data = text_box.get("2.3")

# Retrieves all the data writen in the text widget
data = text_box.get("1.0", tk.END)
window.mainloop()