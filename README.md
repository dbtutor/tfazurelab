# tfazurelab
### Terraform Azure Workshop with Terraform Cloud

Please make sure you have added the following environment variables in Terraform Cloud Variables sections

ARM_SUBSCRIPTION_ID - "id" from az account show
ARM_CLIENT_ID - Service Principal Id Or Client Id ("appId" from az ad sp create-for-rbac --name <<ServicePrincipalName>>)
ARM_CLIENT_SECRET - Service principal key Or Client Secret ("password" from az ad sp create-for-rbac --name <<ServicePrincipalName>>)
ARM_TENANT_ID SENSITIVE - Tenant ID ("tenant" from az ad sp create-for-rbac --name AzureDevOpsServiceConnection)

![image](https://user-images.githubusercontent.com/626498/80189959-2033b300-8631-11ea-8f06-463b072c0c86.png)
