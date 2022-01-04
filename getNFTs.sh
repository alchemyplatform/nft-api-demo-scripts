read -p "Enter your Alchemy API key: " apikey
read -p "Enter the Ethereum address you'd like to getNFTs for: " owner

read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

url="https://eth-mainnet.g.alchemy.com/${apikey}/v1/getNFTs/?owner=${owner}"
echo "fetching from: ${url}..."
curl "${url}"