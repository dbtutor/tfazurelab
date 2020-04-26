### Terraform Azure Workshop with Terraform Cloud

Please make sure you have added the following environment variables in Terraform Cloud Variables sections

- ARM_SUBSCRIPTION_ID - "id" from az account show
- ARM_CLIENT_ID - Service Principal Id Or Client Id ("appId" from az ad sp create-for-rbac --name <<ServicePrincipalName>>)
- ARM_CLIENT_SECRET - Service principal key Or Client Secret ("password" from az ad sp create-for-rbac --name <<ServicePrincipalName>>)
- ARM_TENANT_ID SENSITIVE - Tenant ID ("tenant" from az ad sp create-for-rbac --name <<ServicePrincipalName>>)

![image](https://user-images.githubusercontent.com/626498/80190242-9a643780-8631-11ea-92b0-a6416e5a3912.png)

#### Environment Variables

![image](https://user-images.githubusercontent.com/626498/80189959-2033b300-8631-11ea-8f06-463b072c0c86.png)

#### Terraform Cloud Automatically Set the following values in environment variables

- export ARM_SUBSCRIPTION_ID="XXXX-d959-4415-bb65-8aec2c90ba62"
- export ARM_CLIENT_ID="XXXX-69bf-4483-a2cc-b726e1e65d87"
- export ARM_CLIENT_SECRET="93b1423d-26a9-4ee7-a4f6-XXXX"
- export ARM_TENANT_ID="72f988bf-86f1-41af-91ab-XXXX"
