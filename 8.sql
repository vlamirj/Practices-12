# SQL
CREATE or replace FUNCTION avg_price_sql() RETURNS numeric AS
$$
    SELECT avg(price) FROM products;
$$ LANGUAGE SQL;

#selectSQL
select * from avg_price_sql();


#PSQL
CREATE or replace FUNCTION avg_price_plpgsql() RETURNS numeric AS
$$
begin
    return(SELECT avg(price) FROM products);

end;
$$ language 'plpgsql';

#slect PSQL
select * from avg_price_plpgsql();


#Function psql
CREATE or replace FUNCTION avg_price_noavg() RETURNS numeric AS
$$
    declare average products.price%type;
begin
    SELECT sum(price)/count(*) into average FROM products;
    return average;

end;
$$ language 'plpgsql';

#select PSQL
select * from avg_price_noavg();