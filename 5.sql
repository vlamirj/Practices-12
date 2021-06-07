#sql
CREATE FUNCTION increase_price_sql(prod products)
RETURNS numeric AS $$
update products set price=price + 0.05 * price where prod.prod_id = prod_id returning price;
$$ language sql;

#select SQL
select common_prod_id, increase_price_sql(products.*) from products where title='ACADEMY ADAPTATION';

#psql
CREATE FUNCTION increase_price_plpgsql(prod products) RETURNS numeric AS $$
begin
    update products set price=price + 0.05 * price where prod.prod_id = prod_id;
    return (select price from products where prod.prod_id = prod_id);
end; $$ language plpgsql;

#select SQL
select common_prod_id, increase_price_plpgsql(products.*) from products where title='ACADEMY ADAPTATION';

