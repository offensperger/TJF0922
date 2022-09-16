/* 
Hier gibt es gerade nicht viel zu tun.
Diskutiere mit deinem Banknachbarn, ob du hier select * machen würdest oder die Spaltennamen explizit ausschreibst
*/
SELECT
    {{dbt_utils.surrogate_key(['isl','id'])}} as business_key,
    *
from {{ ref('src_assstnts')}}