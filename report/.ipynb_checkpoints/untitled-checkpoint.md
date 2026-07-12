## SQL Analysis Log

### The Three Core Business Questions

1. The Discount Trap — compared average discount % and average rating by
   brand to check whether heavily-discounted brands are compensating for
   lower customer satisfaction rather than fixing it.

2. The Merchandising Audit — compared average rating and rating_count across
   tag groups (Untagged, NEW, FEATURED, BESTSELLER, and their combinations)
   to see whether Nykaa's own merchandising tags line up with actual product
   performance.

3. The Visibility Bias — compared average rating_count across listing_page_no
   values, to see whether a product's position in the listing affects how
   much attention it gets, independent of its actual quality.

### Supporting Queries

5. Ranked products within each brand by rating using a window function
   (RANK() OVER PARTITION BY brand_name) to surface each brand's best- and
   worst-performing products.

6. Flagged high-price, low-attention products (price above the overall
   average, rating_count under 20) as a simple inventory-risk view —
   expensive products that aren't getting much customer attention.

7. Grouped products into Budget / Mid-range / Premium price segments to
   compare average rating across price tiers.