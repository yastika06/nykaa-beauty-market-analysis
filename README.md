# Nykaa Beauty Market Analysis

**Business Intelligence case study on Nykaa's product catalogue — from raw data to executive-ready insights.**

> Independent student portfolio project. Not affiliated with or endorsed by Nykaa E-Retail Pvt. Ltd. All analysis is based on a publicly available product dataset.

---

## Business Framing

I took on the role of a Business Analyst supporting Nykaa's Brand & Merchandising team. The goal: understand whether current discounting strategy, merchandising tags, listing placement, and premium inventory are actually working *with* customer behavior — or quietly working against it.

---

## What This Project Covers

- **Data cleaning** — Python/Pandas, with every decision documented (see `report/cleaning_log.md`)
- **SQL analysis** — SQLite, including window functions, correlated subqueries, and CASE-based segmentation (see `report/sql_analysis_log.md`)
- **Interactive dashboard** — 3-page Power BI report with KPI cards, brand drill-down, and captioned findings
- **Executive report** — a one-page consulting-style business brief summarizing findings and recommendations

---

## Dataset

- Source: [Nykaa Popular Brands – Cosmetics & Beauty Products](https://www.kaggle.com/datasets/jithinanievarghese/nykaa-popular-brands-cosmetics-beauty-products) (Kaggle)
- 3,662 products after cleaning — brand, price, MRP, rating, review count, stock status, and merchandising tags
- A second dataset (`Nykaa_Products_2023.csv`) was explored but excluded from the core analysis — it has no brand/ID field to reliably join on, and merging it would have relied on fuzzy-matching product name text. Kept in `data/raw` as evidence of the exploration process.

---

## Key Business Findings

| # | Finding | Insight |
|---|---------|---------|
| 1 | **The Discount Trap** | Brands like Colorbar, Faces Canada, and Lotus Herbals discount 20–31%, well above the 18.8% platform average — yet their ratings still trail better-performing brands. Discounting isn't fixing an underlying satisfaction gap. |
| 2 | **The Merchandising Audit** | FEATURED/BESTSELLER-tagged products draw far more reviews than untagged ones, but ratings are only marginally higher — tag criteria may reward visibility over proven quality. |
| 3 | **The Visibility Bias** | Page 1 listings get ~11,200 average reviews vs. ~4,000–5,000 on pages 4–9, while ratings stay consistent regardless of page. Attention follows placement, not just quality. |
| 4 | **The Inventory Attention Gap** | 15 premium-priced products (₹2,400+) show fewer than 20 reviews each — capital may be tied up in low-traction premium stock. |

Full reasoning, caveats, and recommendations for each finding are in the [Executive Report](report/Nykaa_Executive_Business_Report.pdf).

---

## Dashboard

*(Insert a screenshot of your Power BI Overview page here — drag the image into this section on GitHub, or use `![Dashboard Overview](dashboard/overview_screenshot.png)`)*

Full interactive file: [`dashboard/nykaa_dashboard.pbix`](dashboard/nykaa_dashboard.pbix)
Exported view: [`dashboard/nykaa_dashboard.pdf`](dashboard/nykaa_dashboard.pdf)

---

## Repository Structure

```
nykaa-beauty-market-analysis/
├── data/
│   ├── raw/              # Original Kaggle datasets
│   └── cleaned/           # Cleaned, analysis-ready CSV
├── notebooks/              # Python cleaning + SQL export notebook
├── sql/                    # SQLite database + query file
├── dashboard/               # Power BI file, exported PDF, chart-source CSVs
├── report/
│   ├── cleaning_log.md
│   ├── sql_analysis_log.md
│   └── Nykaa_Executive_Business_Report.pdf
└── README.md
```

---

## Tools Used

Python · Pandas · SQL (SQLite) · Power BI · Git/GitHub

---

## Methodology

```
Raw Dataset → Data Cleaning (Python) → SQL Analysis (SQLite) → Power BI Dashboard → Business Insights
```

Every cleaning and analysis decision — what was dropped, what was kept, and why — is documented in `report/cleaning_log.md` and `report/sql_analysis_log.md` rather than applied silently.

---

## Author

**Yastika Singh**
B.Tech Electrical Engineering, MNNIT Allahabad

[GitHub](https://github.com/yastika06) · [LinkedIn](https://linkedin.com/in/yastika-singh-913042224)
