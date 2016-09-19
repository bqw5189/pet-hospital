
// 数据字典管理
angular.module('fiona').controller('UserdictController', function($scope, $controller) {

    /**
     * 数据字典
     * ---------------------------
     * */
    $scope.userdictportal= {

        foreign: "userdicttype", // 外键

        foreignkey: "dictTypeId",

        id: "userdict",

        name: "用户数据字典",

        server: "/api/v2/userdictdetails"
    };

    $controller('BaseCRUDController', {$scope: $scope, component: $scope.userdictportal}); //继承

    /**
     * 字典分类
     * ---------------------------
     * */
    $scope.userdicttypeportal = {
        id: "userdicttype",

        name: "分类",

        server: "/api/v2/userdicts",

        callback: {
            switched: function () {
                $scope.userdictportal.search();
            }
        }
    };

    $controller('SidePanelController', {$scope: $scope, component: $scope.userdicttypeportal}); //继承

    $scope.userdicttypeportal.init();

    //
    // // 目录树数据加载地址
    // $scope.slave = {
    //     name: "分类",
    //     server: "/api/v2/userdicts"
    // };
    //
    // // 主数据加载地址
    // $scope.master = {
    //     id: "userdict",
    //     name: "用户数据字典",
    //     foreignkey: "dictTypeId",
    //     server: "/api/v2/userdictdetails",
    // };
    //
    // $controller('BaseSideController', {$scope: $scope}); //继承
    //
    // $scope.init();
});