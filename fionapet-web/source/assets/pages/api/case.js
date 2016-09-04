
    $scope.sidebar = [
                {name: "首页",uri: "#/"}
        <% data.sidebar.each do |header| %>
            <% header.menus.each do |fun| %>
                <% fun.menus.each do |menu| %>
                ,
                {name: "<%=menu.name %>",uri: "#<%=menu.uri %>"}
                <% end %>
            <% end %>
        <% end %>
    ];

    $scope.filters = [
        {
            key: "---",
            prefix: "---",
            fields:[]
        }
      <% data.module.each do |key, value| %>
        <% dict = data["" << value << "-" << key] %>
        ,
        {
          key: "<%=key%>",
          prefix: "<%=value%>",
          fields:[
                {
                }
            <% if defined? dict.searchFields %>
              <% dict.searchFields.each do |node| %>
                ,
                {
                    flag: "<%=(node.fieldName=='---')? "" : "isfield"%>",
                    label: "<%=node.fieldName%>",
                    name: "<%=(dict.fields[node.fieldName] || "Error")%>"
                }
              <% end %>
            <% end %>
          ]
        }
      <% end %>
    ];