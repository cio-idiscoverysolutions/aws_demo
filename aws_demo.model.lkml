connection: "aws_demo"

# include all the views
include: "*.view"

datagroup: aws_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_demo_default_datagroup

explore: random_calls {}

# - explore: addresses_master

# - explore: addresses_temp

# - explore: cdf_catalog

# - explore: cdf_convert

# - explore: cdf_stats

# - explore: data_dictionary

# - explore: log

# - explore: phone_numbers

# - explore: random_name

# - explore: src_dlvry

# - explore: src_files

# - explore: src_master
