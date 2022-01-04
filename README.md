# Alchemy Ethereum NFT API Example Scripts

## Setup 

1. Create an account at https://alchemy.com/
2. Set up an Ethereum project
3. Click into the dashboard for your Ethereum project app
4. Click on 'View Key' to get your RPC url and API key.

The API key is what you'll need to make requests using the NFT APIs.

For example, if your RPC url looks like this: 
`https://eth-mainnet.alchemyapi.io/v2/tr1hqKWEHZh_XMmWCZTRtvxpuR8HG6yx`

The string at the end of that url is the API key:
`tr1hqKWEHZh_XMmWCZTRtvxpuR8HG6yx`

5. Check the docs for endpoints you want to query: https://docs.alchemy.com/alchemy/enhanced-apis/nft-api

## getNFTs examples

### Get all NFTs that is owned by thatguyintech.eth

```
// Find thatguyintech.eth's address
0xF5FFF32CF83A1A614e15F25Ce55B0c0A6b5F8F2c

// Compose the request url
curl 'https://eth-mainnet.g.alchemy.com/your-api-key/v1/getNFTs/?owner=0xF5FFF32CF83A1A614e15F25Ce55B0c0A6b5F8F2c'

// Get response
{
  "ownedNfts": [
    {
      "contract": {
        "address": "0x25ed58c027921e14d86380ea2646e3a1b5c55a8b"
      },
      "id": {
        "tokenId": "0x0000000000000000000000000000000000000000000000000000000000000619"
      },
      "balance": "1"
    },

    ...

    {
      "contract": {
        "address": "0x7eef591a6cc0403b9652e98e88476fe1bf31ddeb"
      },
      "id": {
        "tokenId": "0x2a"
      },
      "balance": "2"
    },
    {
      "contract": {
        "address": "0xc36442b4a4522e871399cd717abdd847ab11fe88"
      },
      "id": {
        "tokenId": "0x0000000000000000000000000000000000000000000000000000000000016def"
      },
      "balance": "1"
    }
  ],
  "totalCount": 40
}
```

###



## 
tr1hqKWEHZh_XMmWCZTRtvxpuR8HG6yS