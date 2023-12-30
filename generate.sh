chain_name="$1"

# Check input params
if [ -z $chain_name ]; then
    echo "ERROR: No chain_name specified. Usage ./generate.sh kujira"
    exit
fi

for file in $chain_name/*; do
    cat "$file"
    echo   # Add a newline after each file
done > config.txt
echo "SUCCESS: config.toml for $chain_name has been generated."
