
// 会员等级管理
angular.module('fiona').controller('GradeController', function($scope, $controller, $http, commons) {

    // 主数据加载地址
    $scope.master = {
        id: "grade",

        name: "会员等级管理",

        server: "/api/v2/gestlevels",
    };

    $scope.placeholder = "请输入查询内容";
    
    $controller('BasePageFilterController', {$scope: $scope}); //继承

    $scope.search();
});