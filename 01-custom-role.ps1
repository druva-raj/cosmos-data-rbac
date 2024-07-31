$resourceGroupName = "<myResourceGroup>"
$accountName = "<myCosmosAccount>"

New-AzCosmosDBSqlRoleDefinition -AccountName $accountName `
    -ResourceGroupName $resourceGroupName `
    -Type CustomRole -RoleName "Cosmos DB Data Contributor" `
    -DataAction @( `
        'Microsoft.DocumentDB/databaseAccounts/readMetadata', `
        'Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/*', `
        'Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/*') `
        -AssignableScope "/"