-- Find an update query to update multiple  rows with different values in particular column

CREATE TABLE product(
	product_id serial primary key,
	p_name varchar(50),
	p_price int,
	p_quantity int
)


INSERT into product(p_name,p_price,p_quantity)
values
('Laptop', 750, 15),
('Smartphone', 500, 25),
('Tablet', 300, 30),
('Smartwatch', 150, 50),
('Headphones', 100, 40),
('Bluetooth Speaker', 120, 35),
('Monitor', 250, 20),
('Keyboard', 50, 60),
('Mouse', 30, 70),
('Webcam', 80, 45),
('External Hard Drive', 100, 40),
('USB Flash Drive', 20, 100),
('Printer', 150, 15),
('Router', 80, 30),
('Gaming Console', 400, 10),
('Television', 600, 8),
('Camera', 350, 12),
('Microwave Oven', 200, 18),
('Refrigerator', 800, 5),
('Washing Machine', 700, 7),
('Air Conditioner', 900, 6),
('Vacuum Cleaner', 250, 22),
('Blender', 70, 55),
('Toaster', 30, 50),
('Coffee Maker', 100, 40),
('Electric Kettle', 40, 60),
('Iron', 35, 65),
('Hair Dryer', 60, 70),
('Water Purifier', 120, 25),
('Fan', 90, 30),
('Heater', 110, 20),
('Projector', 300, 10),
('Smart Home Hub', 200, 15),
('Smart Light Bulb', 25, 80),
('Fitness Tracker', 100, 50),
('Drone', 400, 12),
('Electric Scooter', 500, 9),
('Portable Charger', 40, 75),
('Wireless Earbuds', 80, 45);

update Product
set p_name = case
when product_id = 1 then 'Dell laptop'
when product_id = 3 then  'Samsung tablet'	
when product_id = 4 then  'Samsung Watch'	
when product_id = 5 then  'Boat Headphones'	
END
WHERE product_id in (1,3,4,5)
	
SELECT * from Product


