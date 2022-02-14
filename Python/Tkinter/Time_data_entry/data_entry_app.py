import tkinter as tk
import tkinter.ttk as ttk

class LabelInput(tk.Frame):
    def __init__(self, parent, **kwargs):
        super().__init__(parent, **kwargs)

        self.main_label = ttk.Label(self, text='Main')
        self.main_label.grid(row=0, column=0, sticky=tk.W)

        days_list = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
        times_list = ['7:00am - 8:00am', '8:00am - 9:00am', '9:00am - 10:00am', '10:00am - 11:00am']
        
        for day in days_list:
            # Creates the days' labels
            self.label = ttk.Label(self, text=day)
            self.label.grid(row=0, column=days_list.index(day)+1)

            # Creates the entrys
            for column in range(8):
                if column != 0:
                    # Creates the input class  
                    self.input = ttk.Entry(self)
                    self.input.grid(row=days_list.index(day)+1, column=column)
                else:
                    self.input = ttk.Combobox(self, values=times_list)
                    self.input.grid(row=days_list.index(day)+1, column=0, sticky=(tk.N + tk.S))    


class Application(tk.Tk):
    """Application root window"""

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        LabelInput(self).grid()

if __name__ == '__main__':
    app = Application()
    app.mainloop()