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

5. Clone this repo with `git clone git@github.com:alchemyplatform/nft-api-scripts.git`

## getNFTs

The `getNFTs.sh` script makes a simple query to fetch the first 100 NFTs for a given wallet address.

If you run into permissions issues, you may need to `chmod 755 getNFTs.sh`.

```
nft-api-scripts % ./getNFT.sh
> Enter your Alchemy API key: tr1hqKWEHZh_XMmWCZTRtvxpuR8HG6yx
> Enter the Ethereum address you'd like to getNFTs for: 0xF5FFF32CF83A1A614e15F25Ce55B0c0A6b5F8F2c
> Continue? (Y/N): Y
> fetching from: https://eth-mainnet.g.alchemy.com/tr1hqKWEHZh_XMmWCZTRtvxpuR8HG6y/v1/getNFTs/?owner=0xF5FFF32CF83A1A614e15F25Ce55B0c0A6b5F8F2c...

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

## getNFTMetadata.sh

The `getNFTMetadata.sh` script returns the metadata associated with a particular NFT. Metadata may include things like token type (721 vs 1155), image uri, attributes/traits, etc.

If you run into permissions issues, you may need to `chmod 755 getNFTs.sh`.

```
nft-api-scripts % ./getNFTMetadata.sh
=== getNFTMetadata ===
Enter your Alchemy API key: tr1hqKWEHZh_XMmWCZTRtvxpuR8HG6yx
Enter the Ethereum contractAddress you'd like to getNFTMetadata for: 0x25ed58c027921e14d86380ea2646e3a1b5c55a8b
Enter the tokenId you'd like to getNFTMetadata for: 0x0000000000000000000000000000000000000000000000000000000000000619
Continue? (Y/N): Y
querying from: https://eth-mainnet.g.alchemy.com/tr1hqKWEHZh_XMmWCZTRtvxpuR8HG6yS/v1/getNFTMetadata?contractAddress=0x25ed58c027921e14d86380ea2646e3a1b5c55a8b&tokenId=0x0000000000000000000000000000000000000000000000000000000000000619...
{"contract":{"address":"0x25ed58c027921e14d86380ea2646e3a1b5c55a8b"},"id":{"tokenId":"0x0000000000000000000000000000000000000000000000000000000000000619","tokenMetadata":{"tokenType":"ERC721"}},"title":"","description":"","externalDomainViewUrl":"data:application/json;base64,eyJuYW1lIjogIkRldiAjMTU2MSIsICJkZXNjcmlwdGlvbiI6ICJEZXZlbG9wZXJzIGFyb3VuZCB0aGUgd29ybGQgYXJlIHRpcmVkIG9mIHdvcmtpbmcgYW5kIGNvbnRyaWJ1dGluZyB0aGVpciB0aW1lIGFuZCBlZmZvcnQgdG8gZW5yaWNoIHRoZSB0b3AgMSUuIEpvaW4gdGhlIG1vdmVtZW50IHRoYXQgaXMgY29tbXVuaXR5IG93bmVkLCBidWlsZGluZyB0aGUgZnV0dXJlIGZyb20gdGhlIGJvdHRvbSB1cC4iLCAiaW1hZ2UiOiAiZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpSUhCeVpYTmxjblpsUVhOd1pXTjBVbUYwYVc4OUluaE5hVzVaVFdsdUlHMWxaWFFpSUhacFpYZENiM2c5SWpBZ01DQXpOVEFnTXpVd0lqNDhjM1I1YkdVK0xtSmhjMlVnZXlCbWFXeHNPaUJpYkdGamF6c2dabTl1ZEMxbVlXMXBiSGs2SUhObGNtbG1PeUJtYjI1MExYTnBlbVU2SURFMGNIZzdJSDA4TDNOMGVXeGxQanh5WldOMElIZHBaSFJvUFNJeE1EQWxJaUJvWldsbmFIUTlJakV3TUNVaUlHWnBiR3c5SW5kb2FYUmxJaUF2UGp4MFpYaDBJSGc5SWpFd0lpQjVQU0l5TUNJZ1kyeGhjM005SW1KaGMyVWlQa2ROTFU1QlFTQkpMMDg4TDNSbGVIUStQSFJsZUhRZ2VEMGlNVEFpSUhrOUlqUXdJaUJqYkdGemN6MGlZbUZ6WlNJK1FuSmhZMnRsZEhNOEwzUmxlSFErUEhSbGVIUWdlRDBpTVRBaUlIazlJall3SWlCamJHRnpjejBpWW1GelpTSStVR2x1YXlCSWIyOWthV1U4TDNSbGVIUStQSFJsZUhRZ2VEMGlNVEFpSUhrOUlqZ3dJaUJqYkdGemN6MGlZbUZ6WlNJK1UzZHBablE4TDNSbGVIUStQSFJsZUhRZ2VEMGlNVEFpSUhrOUlqRXdNQ0lnWTJ4aGMzTTlJbUpoYzJVaVBsZG9hWFJsSUVoaGREd3ZkR1Y0ZEQ0OGRHVjRkQ0I0UFNJeE1DSWdlVDBpTVRJd0lpQmpiR0Z6Y3owaVltRnpaU0krVTJobGJucG9aVzQ4TDNSbGVIUStQSFJsZUhRZ2VEMGlNVEFpSUhrOUlqRTBNQ0lnWTJ4aGMzTTlJbUpoYzJVaVBrRmljM1J5WVdOMFBDOTBaWGgwUGp4MFpYaDBJSGc5SWpFd0lpQjVQU0l4TmpBaUlHTnNZWE56UFNKaVlYTmxJajVEYjNOdGFXTThMM1JsZUhRK1BDOXpkbWMrIn0=","media":{"uri":""},"alternateMedia":[{"uri":""}],"metadata":{"metadata":[],"attributes":[]}}
```