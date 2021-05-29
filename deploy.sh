az login
az group create --name hs-es-v1 --location northeurope
az deployment group create \
  --resource-group hs-es-v1 \
  --template-uri https://raw.githubusercontent.com/hellosivi/azure-marketplace/master/src/mainTemplate.json \
  --parameters @parameters/secrets.password.parameters.json
