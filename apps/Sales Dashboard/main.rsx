<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
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
      horizontalAlign="center"
      marginType="normal"
      style={{
        ordered: [
          { color: "rgb(56, 73, 136)" },
          { background: "" },
          { links: "" },
        ],
      }}
      value="# {{retoolContext.configVars.house_name}} Production"
      verticalAlign="center"
    />
    <Image
      id="image2"
      horizontalAlign="center"
      retoolStorageDynamicInput={true}
      retoolStorageFileId="{{ logo_url.value }}"
      src="https://picsum.photos/id/1025/800/600"
      srcType="retoolStorageFileId"
    />
    <Image
      id="image1"
      horizontalAlign="center"
      retoolStorageDynamicInput={true}
      retoolStorageFileId="{{ image_url.value }}"
      src="https://picsum.photos/id/1025/800/600"
      srcType="retoolStorageFileId"
    />
    <Include src="./src/container1.rsx" />
    <Container
      id="container2"
      footerPaddingType="normal"
      headerPaddingType="normal"
      heightType="fixed"
      hoistFetching={true}
      marginType="normal"
      overflowType="hidden"
      padding="12px"
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
          value="#### Vineyard Distribution"
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
          layout={include("./lib/planChart.layout.json", "string")}
          xAxis="{{getData.data['vineyard']}}"
          xAxisDropdown="vineyard"
        />
      </View>
    </Container>
    <Include src="./src/container3.rsx" />
  </Frame>
</App>
