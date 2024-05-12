{{
    config(
        materialized='view'
    )
}}

select * from DBT_DT.DBT_SH.ORDERS