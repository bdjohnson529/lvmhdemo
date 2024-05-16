<Container
  id="container1"
  footerPaddingType="normal"
  headerPaddingType="normal"
  hoistFetching={true}
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  style={{ ordered: [{ border: "rgba(255, 255, 255, 1)" }] }}
>
  <Header>
    <Text
      id="containerTitle1"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="bbeb8" viewKey="View 1">
    <Statistic
      id="transactionStatistic"
      _disclosedFields={{ array: [] }}
      align="center"
      decimalPlaces="2"
      label="Total Batches"
      marginType="normal"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces="0"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{getData.data.id.length}}"
    />
    <Statistic
      id="companyStatistic"
      _disclosedFields={{ array: ["negative"] }}
      align="center"
      currency="USD"
      label="Pending Batches"
      marginType="normal"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces="0"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { negative: "danger" },
          { color: "" },
          { caption: "" },
          { positive: "" },
          { iconBackground: "" },
        ],
      }}
      value="{{new Set(getData.data.company).size}}"
    />
    <Statistic
      id="enterpriseStatistic"
      _disclosedFields={{ array: ["negative"] }}
      align="center"
      currency="USD"
      label="Processed Batches"
      marginType="normal"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces="0"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { negative: "danger" },
          { color: "" },
          { caption: "" },
          { positive: "" },
          { iconBackground: "" },
        ],
      }}
      value="{{paymentPlans.data.count['0']}}"
    />
    <PlotlyChart
      id="transactionsChart"
      chartType="line"
      data={include("../lib/transactionsChart.data.json", "string")}
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "transactions" },
                { datasource: "{{getData.data}}" },
                { chartType: "line" },
                { aggregationType: "none" },
                { color: null },
                {
                  colors: {
                    ordered: [
                      { 0: "#1E3A8A" },
                      { 1: "#3170F9" },
                      { 2: "#60A5FA" },
                      { 3: "#DBEAFE" },
                      { 4: "#FDE68A" },
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
      groupByDropdown="vineyard"
      groupByJS="{{getData.data['vineyard']}}"
      isDataTemplateDirty={true}
      isJsonTemplateDirty={true}
      layout={include("../lib/transactionsChart.layout.json", "string")}
      xAxis="{{getData.data['transaction_date']}}"
      xAxisDropdown="transaction_date"
    />
  </View>
</Container>
