# Data Cleaning Log

## Step 1

* Standardized `brand_name` values by removing extra spaces and converting them to Title Case.
* This ensures the same brand isn't treated as multiple categories due to inconsistent formatting.

## Step 2

* Checked the `in_stock` column for missing values 
* Filled missing entries with `"Unknown"` instead of assuming they were in or out of stock.

## Step 3

* Replaced missing values in the `tags` column with `"Untagged"` to avoid issues during analysis.

## Step 4

* Added a new column, `discount_pct`, using the formula:

  ```
  ((mrp - price) / mrp) * 100
  ```
* This will be useful for analyzing discount trends later.

## Step 5

* Checked for duplicate products using `product_id` as the unique identifier.
* Removed duplicate records and verified how many rows were deleted.

**Status:** Dataset cleaned and ready for exploratory data analysis (EDA).
