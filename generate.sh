chain_name="$1"

# Check input params
if [ -z $chain_name ]; then
    echo "ERROR: No chain_name specified. Usage ./generate.sh kujira"
    exit
fi

cat $chain_name/* > config.toml
echo "SUCCESS: config.toml for $chain_name has been generated."
