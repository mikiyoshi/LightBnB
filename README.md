## Set up

## psql

- `psql`
- `CREATE DATABASE lightbnb;`
- `\c lightbnb`
- `\i seeds/01_seeds.sql` data import
- `SELECT * FROM properties;`
- `SELECT * FROM property_reviews;`
- `SELECT * FROM reservations;`
- `SELECT * FROM users;`
- `DELETE FROM properties WHERE id=1;` always use WHERE `DELETE FROM properties;` は全てのデータが削除されるので使わない！！！
  - https://www.tutorialspoint.com/sql/sql-delete-query.htm
- INSERT
  - https://www.tutorialspoint.com/sql/sql-insert-query.htm
- UPDATE
  - https://www.tutorialspoint.com/sql/sql-update-query.htm

## import data

- In terminal at your LightBnB folder `wget http://bit.ly/2YNEENF -O seeds/02_seeds.sql`
- import psql `\i seeds/02_seeds.sql`
