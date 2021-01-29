# Description:
Automate the creation of a custom image and create VM from the custome image.
# Pre Requisite:
* You need Azure Subscription.
* It is assumed that you are logged into azure portal. 
* [az login](https://docs.microsoft.com/en-us/cli/azure/authenticate-azure-cli)
* In order to provision a VM, I have used private IP address. A Virtual network name and a subnet name is desired to pass as parameter in the ARM parameters file.

## Usage
Run the launcher script

```bash
start.sh RESOURCEGROUP_NAME
```


