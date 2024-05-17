<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./header.rsx" />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    style={{ ordered: [] }}
    type="main"
  >
    <Text
      id="text12"
      _defaultValue=""
      _disclosedFields={{ array: ["color"] }}
      marginType="normal"
      style={{
        ordered: [{ color: "primary" }, { background: "" }, { links: "" }],
      }}
      value="# {{retoolContext.configVars.house_name}} Production Dashboard"
      verticalAlign="center"
    />
    <TextInput id="textInput1" labelPosition="top" placeholder="Enter value" />
    <Text
      id="text1"
      _defaultValue=""
      _disclosedFields={{ array: ["color"] }}
      marginType="normal"
      style={{
        ordered: [{ color: "primary" }, { background: "" }, { links: "" }],
      }}
      value="### Production Statistics"
      verticalAlign="center"
    />
    <Include src="./src/container1.rsx" />
    <PlotlyChart
      id="planChart"
      chartType="pie"
      data={include("./lib/planChart.data.json", "string")}
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "id" },
                { datasource: "{{getData.data['id']}}" },
                { chartType: "pie" },
                { aggregationType: "sum" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 11: "#A7F3D0" },
                      { 22: "#CD6F00" },
                      { 33: "#3170F9" },
                      { 44: "#EECFF3" },
                      { 12: "#EECFF3" },
                      { 23: "#92400E" },
                      { 34: "#60A5FA" },
                      { 45: "#CF94D8" },
                      { 13: "#CF94D8" },
                      { 24: "#064E3B" },
                      { 35: "#DBEAFE" },
                      { 46: "#AE57BB" },
                      { 14: "#AE57BB" },
                      { 25: "#059669" },
                      { 36: "#FDE68A" },
                      { 47: "#6E3276" },
                      { 15: "#6E3276" },
                      { 26: "#34D399" },
                      { 37: "#F59E0B" },
                      { 48: "#1E3A8A" },
                      { 16: "#1E3A8A" },
                      { 27: "#A7F3D0" },
                      { 38: "#CD6F00" },
                      { 17: "#3170F9" },
                      { 28: "#EECFF3" },
                      { 39: "#92400E" },
                      { 18: "#60A5FA" },
                      { 29: "#CF94D8" },
                      { 19: "#DBEAFE" },
                      { 0: "#1E3A8A" },
                      { 1: "#3170F9" },
                      { 2: "#60A5FA" },
                      { 3: "#DBEAFE" },
                      { 4: "#FDE68A" },
                      { 5: "#F59E0B" },
                      { 6: "#CD6F00" },
                      { 7: "#92400E" },
                      { 8: "#064E3B" },
                      { 9: "#059669" },
                      { 40: "#064E3B" },
                      { 30: "#AE57BB" },
                      { 41: "#059669" },
                      { 20: "#FDE68A" },
                      { 31: "#6E3276" },
                      { 42: "#34D399" },
                      { 10: "#34D399" },
                      { 21: "#F59E0B" },
                      { 32: "#1E3A8A" },
                      { 43: "#A7F3D0" },
                    ],
                  },
                },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceJS="{{getData.data}}"
      datasourcePluginId="getData"
      datasourcePluginType="plugin"
      isDataTemplateDirty={true}
      isJsonTemplateDirty={true}
      layout={include("./lib/planChart.layout.json", "string")}
      xAxis="{{getData.data['vineyard']}}"
      xAxisDropdown="vineyard"
    />
    <Text
      id="text13"
      _defaultValue=""
      _disclosedFields={{ array: ["color"] }}
      marginType="normal"
      style={{
        ordered: [{ color: "primary" }, { background: "" }, { links: "" }],
      }}
      value="### Batch Production"
      verticalAlign="center"
    />
    <Table
      id="companiesTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getData.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ border: "rgb(204, 204, 204)", borderRadius: "8px" }}
      templatePageSize={20}
    >
      <Column
        id="34316"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={31.109375}
      />
      <Column
        id="b701c"
        alignment="left"
        format="datetime"
        key="transaction_date"
        label="Transaction date"
        placeholder="Enter value"
        position="center"
        size={150.859375}
      />
      <Column
        id="fe79d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="vineyard"
        label="Vineyard"
        placeholder="Select option"
        position="center"
        size={167.734375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3fe2a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="fermentation_method"
        label="Fermentation method"
        placeholder="Select option"
        position="center"
        size={143.375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f7547"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="wine_type"
        label="Wine type"
        placeholder="Select option"
        position="center"
        size={75.265625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="c6896"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="batch_number"
        label="Batch number"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="chartData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </Frame>
</App>
