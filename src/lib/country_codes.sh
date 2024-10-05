get_current_country_code() {
    local country_code
    country_code="$(${deps[curl]} -s https://ipinfo.io/country)"
    echo "${country_code}"
}

check_country_code() {
    COUNTRY_CODE="$1"

    # Check validity of country code
    COUNTRY_CODE_LIST=$(${deps[cyberghostvpn]} --country-code | grep -c "$COUNTRY_CODE")
    # This is a markdown list with three items per line where the last item is the country code
    if [ ! "$COUNTRY_CODE_LIST" -eq 1 ]; then
        echo "Invalid country code: $COUNTRY_CODE" 1>&2
        exit 1
    fi
}
