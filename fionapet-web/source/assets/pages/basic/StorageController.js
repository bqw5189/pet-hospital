
angular.module('fiona').controller('StorageController', function($scope, $controller, $http, commons) {


    // 声明要使用的下拉选项
    $scope.dropboxlist = [];

    $scope.dropdowns= {
        drugStoreSet: [{code: "false", name: "否"}, {code: "true", name: "是"}],
        sellStoreSet: [{code: "false", name: "否"}, {code: "true", name: "是"}]
    };

    /**
     * 仓库信息管理
     * ---------------------------
     * */
    $scope.storageportal= {
        id: "storage",

        name: "仓库信息管理",

        server: "/api/v2/warehouses",

        // defilters: {"code": "自动编号", "name": "经销商名称", "contractMan": "联系人", "mobilePhone": "手机", "dealerAddress": "地址"},

        callback: {
            insert: function () {

                angular.forEach(["drugStore", "sellStore"], function (name) {
                    $scope.storage[name] = $scope.dropdowns[name +  "Set"][0].code;
                });

                // $scope.dealer.code = commons.serialNumber(); // 自动编号

                // $scope.dealer.companyType = "1"; // 类型
            }
        }
    };

    $controller('BaseCRUDController', {$scope: $scope, component: $scope.storageportal}); //继承

    $scope.storageportal.list();
});