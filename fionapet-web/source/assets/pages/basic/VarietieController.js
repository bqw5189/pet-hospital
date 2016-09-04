
// 宠物品种管理
angular.module('fiona').controller('VarietieController', function($scope, $controller) {


    // 目录树数据加载地址
    $scope.slave = {
        id: "varietietype",
        name: "分类",
        server: "/api/v2/petraces"
    };

    // 主数据加载地址
    $scope.master = {
        id: "varietie",
        name: "数据字典",
        foreignobj: "petRace",
        server: "/api/v2/varieties"
    };

    $controller('BaseSideController', {$scope: $scope}); //继承

    $scope.init();
});