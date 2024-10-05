# echo "# this file is located in 'src/connect_command.sh'"
# echo "# code for 'cgw connect' goes here"
# echo "# you can edit it freely and regenerate (it will not be overwritten)"
# inspect_args

cc=${args[countrycode]}

if [[ -z "$cc" ]]; then
    cc="$(get_current_country_code)"
fi

check_country_code "$cc"

"${deps[cyberghostvpn]}" --country-code "$cc" --connect
