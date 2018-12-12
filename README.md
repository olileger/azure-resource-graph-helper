# azure-resource-graph-helper
A simple tool to ease the use of Azure Resource Graph requests from Visual Studio Code

## Pre Requisites
- Running Windows 10
- Visual Studio Code : <https://code.visualstudio.com/>
- Azure CLI 2.0 should be installed on your computer <https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest>
- The Azure Resource Graph extension for Azure CLI 2.0 should be installed <https://docs.microsoft.com/en-us/azure/governance/resource-graph/first-query-azurecli>
- You shoud be authenticated to Azure through Azure CLI 2.0 by running `az login`
- You should have access to an Azure Subscription

## Installation
-  `git clone`
- Open the directory from Visual Studio Code
- Write your request into azgraph_query file
- run the azgraph.cmd file (the better is to map a keyboard key to do that)
- see the output result within the integrated terminal

## References
- Azure Resource Graph Documentation : <https://docs.microsoft.com/en-us/azure/governance/resource-graph/>
- Kusto Query Language : <https://docs.microsoft.com/en-us/azure/kusto/query/index>
- Azure ARM Template Reference : <https://docs.microsoft.com/en-us/azure/templates/>