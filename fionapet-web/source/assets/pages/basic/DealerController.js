
// 经销商与生产商
angular.module('fiona').controller('DealerController', function($scope, $controller, commons) {

    // 声明要使用的下拉选项
    $scope.dropboxlist = [];

    $scope.dropdowns= {types: [{code: "1", name: "经销商"}, {code: "2", name: "生产商"}, {code: "3", name: "经销商和生产商"}]};

    /**
     * 经销商与生产商
     * ---------------------------
     * */
    $scope.dealerportal= {

        id: "dealer",

        name: "经销商与生产商",

        server: "/api/v2/dealers",

        defilters: {"code": "自动编号", "name": "经销商名称", "contractMan": "联系人", "mobilePhone": "手机", "dealerAddress": "地址"},

        callback: {
            insert: function () {

                $scope.dealer.code = commons.serialNumber(); // 自动编号

                $scope.dealer.companyType = "1"; // 类型
            }
        }
    };

    
    $controller('BaseCRUDController', {$scope: $scope, component: $scope.dealerportal}); //继承

    $scope.dealerportal.filter();

    //
    // // 主数据加载地址
    // $scope.master = {
    //     id: "dealer",
    //
    //     name: "商品&服务",
    //
    //     server: "/api/v2/dealers",
    //
    //     insert: function () {
    //         $scope.dealer.companyType = "1";
    //     }
    // };
    //
    // // 综合搜索项
    // $scope.filters = [{"code": "name","operator": "EQ", "value":""} , {"name": "name","operator": "EQ", "value":""} , {"contractMan": "name","operator": "EQ", "value":""} , {"mobilePhone": "name","operator": "EQ", "value":""} , {"dealerAddress": "name","operator": "EQ", "value":""}];
    //
    // $scope.placeholder = "请输入自动编号 / 经销商名称 / 联系人 / 手机 / 地址";
    //
    // $controller('BasePaginationController', {$scope: $scope}); //继承
});