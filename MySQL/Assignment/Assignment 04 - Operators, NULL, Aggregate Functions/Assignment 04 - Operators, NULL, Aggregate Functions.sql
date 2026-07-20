-- ============================================
-- Assignment 04 - Operators, NULL, Aggregate Functions
-- Author: Onkar Jadhav
-- ============================================

-- Select Database
USE assignment_04;

-- ============================================
-- 1. Display all orders where the delivery partner is NULL.
-- ============================================

SELECT *
FROM customer_orders
WHERE delivery_partner IS NULL;

-- ============================================
-- 2. Count how many orders do not have a delivery partner.
-- ============================================

SELECT COUNT(*) AS orders_without_delivery_partner
FROM customer_orders
WHERE delivery_partner IS NULL;

-- ============================================
-- 3. Count how many orders have a discount.
-- ============================================

SELECT COUNT(*) AS discounted_orders
FROM customer_orders
WHERE discount > 0;

-- ============================================
-- 4. Display the total price before discount and after discount.
-- ============================================

SELECT
    order_id,
    product_name,
    quantity,
    unit_price,
    (quantity * unit_price) AS total_price_before_discount,
    ((quantity * unit_price) - COALESCE(discount, 0)) AS total_price_after_discount
FROM customer_orders;

-- ============================================
-- 5. Display GST (18%) for every order.
-- ============================================

SELECT
    order_id,
    product_name,
    ((quantity * unit_price) - COALESCE(discount, 0)) AS taxable_amount,
    (((quantity * unit_price) - COALESCE(discount, 0)) * 0.18) AS gst_18_percent
FROM customer_orders;

-- ============================================
-- 6. Increase every product price by ₹500.
-- ============================================

UPDATE customer_orders
SET unit_price = unit_price + 500;

-- ============================================
-- 7. Display orders whose status is not 'Delivered'.
-- ============================================

SELECT *
FROM customer_orders
WHERE order_status <> 'Delivered';

-- ============================================
-- 8. Display Electronics orders whose quantity is greater than 2.
-- ============================================

SELECT *
FROM customer_orders
WHERE category = 'Electronics'
  AND quantity > 2;

-- ============================================
-- 9. Display orders that are NOT Delivered.
-- ============================================

SELECT *
FROM customer_orders
WHERE order_status <> 'Delivered';

-- ============================================
-- 10. Display orders where:
-- Category = Electronics
-- City = Bhubaneswar
-- Quantity > 1
-- ============================================

SELECT *
FROM customer_orders
WHERE category = 'Electronics'
  AND city = 'Bhubaneswar'
  AND quantity >= 1;

-- ============================================
-- 11. Count total orders.
-- ============================================

SELECT COUNT(*) AS total_orders
FROM customer_orders;

-- ============================================
-- 12. Find highest product price.
-- ============================================

SELECT MAX(unit_price) AS highest_product_price
FROM customer_orders;

-- ============================================
-- 13. Find total revenue after discount.
-- ============================================

SELECT SUM((quantity * unit_price) - COALESCE(discount, 0)) AS total_revenue_after_discount
FROM customer_orders;

-- ============================================
-- 14. Count pending orders.
-- ============================================

SELECT COUNT(*) AS pending_orders
FROM customer_orders
WHERE order_status = 'Pending';

-- ============================================
-- 15. Find the total GST collected if GST is 18%
-- on all orders.
-- ============================================

SELECT SUM(((quantity * unit_price) - COALESCE(discount, 0)) * 0.18) AS total_gst_collected
FROM customer_orders;
