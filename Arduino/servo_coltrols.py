import tkinter as tk
from tkinter import ttk

class LabelInput(tk.Frame):
    """A widget containing a label and input together"""

    def __init__(self, parent, label='', input_class=ttk.Scale,
                 input_var=None, input_args=None, label_args=None,
                 **kwargs):
        super().__init__(parent, **kwargs)

        # To ensure our input_args and label_args are dicts
        input_args = input_args or {}
        label_args = label_args or {}
        self.variable = input_var

        # To set up the label of the LabelInput class
        self.label = tk.Label(self, text=label, **label_args)
        self.label1 = ttk.Label(self, text='')
        self.label.grid(row=0, column=0, sticky=(tk.W))        
        self.label1.grid(row=0, column=2, sticky=(tk.W), padx=10)

        # To set up the input class of the LabelInput class
        self.input = input_class(self, command=self.show, **input_args)
        self.input.grid(row=0, column=1, sticky=tk.W)

    # To show the Scale value in the label1    
    def show(self, value):
        self.label1.configure(text=value)

class ServoMotors(tk.Frame):
    def __init__(self, parent, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)

        self.inputs = {}
        
        # For servo 0
        self.inputs["Servo 0"] = LabelInput(self, "Servo 0",
                                        input_var=tk.DoubleVar(),
            input_args={"from_": 0, "to": 180, "orient" : "horizontal",\
            "length":150}, label_args={"padx":5})
        self.inputs["Servo 0"].grid(row=0, column=0, sticky=tk.W)

        # For servo 1
        self.inputs["Servo 1"] = LabelInput(self, "Servo 1",
                                        input_var=tk.IntVar(),
            input_args={"from_": "0", "to": 180, "orient" :"horizontal",\
            "length":150}, label_args={"padx":5})
        self.inputs["Servo 1"].grid(row=1, column=0, sticky=tk.W)

        # For servo 2
        self.inputs["Servo 2"] = LabelInput(self, "Servo 2",
                                        input_var=tk.DoubleVar(),
            input_args={"from_": 0, "to": 180, "orient" : "horizontal",\
            "length":150}, label_args={"padx":5})
        self.inputs["Servo 2"].grid(row=2, column=0, sticky=tk.W)

        # For servo 3
        self.inputs["Servo 3"] = LabelInput(self, "Servo 3",
                                        input_var=tk.IntVar(),
            input_args={"from_": "0", "to": 180, "orient" :"horizontal",\
            "length":150}, label_args={"padx":5})
        self.inputs["Servo 3"].grid(row=3, column=0, sticky=tk.W)

        # For servo 4
        self.inputs["Servo 4"] = LabelInput(self, "Servo 4",
                                        input_var=tk.DoubleVar(),
            input_args={"from_": 0, "to": 180, "orient" : "horizontal",\
            "length":150}, label_args={"padx":5})
        self.inputs["Servo 4"].grid(row=4, column=0, sticky=tk.W)

        # For servo 5
        self.inputs["Servo 5"] = LabelInput(self, "Servo 5",
                                        input_var=tk.IntVar(),
            input_args={"from_": "0", "to": 180, "orient" :"horizontal",\
            "length":150}, label_args={"padx":5})
        self.inputs["Servo 1"].grid(row=5, column=0, sticky=tk.W)

        # For servo 6
        self.inputs["Servo 6"] = LabelInput(self, "Servo 6",
                                        input_var=tk.DoubleVar(),
            input_args={"from_": 0, "to": 180, "orient" : "horizontal",\
            "length":150}, label_args={"padx":5})
        self.inputs["Servo 6"].grid(row=6, column=0, sticky=tk.W)

        # For servo 7
        self.inputs["Servo 7"] = LabelInput(self, "Servo 7",
                                        input_var=tk.IntVar(),
            input_args={"from_": "0", "to": 180, "orient" :"horizontal",\
            "length":150}, label_args={"padx":5})
        self.inputs["Servo 7"].grid(row=7, column=0, sticky=tk.W)

        # For servo 8
        self.inputs["Servo 8"] = LabelInput(self, "Servo 8",
                                        input_var=tk.DoubleVar(),
            input_args={"from_": 0, "to": 180, "orient" : "horizontal",\
            "length":150}, label_args={"padx":5})
        self.inputs["Servo 8"].grid(row=8, column=0, sticky=tk.W)

        # For servo 9
        self.inputs["Servo 9"] = LabelInput(self, "Servo 9",
                                        input_var=tk.IntVar(),
            input_args={"from_": "0", "to": 180, "orient" :"horizontal",\
            "length":150}, label_args={"padx":5})
        self.inputs["Servo 9"].grid(row=9, column=0, sticky=tk.W)

class Application(tk.Tk):
    """Aplication root window"""

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        ServoMotors(self).grid(row=0, column=0)
        self.geometry("370x200")
        self.title("Servo motors controller")

if __name__ == '__main__':
    app = Application()
    app.mainloop()