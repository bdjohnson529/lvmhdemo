<GlobalFunctions>
  <SqlQueryUnified
    id="getData"
    query={include("./lib/getData.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a884ca8b-78c8-40cb-a7b8-63f09952e703"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="paymentPlans"
    query={include("./lib/paymentPlans.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a884ca8b-78c8-40cb-a7b8-63f09952e703"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <SqlQueryUnified
    id="numberOfCustomers"
    query={include("./lib/numberOfCustomers.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a884ca8b-78c8-40cb-a7b8-63f09952e703"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowBlockPluginId={null}
  />
  <JavascriptQuery
    id="chartData"
    query={include("./lib/chartData.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
</GlobalFunctions>
