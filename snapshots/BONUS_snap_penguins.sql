/*
Diskutiere mit deinem Nachbarn, welche Tabelle du bevorzugst:
- A2_2_PENGUIN_SATELLITE
- snap_penguins
*/
{% snapshot BONUS_snap_penguins %}

{{
    config(
      target_database='ANALYTICS',
      target_schema='core_snapshots',
      unique_key='business_key',
      strategy='timestamp',
      updated_at='observation_ts'
    )
}}

select * from {{ ref('A1_2_INSERT_PENGUINS')}}

{% endsnapshot %}