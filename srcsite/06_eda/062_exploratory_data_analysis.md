

## Descriptive Statistics

Descriptive statistics is a branch of statistics that involves the analysis and summary of data to gain insights into its main characteristics. It provides a set of quantitative measures that describe the central tendency, dispersion, and shape of a dataset. These statistics help in understanding the data distribution, identifying patterns, and making data-driven decisions.

There are several key descriptive statistics commonly used to summarize data:

  * **Mean**: The mean, or average, is calculated by summing all values in a dataset and dividing by the total number of observations. It represents the central tendency of the data.

  * **Median**: The median is the middle value in a dataset when it is arranged in ascending or descending order. It is less affected by outliers and provides a robust measure of central tendency.

  * **Mode**: The mode is the most frequently occurring value in a dataset. It represents the value or values with the highest frequency.

  * **Variance**: Variance measures the spread or dispersion of data points around the mean. It quantifies the average squared difference between each data point and the mean.

  * **Standard Deviation**: Standard deviation is the square root of the variance. It provides a measure of the average distance between each data point and the mean, indicating the amount of variation in the dataset.

  * **Range**: The range is the difference between the maximum and minimum values in a dataset. It provides an indication of the data's spread.

  * **Percentiles**: Percentiles divide a dataset into hundredths, representing the relative position of a value in comparison to the entire dataset. For example, the 25th percentile (also known as the first quartile) represents the value below which 25% of the data falls.

Now, let's see some examples of how to calculate these descriptive statistics using Python:


```python
import numpy as npy

data = [10, 12, 14, 16, 18, 20]

mean = npy.mean(data)
median = npy.median(data)
mode = npy.mode(data)
variance = npy.var(data)
std_deviation = npy.std(data)
data_range = npy.ptp(data)
percentile_25 = npy.percentile(data, 25)
percentile_75 = npy.percentile(data, 75)

print("Mean:", mean)
print("Median:", median)
print("Mode:", mode)
print("Variance:", variance)
print("Standard Deviation:", std_deviation)
print("Range:", data_range)
print("25th Percentile:", percentile_25)
print("75th Percentile:", percentile_75)
```

In the above example, we use the NumPy library in Python to calculate the descriptive statistics. The `mean`, `median`, `mode`, `variance`, `std_deviation`, `data_range`, `percentile_25`, and `percentile_75` variables represent the respective descriptive statistics for the given dataset.

Descriptive statistics provide a concise summary of data, allowing data scientists to understand its central tendencies, variability, and distribution characteristics. These statistics serve as a foundation for further data analysis and decision-making in various fields, including data science, finance, social sciences, and more.

With pandas library, it's even easier.


```python
import pandas as pd

# Create a dictionary with sample data
data = {
    'Name': ['John', 'Maria', 'Carlos', 'Anna', 'Luis'],
    'Age': [28, 24, 32, 22, 30],
    'Height (cm)': [175, 162, 180, 158, 172],
    'Weight (kg)': [75, 60, 85, 55, 70]
}

# Create a DataFrame from the dictionary
df = pd.DataFrame(data)

# Display the DataFrame
print("DataFrame:")
print(df)

# Get basic descriptive statistics
descriptive_stats = df.describe()

# Display the descriptive statistics
print("\nDescriptive Statistics:")
print(descriptive_stats)
```

and the expected results

```bash
DataFrame:
     Name  Age  Height (cm)  Weight (kg)
0    John   28          175           75
1   Maria   24          162           60
2  Carlos   32          180           85
3    Anna   22          158           55
4    Luis   30          172           70

Descriptive Statistics:
            Age  Height (cm)  Weight (kg)
count   5.000000      5.00000     5.000000
mean   27.200000    169.40000    69.000000
std     4.509250      9.00947    11.704700
min    22.000000    158.00000    55.000000
25%    24.000000    162.00000    60.000000
50%    28.000000    172.00000    70.000000
75%    30.000000    175.00000    75.000000
max    32.000000    180.00000    85.000000
```

The code creates a DataFrame with sample data about names, ages, heights, and weights and then uses `describe()` to obtain basic descriptive statistics such as count, mean, standard deviation, minimum, maximum, and quartiles for the numeric columns in the DataFrame.
