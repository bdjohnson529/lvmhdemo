<Container
  id="container3"
  footerPaddingType="normal"
  headerPaddingType="normal"
  hoistFetching={true}
  marginType="normal"
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
      value="#### Transactions Admin Panel"
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
                    { label: "revenue" },
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
          datasourceInputMode="javascript"
          datasourceJS="{{chartData.data}}"
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
      primaryKeyColumnId="34316"
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
        editableOptions={{ map: { showStepper: true } }}
        format="decimal"
        formatOptions={{ map: { showSeparators: true } }}
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={31.546875}
      />
      <Column
        id="204e7"
        alignment="left"
        format="string"
        key="account_number"
        label="Account number"
        placeholder="Enter value"
        position="center"
        size={112.609375}
      />
      <Column
        id="bed6e"
        alignment="left"
        format="string"
        key="company"
        label="Company"
        placeholder="Enter value"
        position="center"
        size={142.4375}
      />
      <Column
        id="b701c"
        alignment="left"
        format="datetime"
        key="transaction_date"
        label="Transaction date"
        placeholder="Enter value"
        position="center"
        size={152.921875}
      />
      <Column
        id="bb40b"
        alignment="left"
        format="tag"
        formatOptions={{ map: { automaticColors: true } }}
        key="payment_type"
        label="Payment type"
        placeholder="Select option"
        position="center"
        size={96}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="b926b"
        alignment="left"
        format="tag"
        formatOptions={{ map: { automaticColors: true } }}
        key="plan"
        label="Plan"
        placeholder="Select option"
        position="center"
        size={90.9375}
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