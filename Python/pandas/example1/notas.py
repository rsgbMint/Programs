import pandas as pd
datos = pd.read_csv('notas.csv')
df = pd.DataFrame(datos)
df["Promedio"] = round((df["Nota 1"] + df["Nota 2"] + df["Nota 3"])/3,2)
print(df)
