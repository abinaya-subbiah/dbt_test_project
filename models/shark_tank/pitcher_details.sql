
-- Use the `ref` function to select from other models

select *
from {{ ref('shark_tank_details') }}
where pitchers_average_age = 'MIDDLE'
