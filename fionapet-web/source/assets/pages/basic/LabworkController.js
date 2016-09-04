// 化验项目管理
angular.module('fiona').controller('LabworkController', function ($scope, $controller, $http, commons) {

    $scope.dropdowns= {indexTypes: [{code: "1", name: "定量"}, {code: "2", name: "定性"}]};

    // 目录树数据加载地址
    $scope.slave = {

        text: "cateName",

        parent: "parentId",

        foreignkey: "cateNo",         // id = {master.foreignkey}

        id: "labworktype",
        name: "化验项目",
        server: "/api/v2/chemicalexamcates"
    };

    // 主数据加载地址
    $scope.master = {
        id: "labwork",
        name: "化验项目管理",
        server: "/api/v2/medicchemicalexamtypes",
    };

    $scope.filters = [{"fieldName": "cheTestName", "operator": "EQ", "value": ""}];// 综合搜索项

    $scope.placeholder = "请输入参数";

    // Portal
    $scope.labworkdetailportal = {
        master: {
            id: "labworkdetail",

            name: "参考值设置",

            foreignkey: "cheTestTypdId", // 外键

            server: "/api/v2/medicchemicalexamtypedetails"
        },

        parent: {
            id: "labwork"
        }
    };

    $controller('BaseTreeController', {$scope: $scope}); //继承

    // 声明要使用的下拉选项
    $scope.loadUserdicts(["医疗类型", "化验单位"]);

    $controller('BasePortalController', {$scope: $scope, component: $scope.labworkdetailportal}); //继承

    // 主表编辑时回调
    $scope.master.update = function () {
        $scope.labworkdetailportal.search($scope.labwork.id);
    };

    $scope.sideload();
});