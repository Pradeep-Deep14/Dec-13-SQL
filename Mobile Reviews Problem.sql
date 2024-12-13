CREATE TABLE mi_reviews (
         review_id INT, 
         user_id INT, 
         user_name VARCHAR(100), 
         product_name VARCHAR(100), 
         review_date DATE
     );
     CREATE TABLE oneplus_reviews (
         review_id INT, 
         user_id INT, 
         user_name VARCHAR(100), 
         product_name VARCHAR(100), 
         review_date DATE
     );
     INSERT INTO mi_reviews VALUES 
         (1, 301, 'Vikram Singh', 'Mi 11', '2023-08-10'), 
         (2, 302, 'Riya Sharma', 'Mi Band 6', '2023-09-05'), 
         (3, 301, 'Vikram Singh', 'Mi Air Purifier', '2023-09-12');
     INSERT INTO oneplus_reviews VALUES 
         (1, 301, 'Vikram Singh', 'OnePlus Nord', '2023-08-15'), 
         (2, 303, 'Pooja Desai', 'OnePlus 9', '2023-09-10'), 
         (3, 302, 'Riya Sharma', 'OnePlus Buds', '2023-09-18');


SELECT * FROM MI_REVIEWS

SELECT * FROM ONEPLUS_REVIEWS

/*Identify all mobile users who have reviewed products on both Mi and OnePlus platforms.
*/


SELECT M.USER_NAME
FROM MI_REVIEWS M
JOIN ONEPLUS_REVIEWS O
ON M.USER_ID = O.USER_ID

