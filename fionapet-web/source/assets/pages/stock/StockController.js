// 库存查询
angular.module('fiona').controller('StockController', function($scope, $controller) {

    // 声明要使用的下拉选项
    $scope.dropboxlist = [];

    $scope.dropdowns= {types: [{code: "1", name: "经销商"}, {code: "2", name: "生产商"}, {code: "3", name: "经销商和生产商"}]};

    // 目录树数据加载地址
    $scope.slave = {
        name: "仓库",
        
        server: "/api/v2/warehouses"
    };

    // 主数据加载地址
    $scope.master = {
        id: "stock",

        name: "库存查询",

        foreignkey: "warehouseCode",

        server: "/api/v2/itemcounts",
    };

    $controller('BaseSideController', {$scope: $scope}); //继承

    $scope.init();
    //
    // // 综合搜索项
    // $scope.filters = [
    //     // 宠物昵称
    //     {"fieldName": "petCode","operator": "EQ", "value":""},
    //
    //     // 宠物昵称
    //     {"fieldName": "petName","operator": "EQ", "value":""},
    //
    //     // 会员编号
    //     {"fieldName": "gestCode","operator": "EQ", "value":""},
    //
    //     // 会员名称
    //     {"fieldName": "gestName","operator": "EQ", "value":""}
    // ];
    //
    // $scope.placeholder = "请输入宠物病例号/宠物昵称/会员编号/会员名称/会员电话";
    //
    // $controller('BasePaginationController', {$scope: $scope}); //继承
});