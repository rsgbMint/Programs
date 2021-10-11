import tkinter as tk
from tkinter import ttk
from datetime import datetime
import os
import csv
# Start coding here

class LabelInput(tk.Frame):
    """A widget containing a label and input together"""

    def __init__(self, parent, label='', input_class=ttk.Entry,
                 input_var=None, input_args=None, label_args=None,
                 **kwargs):
        super().__init__(parent, **kwargs)

        # To ensure our input_args and label_args are dicts
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
        super().grid(sticky=sticky, **kwargs)

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

    # To pass the request to the variable or widget
    def set(self, value, *args, **kwargs):
        if type(self.variable) == tk.BooleanVar:
            self.variable.set(bool(value))
        elif self.variable:
            self.variable.set(value, *args, **kwargs)
        elif type(self.input) in (ttk.Checkbutton,
                                      ttk.Radiobutton):
            if value:
                self.input.select()
            else:
                self.input.deselect()
        elif type(self.input) == tk.Text:
            self.input.delete('1.0', tk.END)
            self.input.insert('1.0', value)
        else:  # input must be an Entry-type widget with no variable
            self.input.delete(0, tk.END)
            self.input.insert(0, value)

class DataRecordForm(tk.Frame):
    """The input form for our widgets"""
    
    def __init__(self, parent, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)

        # A dict to keep track of input widgets
        self.inputs = {}

        # Record Information Label Frame
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

        # Lab field
        self.inputs['Lab'] = LabelInput(record_infor, "Lab",
                            input_class=ttk.Combobox, input_var=tk.StringVar(),
                            input_args={"values": ["A", "B", "C", "D", "E"]})
        self.inputs['Lab'].grid(row=1, column=0)

        # Plot field
        self.inputs['Plot'] = LabelInput(record_infor, "Plot",
                            input_class=ttk.Combobox, input_var=tk.IntVar(),
                            input_args={"values": list(range(1, 21))})
        self.inputs['Plot'].grid(row=1, column=1)

        # Seed sample field
        self.inputs['Seed sample'] = LabelInput(record_infor,
                                "Seed sample", input_var=tk.StringVar())
        self.inputs["Seed sample"].grid(row=1, column=2)

        # To place the Record Information Frame in the DataRecordForm
        record_infor.grid(row=0, column=0, sticky=tk.W+tk.E)

        # Environmet Data field (for Spinbox widget) Label Frame
        environment_info = tk.LabelFrame(self, text="Environment Data")

        self.inputs['Humidity'] = LabelInput(
            environment_info, "Humidity (g/m³)",
            input_class=tk.Spinbox, input_var=tk.DoubleVar(),
            input_args={"from_": 0.5, "to": 52.0, "increment": .01})
        self.inputs['Humidity'].grid(row=0, column=0)

        self.inputs['Light'] = LabelInput(
            environment_info, " Light (klx)",
            input_class=tk.Spinbox, input_var=tk.DoubleVar(),
            input_args={"from_": 0, "to": 100, "increment": .01})
        self.inputs['Light'].grid(row=0, column=1)

        self.inputs['Temperature'] = LabelInput(
            environment_info, "Temperature (°C)",
            input_class=tk.Spinbox, input_var=tk.DoubleVar(),
            input_args={"from_": 4, "to": 40, "increment": .01})
        self.inputs['Temperature'].grid(row=0, column=2)
        
        self.inputs['Equipment Fault'] = LabelInput(
            environment_info, "Equipment Fault",
            input_class=ttk.Checkbutton,
            input_var=tk.BooleanVar())
        self.inputs['Equipment Fault'].grid(
            row=1, column=0, columnspan=3)

        # To place the Environmet Data Frame in the DataRecordForm
        environment_info.grid(row=1, column=0, sticky=tk.W)

        ################# Plant data Label Frame #################
        plant_info = tk.LabelFrame(self, text="Plant Data")

        # Plant Data field
        self.inputs['Plants'] = LabelInput(
            plant_info, "Plants",
            input_class=tk.Spinbox,
            input_var=tk.IntVar(),
            input_args={"from_": 0, "to": 20})
        self.inputs['Plants'].grid(row=0, column=0)

        self.inputs['Blossoms'] = LabelInput(
            plant_info, "Blossoms",
            input_class=tk.Spinbox,
            input_var=tk.IntVar(),
            input_args={"from_": 0, "to": 1000})
        self.inputs['Blossoms'].grid(row=0, column=1)

        self.inputs['Fruit'] = LabelInput(
            plant_info, "Fruit",
            input_class =tk.Spinbox,
            input_var=tk.IntVar(),
            input_args={"from": 0, "to": 1000})
        self.inputs['Fruit'].grid(row=0, column=2)

        self.inputs['Min Height'] = LabelInput(
            plant_info, "Min Height (cm)",
            input_class=tk.Spinbox,
            input_var=tk.DoubleVar(),
            input_args={"from_": 0, "to": 1000})
        self.inputs['Min Height'].grid(row=1, column=0)

        self.inputs['Max Height'] = LabelInput(
            plant_info, "Max Height (cm)",
            input_class=tk.Spinbox,
            input_var=tk.DoubleVar(),
            input_args={"from_": 0, "to": 1000})
        self.inputs['Max Height'].grid(row=1, column=1)

        self.inputs['Median Height'] = LabelInput(
            plant_info, "Median Height (cm)",
            input_class=tk.Spinbox,
            input_var=tk.DoubleVar(),
            input_args={"from_": 0, "to": 1000})
        self.inputs['Median Height'].grid(row=1, column=2)

        # To place the Environmet Data Frame in the DataRecordForm
        plant_info.grid(row=2, column=0, sticky=tk.W)

        # Notes section
        self.inputs['Notes'] = LabelInput(
            self, "Notes",
            input_class=tk.Text,
            input_args={"width": 66, "height": 10})
        
        # To place the Notes section in the DataRecordForm
        self.inputs['Notes'].grid(sticky=tk.W, row=3, column=0)

        # To reset our widgets as an empty value
        self.reset()
 
    # Retrieving data from our form
    def get(self):
        data = {}
        for key, widget in self.inputs.items():
            data[key] = widget.get()
        return data

    # Resetting our form
    def reset(self):
        for widget in self.inputs.values():
            widget.set('')   

