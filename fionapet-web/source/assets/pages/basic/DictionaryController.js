
// 数据字典管理
angular.module('fiona').controller('DictionaryController', function($scope, $controller) {

    // 目录树数据加载地址
    $scope.slave = {
        name: "分类",
        server: "/api/v2/dicttypes"
    };

    // 主数据加载地址
    $scope.master = {
        id: "dictionary",
        name: "数据字典",
        foreignkey: "dictTypeId",
        server: "/api/v2/dicttypedetails",
    };

    $controller('BaseSideController', {$scope: $scope}); //继承

    $scope.init();
});