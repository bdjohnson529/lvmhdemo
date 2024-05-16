<Container
  id="container3"
  footerPaddingType="normal"
  headerPaddingType="normal"
  hoistFetching={true}
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ border: "canvas" }] }}
>
  <Header>
    <Text
      id="containerTitle3"
      _disclosedFields={{ array: ["color"] }}
      marginType="normal"
      style={{ ordered: [{ color: "rgb(56, 73, 136)" }] }}
      value="#### Batch Production"
      verticalAlign="center"
    />
  </Header>
  <View id="9da2e" viewKey="View 1">
    <TextInput
      id="companySearch"
      _defaultValue=""
      _disclosedFields={{ array: ["iconBefore"] }}
      iconBefore="bold/interface-search"
      label=""
      labelPosition="top"
      marginType="normal"
      placeholder="Search"
    />
    <DateRange
      id="dateRange1"
      _disclosedFields={{ array: [] }}
      dateFormat="MMM d, yyyy"
      endPlaceholder="End date"
      hideLabel={true}
      iconBefore="bold/interface-calendar-remove"
      label=""
      labelAlign="right"
      marginType="normal"
      startPlaceholder="Start date"
      textBetween="-"
      value={{
        ordered: [
          { start: "{{moment().subtract(1, 'year')}}" },
          { end: "{{ moment() }}" },
        ],
      }}
    />
    <Container
      id="container4"
      footerPaddingType="normal"
      headerPaddingType="normal"
      heightType="fixed"
      hidden=""
      hoistFetching={true}
      marginType="normal"
      overflowType="hidden"
      paddingType="normal"
      showBody={true}
      style={{ ordered: [{ background: "" }, { borderRadius: "8px\n" }] }}
    >
      <Header>
        <Text
          id="containerTitle4"
          _disclosedFields={{ array: [] }}
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="b0578" viewKey="View 1">
        <Text
          id="text11"
          _defaultValue=""
          _disclosedFields={{ array: ["color"] }}
          heightType="fixed"
          marginType="normal"
          style={{ ordered: [{ color: "rgb(56, 73, 136)" }] }}
          value="#### {{companiesTable.selectedRow.company}}"
          verticalAlign="center"
        />
        <Divider
          id="divider4"
          _disclosedFields={{ array: [] }}
          marginType="normal"
        />
        <PlotlyChart
          id="chart1"
          dataseries={{
            ordered: [
              {
                0: {
                  ordered: [
                    { label: "Liters" },
                    { datasource: "{{chartData.data['revenue']}}" },
                    { chartType: "bar" },
                    { aggregationType: "sum" },
                    { color: "#1E3A8A" },
                    { colors: { ordered: [] } },
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
          datasourceJS="{{chartData.data}}"
          datasourcePluginId="chartData"
          datasourcePluginType="plugin"
          isDataTemplateDirty={true}
          skipDatasourceUpdate={true}
          xAxis="{{chartData.data.month}}"
          xAxisDropdown="month"
        />
      </View>
    </Container>
    <Table
      id="companiesTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getData.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      searchTerm="{{companySearch.value}}"
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
        size={188}
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
        size={100}
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
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
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
  </View>
</Container>
