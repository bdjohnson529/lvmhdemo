<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Text
      id="text12"
      _defaultValue=""
      _disclosedFields={{ array: ["color"] }}
      horizontalAlign="center"
      marginType="normal"
      style={{
        ordered: [
          { color: "rgb(56, 73, 136)" },
          { background: "" },
          { links: "" },
        ],
      }}
      value="# {{retoolContext.configVars.house_name}} Sales"
      verticalAlign="center"
    />
    <Include src="./src/container1.rsx" />
    <Container
      id="container2"
      footerPaddingType="normal"
      headerPaddingType="normal"
      hoistFetching={true}
      marginType="normal"
      paddingType="normal"
      showBody={true}
      style={{ ordered: [{ border: "rgba(255, 255, 255, 1)" }] }}
    >
      <Header>
        <Text
          id="containerTitle2"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="bbeb8" viewKey="View 1">
        <Text
          id="text4"
          _defaultValue=""
          _disclosedFields={{ array: ["color", "links"] }}
          marginType="normal"
          style={{
            ordered: [
              { color: "rgb(56, 73, 136)" },
              { background: "" },
              { links: "primary" },
            ],
          }}
          value="#### Plan Distribution"
          verticalAlign="center"
        />
        <Divider
          id="divider3"
          _disclosedFields={{ array: [] }}
          marginType="normal"
        />
        <PlotlyChart
          id="planChart"
          chartType="pie"
          data={include("./lib/planChart.data.json", "string")}
          datasourceInputMode="javascript"
          isJsonTemplateDirty={true}
          layout={include("./lib/planChart.layout.json", "string")}
        />
      </View>
    </Container>
    <Include src="./src/container3.rsx" />
  </Frame>
</App>
