# azure-resource-graph-helper
A simple tool to ease the use of Azure Resource Graph query from Visual Studio Code

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
- Put your Azure Subscription GUID into the `azgraph_subguid.txt` file
- Set the query output format into the `azgraph_output.txt` file according to the supported format <https://docs.microsoft.com/en-us/cli/azure/format-output-azure-cli?view=azure-cli-latest>
- Write your request into a new created (and saved) file
- Run the "Azure Resource Graph query" task (CTRL + SHIFT + B) or from the palette
- See the output result within the integrated task output
- If you want to run the query by hitting F10 from within the file (which is really useful in fact), edit your keyboard mapping definition (keybindings.json) and add the following snippet :
```
{
    "key": "f10",
    "command": "workbench.action.tasks.build"
}
```

## References
- Azure Resource Graph Documentation : <https://docs.microsoft.com/en-us/azure/governance/resource-graph/>
- Kusto Query Language : <https://docs.microsoft.com/en-us/azure/kusto/query/index>
- Azure ARM Template Reference : <https://docs.microsoft.com/en-us/azure/templates/>