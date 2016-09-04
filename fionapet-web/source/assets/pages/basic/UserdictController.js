
// 数据字典管理
angular.module('fiona').controller('UserdictController', function($scope, $controller) {

    // 目录树数据加载地址
    $scope.slave = {
        name: "分类",
        server: "/api/v2/userdicts"
    };

    // 主数据加载地址
    $scope.master = {
        id: "userdict",
        name: "用户数据字典",
        foreignkey: "dictTypeId",
        server: "/api/v2/userdictdetails",
    };

    $controller('BaseSideController', {$scope: $scope}); //继承

    $scope.init();
});