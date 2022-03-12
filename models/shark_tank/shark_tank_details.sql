

{{ config(materialized='table') }}

with source_data as (
    SELECT * FROM "FIVETRAN_DATABASE".landing_zone.shark_tank_data
)

select *
from source_data


