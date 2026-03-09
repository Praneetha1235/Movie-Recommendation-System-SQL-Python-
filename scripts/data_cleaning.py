import pandas as pd

df = pd.read_csv("../data/netflix_titles.csv")

# Remove duplicates
df = df.drop_duplicates()

# Fill missing values
df['director'] = df['director'].fillna("Unknown")
df['country'] = df['country'].fillna("Unknown")
df['cast'] = df['cast'].fillna("Not Available")

# Convert date
df['date_added'] = pd.to_datetime(df['date_added'], errors='coerce')

# Save cleaned data
df.to_csv("../data/netflix_cleaned.csv", index=False)

print("Data cleaned successfully")
