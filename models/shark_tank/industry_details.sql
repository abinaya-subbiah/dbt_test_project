

{{ config(materialized='table') }}

with source_data as (

    select distinct industry from "FIVETRAN_DATABASE".landing_zone.shark_tank_data
)

select ROW_NUMBER() OVER (ORDER BY INDUSTRY ASC) AS ID, INDUSTRY
from source_data


