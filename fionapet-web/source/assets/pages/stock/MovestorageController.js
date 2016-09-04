
// 移库记录
angular.module('fiona').controller('MovestorageController', function($scope, $controller) {

    // 声明要使用的下拉选项
    $scope.dropboxlist = [];

    $scope.dropdowns= {types: [{code: "1", name: "经销商"}, {code: "2", name: "生产商"}, {code: "3", name: "经销商和生产商"}]};

    // 主数据加载地址
    $scope.master = {
        id: "movestorage",

        name: "移库记录",

        server: "/api/v2/warehousemoverecords"
    };

    // 综合搜索项
    $scope.filters = [
        // 宠物昵称
        {"fieldName": "petCode","operator": "EQ", "value":""},

        // 宠物昵称
        {"fieldName": "petName","operator": "EQ", "value":""},

        // 会员编号
        {"fieldName": "gestCode","operator": "EQ", "value":""},

        // 会员名称
        {"fieldName": "gestName","operator": "EQ", "value":""}
    ];

    $scope.placeholder = "请输入宠物病例号/宠物昵称/会员编号/会员名称/会员电话";

    $controller('BasePaginationController', {$scope: $scope}); //继承

    $scope.movestoragedetailsportal = {
        master: {
            id: "movestoragedetails",

            name: "移库明细",

            foreignkey: "inWarehouseCode", // 外键

            server: "/api/v2/warehouseinrecorddetails"
        }
    };

    $controller('BasePortalController', {$scope: $scope, component: $scope.movestoragedetailsportal }); //继承

    // 选择商品
    $scope.productportal = {
        slave: {
            text: "cateName",

            parent: "parentId",

            foreignkey: "cateNo",         // id = {master.foreignkey}

            id: "producttype",

            name: "化验项目",

            server: "/api/v2/itemcates"
        },

        // 主数据加载地址
        master: {
            id: "product",

            name: "商品&服务",

            server: "/api/v2/itemtypes",

            submit: function (selected) {
                $scope.movestoragedetailss = selected;
            }
        },

        // 综合搜索项
        filters : [{"fieldName": "itemCode","operator": "EQ", "value":""} , {"fieldName": "itemName","operator": "EQ", "value":""}],

        placeholder : "请输入宠物病例号/宠物昵称/会员编号/会员名称/会员电话"

    };

    $controller('TreeSidePortalController', {$scope: $scope, component: $scope.productportal}); //继承

    $scope.productportal.treeload();
    $scope.productportal.search();

    // Packing.treebind($scope.productpack, $http, commons);

    // 主表编辑时回调
    $scope.master.update = function () {

        $scope.movestoragedetails.search($scope.instorage.id);
    };
});
