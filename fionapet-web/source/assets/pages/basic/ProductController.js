// 商品与服务管理
angular.module('fiona').controller('ProductController', function ($scope, $controller, $http, commons) {

    /**
     * 商品&服务分类
     * ---------------------------
     * */
    $scope.producttypeportal= {

        text: "cateName", // 树标签-字段名

        parent: "parentId", // 父引用-字段名

        foreign: "producttype",

        foreignkey: "cateNo",

        id: "producttype",
        
        name: "商品&服务分类",

        server: "/api/v2/itemcates",

        callback: {
            switched: function () {
                // 加载
                $scope.productportal.search();
            },
            insert: function () {
                // 加载
                if (!$scope.producttypeportal.selectedId) {
                    $scope.producttype.parentId = "#";
                }
                else {
                    $scope.producttype.parentId = $scope.producttypeportal.selectedId;
                }
            },
            submit: function () {
                $scope.producttypeportal.search();
                $scope.producttypeportal.treeConfig.version++;
            },
            delete: function () {
                $scope.producttypeportal.search();
                $scope.producttypeportal.treeConfig.version++;
            }
        }
    };

    $controller('TreeSidePanelController', {$scope: $scope, component: $scope.producttypeportal}); //继承

    /**
     * 商品&服务
     * ---------------------------
     * */
    $scope.productportal= {

        foreign: "producttype", // 外键

        foreignkey: "cateNo",

        id: "product",

        name: "商品&服务",

        server: "/api/v2/itemtypes",

        defilters: {"itemCode": "商品编号", "itemName": "商品名称"}
    };

    $controller('BaseCRUDController', {$scope: $scope, component: $scope.productportal}); //继承


    $scope.producttypeportal.init();

    $scope.productportal.filter();


    //
    // // 目录树数据加载地址
    // $scope.slave = {
    //
    //     text: "",
    //
    //     parent: "",
    //
    //     foreignkey: "",         // id = {master.foreignkey}
    //
    //     id: "producttype",
    //
    //     name: "化验项目",
    //
    //     server: "/api/v2/itemcates"
    // };

    // 主数据加载地址
    // $scope.master = {
    //     id: "product",
    //
    //     name: "商品&服务",
    //
    //     server: "/api/v2/itemtypes"
    // };
    //
    // $scope.filters = [{"fieldName": "itemCode","operator": "EQ", "value":""} , {"fieldName": "itemName","operator": "EQ", "value":""} ];// 综合搜索项 // 品种
    //
    // $scope.placeholder = "请输入品种";
    //
    // $controller('BaseTreeController', {$scope: $scope}); //继承
    //
    // $scope.sideload();
});

