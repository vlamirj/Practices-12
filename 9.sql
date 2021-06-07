


#A
select avg_price_sql() as average_of_all_products;

#B
select title, price from products where price > avg_price_sql();

#C
select title, price from products where price > avg_price_sql()*0.2;

#D
select title, price from products where price between avg_price_sql()*0.8 and avg_price_sql()*1.2; --price = avg_price_sql()*0.2 or