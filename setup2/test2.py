import requests 

api_url = "https://login.microsoftonline.com/eed13d2e-b354-4e1f-b99f-da91c81b803f/.well-known/openid-configuration"
request_data = requests.get(api_url)

print(request_data)
print("Token endpoint:")
print(request_data["token_endpoint"])
print("\n\n")
print(request_data.json())