class Application(tk.Tk):
    """Aplication root window"""

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        DataRecordForm(self).reset()
        self.title("ABQ Data Entry Application")
        self.resizable(width=False, height=False)
        
        # Adding our application's components 
        ttk.Label(
            self,
            text="ABQ Data Entry Application",
            font=("TkDefaultFont", 16)
        ).grid(row=0)

        # Adding our DataRecordForm
        self.recordform = DataRecordForm(self)
        self.recordform.grid(row=1, padx=10)

        # Adding the save button
        self.savebutton = ttk.Button(self, text="Save",
        command=self.on_save)
        self.savebutton.grid(sticky=tk.E, row=2, padx=12) 

        # status the status bar label
        self.status = tk.StringVar()
        self.statusbar = ttk.Label(self, textvariable=self.status)
        self.statusbar.grid(sticky=(tk.W + tk.E), row=3, padx=10)

        self.records_saved = 0
        
    def on_save(self):
        """Handles save button clicks"""

        datestring = datetime.today().strftime("%Y-%m-%d")
        filename = "abq_data_record_{}.csv".format(datestring)
        newfile = not os.path.exists(filename)

        data = self.recordform.get()
        print(data)
        with open(filename, 'a') as fh:
            csvwriter = csv.DictWriter(fh, fieldnames=data.keys())
            if newfile:
                csvwriter.writeheader()
            csvwriter.writerow(data)

        self.records_saved += 1
        self.status.set(
            "{} records saved this session".format(self.records_saved))
        self.recordform.reset()

if __name__ == '__main__':
    app = Application()
    app.mainloop()