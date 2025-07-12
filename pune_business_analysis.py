import pandas as pd
import matplotlib.pyplot as plt

# 1. Load the dataset
df = pd.read_csv("C:\\Users\\Lenovo\\Desktop\\Project Analysis\\Pune_local_business\\business.csv")

# 2. Show basic info
print("Total records:", len(df))
print("Column names:", df.columns.tolist())
print("\nMissing values:\n", df.isnull().sum())

# 3. Top 5 areas with most active businesses
active_businesses = df[df["Is_Active"] == "Yes"]
top_areas = active_businesses["Area"].value_counts().head(5)
print("\nTop 5 Areas with Most Active Business:\n", top_areas)

# Plot top 5 areas
top_areas.plot(kind="bar", title="Top 5 Active Business Areas")
plt.show()

# 4. Sales vs Rating Scatter Plot
plt.scatter(df["Rating"], df["Monthly_Sales"])
plt.title("Sales vs Ratings")
plt.xlabel("Rating")
plt.ylabel("Monthly Sales")
plt.show()

# 5. Underperforming businesses
underperforming = df[(df["Rating"] < 3.5) & (df["Monthly_Sales"] < 10000)]
print("\nUnderperforming Business:\n", underperforming[["Business_Name", "Area", "Rating", "Monthly_Sales"]])

# 6. Export cleaned dataset (remove missing)
cleaned_df = df.dropna()
cleaned_df.to_csv("cleaned_business.csv", index=False)
print("\nCleaned data saved to 'cleaned_business.csv'")
