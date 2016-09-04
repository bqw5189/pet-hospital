// 员工管理
angular.module('fiona').controller('PersonnelController', function($scope, $controller) {

    // 声明要使用的下拉选项
    $scope.dropboxlist = ["会员状态", "性别"];

    $scope.dropdowns= {
        personStatusSet: [{code: "1", name: "正常"}, {code: "0", name: "禁用"}],
        isSyncEasSet: [{code: "true", name: "是"}, {code: "false", name: "否"}]
        // roleset: [{code: "1", name: "医生"}, {code: "2", name: "护士"}, {code: "3", name: "销售员"}, {code: "4", name: "系统管理员"}]
    };

    // 主数据加载地址
    $scope.master = {
        id: "personnel",

        name: "员工管理",

        server: "/api/v2/personss",

        insert: function () {

            angular.forEach($scope.dropdowns, function (value, key) {
                $scope.personnel[key.substr(0, key.length - 3)] = value[0].code;
            });

        }
    };

    // 综合搜索项
    $scope.filters = [{"code": "name","operator": "EQ", "value":""} , {"name": "name","operator": "EQ", "value":""} , {"contractMan": "name","operator": "EQ", "value":""} , {"mobilePhone": "name","operator": "EQ", "value":""} , {"dealerAddress": "name","operator": "EQ", "value":""}];

    $scope.placeholder = "请输入自动编号 / 经销商名称 / 联系人 / 手机 / 地址";

    $controller('BasePaginationController', {$scope: $scope}); //继承
});
