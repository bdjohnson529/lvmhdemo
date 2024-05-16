<GlobalFunctions>
  <SqlQueryUnified
    id="getData"
    query={include("./lib/getData.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="bf6b1297-5980-4688-a680-cad3a549287d"
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
    resourceName="bf6b1297-5980-4688-a680-cad3a549287d"
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
    resourceName="bf6b1297-5980-4688-a680-cad3a549287d"
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
  <Function id="image_url" funcBody={include("./lib/image_url.js", "string")} />
  <Function id="logo_url" funcBody={include("./lib/logo_url.js", "string")} />
</GlobalFunctions>
