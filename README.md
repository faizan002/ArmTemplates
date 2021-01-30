# Description:
## Purpose:
Working with software developers, they sometimed ask for access to a VM used in build system because they want to exclude even the minor possibilities of environment differences.

Sometimes, it is enough to give a docker image (if applicable) and they are happy. In some scenerios, I feel like giving them the opportunity to create  replica of a VM in question. Ideally, they should be able to create it with a single click and be able to decommission it whenever done, to save money.

This project can be used as a blue print of this concept.

## What is in it:
You can create a customized image using hashicrop packer. Use this image as source to spin up resources in your build environment (like agents).

Use (in this case azure being the cloud used) ARM templates to spin up a VM based on above image but with your credentials. 

Decomission the VM, using azure command line as described later.

# Pre Requisite:
* You need Azure Subscription.
* It is assumed that you are logged into azure portal. 
* [az login](https://docs.microsoft.com/en-us/cli/azure/authenticate-azure-cli)


## Create a packer image
Update the provisioning or anything else in the code and run the script "start.sh" to create a new packer image.

## Usage
Run the launcher script

```bash
create_packer_image.sh RESOURCEGROUP_NAME
```
It creates the resourceGroup if it is not already there.



