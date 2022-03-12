

{{ config(materialized='table') }}

with source_data as (

    select distinct season_number, episode_number, episode_title from "FIVETRAN_DATABASE".landing_zone.shark_tank_data
)

select *
from source_data


