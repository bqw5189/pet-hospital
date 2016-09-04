
// 处方模板管理
angular.module('fiona').controller('PrescriptionController', function ($scope, $controller, $http, commons) {

    // 目录树数据加载地址
    $scope.slave = {

        text: "cateName",

        parent: "parentId",

        foreignkey: "cateNo",         // id = {master.foreignkey}

        id: "prescriptiontype",

        name: "模板类型",

        server: "/api/v2/prescriptiontemplatetypes"
    };

    // 主数据加载地址
    $scope.master = {
        id: "prescription",

        name: "处方模板管理",

        server: "/api/v2/prescriptiontemplates"
    };

    $scope.filters = [{"fieldName": "itemCode","operator": "EQ", "value":""} , {"fieldName": "itemName","operator": "EQ", "value":""} ];// 综合搜索项 // 品种

    $scope.placeholder = "请输入品种";

    $controller('BaseTreeController', {$scope: $scope}); //继承

    $scope.sideload();
});
