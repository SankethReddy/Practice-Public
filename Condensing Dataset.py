import pandas as pd

df = pd.read_csv('US_Accidents_Dec19.csv')
#print(df['State'].value_counts())
df_new = df[df.index % 10 == 0]
df_new.to_csv('Condensed Dataset.csv')