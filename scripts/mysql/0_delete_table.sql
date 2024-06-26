SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

drop table if exists warehouse;
drop table if exists district;
drop table if exists customer;
drop table if exists history;
drop table if exists new_orders;
drop table if exists orders;
drop table if exists order_line;
drop table if exists item;
drop table if exists stock;

DROP TABLE IF EXISTS account_permission;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS customer_account;
DROP TABLE IF EXISTS customer_taxrate;
DROP TABLE IF EXISTS holding;
DROP TABLE IF EXISTS holding_history;
DROP TABLE IF EXISTS holding_summary;
DROP TABLE IF EXISTS watch_item;
DROP TABLE IF EXISTS watch_list;
DROP TABLE IF EXISTS broker;
DROP TABLE IF EXISTS cash_transaction;
DROP TABLE IF EXISTS charge;
DROP TABLE IF EXISTS commission_rate;
DROP TABLE IF EXISTS settlement;
DROP TABLE IF EXISTS trade;
DROP TABLE IF EXISTS trade_history;
DROP TABLE IF EXISTS trade_request;
DROP TABLE IF EXISTS trade_type;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS company_competitor;
DROP TABLE IF EXISTS daily_market;
DROP TABLE IF EXISTS exchange;
DROP TABLE IF EXISTS financial;
DROP TABLE IF EXISTS industry;
DROP TABLE IF EXISTS last_trade;
DROP TABLE IF EXISTS news_item;
DROP TABLE IF EXISTS news_xref;
DROP TABLE IF EXISTS sector;
DROP TABLE IF EXISTS security;
DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS status_type;
DROP TABLE IF EXISTS taxrate;
DROP TABLE IF EXISTS zip_code;
DROP TABLE IF EXISTS seq_trade_id;

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

