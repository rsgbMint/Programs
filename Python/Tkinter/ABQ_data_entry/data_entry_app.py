import tkinter as tk
from tkinter import ttk

# Start coding here

class LabelInput(tk.Frame):
    """A widget containing a label and input together"""

    def __init__(self, parent, label='', input_class=ttk.Entry, 
        input_var=None, input_args=None, label_args=None,
        **kwargs):
        super().__init__(parent, **kwargs)
        input_args = input_args or {}
        label_args = label_args or {}
        self.variable = input_var

        # To differentiate between widgets like Button and Checkbutton
        if input_class in (ttk.Checkbutton, ttk.Button, ttk.Radiobutton):
            input_args["text"] = label
            input_args["variable"] = input_var

        else:
            self.label = ttk.Label(self, text=label, **label_args)
            self.label.grid(row=0, column=0, sticky=(tk.W + tk.E))
            input_args["textvariable"] = input_var

        # Create the input class
        self.input = input_class(self, **input_args)
        self.input.grid(row=1, column=0, sticky=(tk.W + tk.E))
        # To configure the grid layout to expand our lone column 
        self.columnconfigure(0, weight=1)

        # To override the grid method for filling the entire grid cell
        def grid(self, sticky=(tk.E + tk.W), **kwargs):
            super().grid(sticky, **kwargs)

        # To simply pass along the request to the input or its variable
        def get(self):
            try:
                if self.variable:
                    return self.variable.get()
                elif type(self.input) == tk.Text:
                    return self.input.get('1.0', tk.END)
                else:
                    return self.input.get()
            except (TypeError, tk.TclError):
                # happens when numeric fields are empty.
                return ''

        # To pass the request to the varialbe or widget
        def set(self, value, *args, **kwargs):
            if type(self.varialbe) == tk.BooleanVar:
                self.variable.set(bool(value))
            elif self.varialbe:
                self.variable.set(value, *args, **kwargs)
            elif type(self.input) in (ttk.Checkbutton,
            ttk.Radiobutton):
                if value:
                    self.input.select()
                else:
                    self.input.deselect()
            elif type(self.input) == tk.Text:
                self.input.delete('1.0', value)
            else: # input must be an Entry-type widget with no variable
                self.input.delete(0, tk.END)
                self.input.insert(0, value)

class DatarecordForm(tk.Frame):
    """The input form for our widgets"""

    def __init__(self, parent, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)

        # A dict to keep track of input widgets
        self.inputs = {}

        # Line 1
        # Record Information Frame
        record_infor = tk.LabelFrame(self, text="Record Information")

        # Date field
        self.inputs['Date'] = LabelInput(record_infor, "Date",
            input_var=tk.StringVar())
        self.inputs['Date'].grid(row=0, column=0)
        
        # Time field
        self.inputs['Time'] = LabelInput(record_infor, "Time",
            input_class=ttk.Combobox, input_var=tk.StringVar(),
            input_args={"values": ["8:00", "12:00", "16:00", "20:00"]})
        self.inputs['Time'].grid(row=0, column=1)

        # Technician field
        self.inputs['Technician'] = LabelInput(record_infor, 
        "Technician",
            input_var=tk.StringVar())
        self.inputs['Technician'].grid(row=0, column=2)

        # Line 2
        # Lab field
        self.inputs['Lab'] = LabelInput(record_infor, "Lab",
            input_class=ttk.Combobox, input_var=tk.StringVar(),
            input_args={"values": ["A", "B", "C", "D", "E"]})
        self.inputs['Lab'].grid(row=1, column=0)

        # Plot field
        self.inputs['Plot'] = LabelInput(record_infor, "Plot",
            input_class=ttk.Combobox, input_var=tk.IntVar(), 
            input_args={"values" : list(range(1, 21))})
        self.inputs['Plot'].grid(row=1, column=1)

        # Seed sample field
        self.inputs['Seed sample'] = LabelInput(record_infor,
            "Seed sample", input_var=tk.StringVar())
        self.inputs["Seed sample"].grid(row=1, column=2)

        # To place the Record Information Frame in the root
        record_infor.grid(row=0, column=0, sticky=tk.W + tk.E)

        # Line 3
        # Environmet Data (for Spinbox widget) Frame
        environment_info = tk.LabelFrame(self, text="Environment Data")

        self.inputs['Humidity'] = LabelInput(
            environment_info, "Humidity (m³)",
            input_class=tk.Spinbox, input_var=tk.DoubleVar(),
            input_args={"from_": 0.5, "to":52.0, "increment": .01})
        self.inputs['Humidity'].grid(row=0, column=0)

        #TODO
        # self.inputs[]
        # To place the Environmet Data Frame in the root
        environment_info.grid(row=1, column=0, sticky=tk.W + tk.E)



class Application(tk.Tk):
    """Aplication root window"""
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        DatarecordForm(self).grid()

if __name__ == '__main__':
    app = Application()
    app.mainloop()