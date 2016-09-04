
// 仓库信息管理
angular.module('fiona').controller('StorageController', function($scope, $controller, $http, commons) {
    // 声明要使用的下拉选项
    $scope.dropboxlist = [];

    $scope.dropdowns= {
        drugStores: [{code: "false", name: "否"}, {code: "true", name: "是"}],
        sellStores: [{code: "false", name: "否"}, {code: "true", name: "是"}]
    };

    // 主数据加载地址
    $scope.master = {
        id: "storage",

        name: "仓库信息管理",

        server: "/api/v2/warehouses",

        insert: function () {
            $scope.storage.drugStore = "false";
            $scope.storage.sellStore = "false";
        }
    };

    // 综合搜索项
    $scope.filters = [{"code": "name","operator": "EQ", "value":""} , {"name": "name","operator": "EQ", "value":""} , {"contractMan": "name","operator": "EQ", "value":""} , {"mobilePhone": "name","operator": "EQ", "value":""} , {"dealerAddress": "name","operator": "EQ", "value":""}];

    $scope.placeholder = "请输入自动编号 / 经销商名称 / 联系人 / 手机 / 地址";

    $controller('BasePaginationController', {$scope: $scope}); //继承
});