import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns 

df = pd.read_csv("Financial_Data_Analysis_Dataset_500.csv")
df.head()
df.info()
df.describe()
print(df.columns)
print(df.shape)

df.isnull().sum()
df.duplicated().sum()
df.drop_duplicates(inplace=True)
df["Date"] = pd.to_datetime(df["Date"])
df["Month"] = df["Date"].dt.month_name()
df["Year"] = df["Date"].dt.year