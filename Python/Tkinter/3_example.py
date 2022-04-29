import tkinter as tk
from tkinter import ttk

class TemperatureConverter(tk.Frame):
    def __init__(self, parent, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)

        # Dicctionary to save the options and measurement units
        self.convertions = {"Kelvin - Celsius": ["K", "\N{DEGREE CELSIUS}"],
                            "Kelvin - Fahrenheit": ["K", "\N{DEGREE FAHRENHEIT}"],
                            "Celsius - Kelvin":["\N{DEGREE CELSIUS}", "K"],
                            "Celsius - Fahrenheit": ["\N{DEGREE CELSIUS}", "\N{DEGREE FAHRENHEIT}"],
                            "Fahrenheit - Kelvin": ["\N{DEGREE FAHRENHEIT}", "K"],
                            "Fahrenheit - Celsius": ["\N{DEGREE FAHRENHEIT}", "\N{DEGREE CELSIUS}"]}

        # Creates the variables for the widgets
        self.variable_option = tk.StringVar()
        self.variable_entry1 = tk.IntVar()
        self.variable_entry2 = tk.StringVar()
        self.variable_l1 = tk.StringVar()
        self.variable_l2 =tk.StringVar()

        # We create the widgets
        self.option = ttk.Combobox(self, textvariable=self.variable_option)
        self.option["values"] = list(self.convertions.keys())
        self.entry1 = ttk.Entry(self, textvariable=self.variable_entry1)
        self.label1 = ttk.Label(self, textvariable=self.variable_l1)
        self.convert_btn = ttk.Button(self, text="\N{RIGHTWARDS BLACK ARROW}",
                                     command=self.converter)
        self.entry2 = ttk.Entry(self, textvariable=self.variable_entry2)
        self.label2 = ttk.Label(self, textvariable=self.variable_l2)

        # Gives a functionality when the combobox is selected
        self.option.bind("<<ComboboxSelected>>", self.callback)

        # Set up the widgets' position
        self.option.grid(row=0, column=0)
        self.entry1.grid(row=0, column=1)
        self.convert_btn.grid(row=0, column=3)
        self.entry2.grid(row=0, column=4)
        self.label1.grid(row=0, column=2)
        self.label2.grid(row=0, column=5)

    # The function is called when the comobobox widget is selected
    def callback(self, event):
        self.convertion_keys = list(self.convertions.keys())
        self.convertion_values = list(self.convertions.values())

        # Resets the ouput widget
        self.variable_entry2.set("")

        # Conditions to change measurement units
        if self.option.get() == self.convertion_keys[0]:
            self.variable_l1.set(self.convertion_values[0][0])
            self.variable_l2.set(self.convertion_values[0][1])

        elif self.option.get() == self.convertion_keys[1]:
            self.variable_l1.set(self.convertion_values[1][0])
            self.variable_l2.set(self.convertion_values[1][1])

        elif self.option.get() == self.convertion_keys[2]:
            self.variable_l1.set(self.convertion_values[2][0])
            self.variable_l2.set(self.convertion_values[2][1])

        elif self.option.get() == self.convertion_keys[3]:
            self.variable_l1.set(self.convertion_values[3][0])
            self.variable_l2.set(self.convertion_values[3][1])

        elif self.option.get() == self.convertion_keys[4]:
            self.variable_l1.set(self.convertion_values[4][0])
            self.variable_l2.set(self.convertion_values[4][1])

        elif self.option.get() == self.convertion_keys[5]:
            self.variable_l1.set(self.convertion_values[5][0])
            self.variable_l2.set(self.convertion_values[5][1])

        else:
            self.variable_l1.set(self.convertion_values[6][0])
            self.variable_l2.set(self.convertion_values[6][1])

    # Method to convert temperature scales
    def converter(self):
        # Not to add to the output
        self.variable_entry2.set("")

        # Calculates the result of temperature conversions
        if self.option.get()== self.convertion_keys[0]:
            value = float(self.entry1.get()) - 273.15
            self.entry2.insert(0, round(value, 2))

        elif self.option.get()== self.convertion_keys[1]:
            value = (float(self.entry1.get()) - 273.15)*9/5 + 32
            self.entry2.insert(0, round(value, 2))

        elif self.option.get()== self.convertion_keys[2]:
            value = float(self.entry1.get()) + 273.15
            self.entry2.insert(0, round(value, 2))

        elif self.option.get()== self.convertion_keys[3]:
            value = float(self.entry1.get())*9/5 + 32
            self.entry2.insert(0, round(value, 2))

        elif self.option.get()== self.convertion_keys[4]:
            value = (float(self.entry1.get()) - 32)*5/9 + 273.15
            self.entry2.insert(0, round(value, 2))

        else:
            value = (float(self.entry1.get()) - 32)*5/9
            self.entry2.insert(0, round(value, 2))

class Application(tk.Tk):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.title("Temperature Converter")

        TemperatureConverter(self).grid()

        # To configure the size of the widgets
        self.rowconfigure(0, minsize=70, weight=1)
        self.columnconfigure([0, 1, 2], minsize=70, weight=1)


if __name__ == '__main__':
    app = Application()
    app.mainloop()
