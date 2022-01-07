echo "=== getNFTMetadata ==="
read -p "Enter your Alchemy API key: " apikey
read -p "Enter the Ethereum contractAddress you'd like to getNFTMetadata for: " contractAddress
read -p "Enter the tokenId you'd like to getNFTMetadata for: " tokenId

read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

url="https://eth-mainnet.g.alchemy.com/${apikey}/v1/getNFTMetadata?contractAddress=${contractAddress}&tokenId=${tokenId}"
echo "querying from: ${url}..."
curl "${url}"