" Vim syntax file
" Language:		        BigQuery SQL Dialect Syntax
" Maintainer:		    Jesse Gillies <jessegillies@gmail.com>
" URL:			        https://github.com/jgillies/vim-bigquery-syntax
" Release Coordinator:	Jesse Gillies <jessegillies@gmail.com>

if exists('b:current_syntax')
  finish
endif

syntax case ignore

" string functions
syntax match sqlFunction "\<\(ascii\|byte_length\|char_length\|character_length\|chr\|code_points_to_bytes\)(\@="
syntax match sqlFunction "\<\(code_points_to_string\|concat\|contans_substr\|ends_with\|format\)(\@="
syntax match sqlFunction "\<\(from_base32\|from_base64\|from_hex\|initcap\|instr\|left\|length\)(\@="
syntax match sqlFunction "\<\(lpad\|lower\|ltrim\|normalize\|normalize_and_casefold\|octet_length\)(\@="
syntax match sqlFunction "\<\(regexp_contains\|regexp_extract\|regexp_extract_all\|regexp_instr\)(\@="
syntax match sqlFunction "\<\(regexp_replace\|replace\|repeat\|reverse\|right\|rpad\|rtrim\)(\@="
syntax match sqlFunction "\<\(safe_convert_bytes_to_string\|soundex\|split\|starts_with\|strpos\)(\@="
syntax match sqlFunction "\<\(substr\|substring\|to_base32\|to_base64\|to_code_points\|to_hex\|translate\)(\@="
syntax match sqlFunction "\<\(trim\|unicode\|upper\)(\@="

" json functions
syntax match sqlFunction "\<\(json_extract\|json_query\|json_extract_scalar\|json_value\)(\@="
syntax match sqlFunction "\<\(json_extract_array\|json_query_array\|json_extract_string_array\)(\@="
syntax match sqlFunction "\<\(json_value_array\|parse_json\|to_json\|to_json_string\|string\)(\@="
syntax match sqlFunction "\<\(bool\|int64\|float64\|json_type\)(\@="

" array functions
syntax match sqlFunction "\<\(array\|array_concat\|array_length\|array_to_string\|generate_array\)(\@="
syntax match sqlFunction "\<\(generate_date_array\|generat_timestamp_array\|array_revers\)(\@="

" date functions
syntax match sqlFunction "\<\(current_date\|extract\|date\|date_add\|date_sub\|date_diff\|date_trunc\)(\@="
syntax match sqlFunction "\<\(date_from_unix_date\|format_date\|last_day\|parse_date\|unix_date\)(\@="

" datetime functions
syntax match sqlFunction "\<\(current_datetime\|extract\|datetime\|datetime_add\|datetime_sub\|datetime_diff\|datetime_trunc\)(\@="
syntax match sqlFunction "\<\(format_datetime\|last_day\|parse_datetime\)(\@="

" time functions
syntax match sqlFunction "\<\(current_time\|time\|time_add\|time_sub\|time_diff\|time_trunc\|format_time\|parse_time\)(\@="

" timestamp functions
syntax match sqlFunction "\<\(current_timestamp\|extract\|timestamp\|timestamp_add\|timestamp_sub\|timestamp_diff\|timestamp_trunc\)(\@="
syntax match sqlFunction "\<\(format_timestamp\|parse_timestamp\|timestamp_seconds\|timestamp_millis\|timestamp_micros \)(\@="
syntax match sqlFunction "\<\(unix_seconds\|unix_millis\|unix_micros\)(\@="

" interval functions
syntax match sqlFunction "\<\(make_interval\|extract\|justify_days\|justify_hours\|justify_interval\)(\@="

" intervals 
syntax match sqlIntervals "\<\(month\|week\|day\|year\|minute\|hour\|second\))\@="

" keywords
syntax keyword sqlKeywords interval

highlight link sqlFunction Function
highlight link sqlIntervals Identifier
highlight link sqlKeywords Keyword

runtime! syntax/sql.vim

let b:current_syntax = 'bqsql'
