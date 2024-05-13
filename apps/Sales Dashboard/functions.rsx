<GlobalFunctions>
  <SqlQueryUnified
    id="getData"
    query={include("./lib/getData.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="c5afb5c4-9a2c-432a-9b92-c45e0524cdef"
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
    resourceName="c5afb5c4-9a2c-432a-9b92-c45e0524cdef"
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
    resourceName="c5afb5c4-9a2c-432a-9b92-c45e0524cdef"
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
