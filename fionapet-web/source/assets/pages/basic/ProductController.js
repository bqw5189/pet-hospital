// 商品与服务管理
angular.module('fiona').controller('ProductController', function ($scope, $controller, $http, commons) {
    
    // 目录树数据加载地址
    $scope.slave = {

        text: "cateName",

        parent: "parentId",

        foreignkey: "cateNo",         // id = {master.foreignkey}

        id: "producttype",

        name: "化验项目",

        server: "/api/v2/itemcates"
    };

    // 主数据加载地址
    $scope.master = {
        id: "product",
        
        name: "商品&服务",

        server: "/api/v2/itemtypes"
    };

    $scope.filters = [{"fieldName": "itemCode","operator": "EQ", "value":""} , {"fieldName": "itemName","operator": "EQ", "value":""} ];// 综合搜索项 // 品种

    $scope.placeholder = "请输入品种";

    $controller('BaseTreeController', {$scope: $scope}); //继承

    $scope.sideload();
});


// $scope.sideload = function () {
//     $scope.treeData = [];
//     $http.get(commons.getBusinessHostname() + '/api/v2/itemtypes').success(function (data, status, headers, config) {
//         console.log(data.data);
//
//         angular.forEach(data.data, function (item) {
//
//             item.text = item.cateName;
//             item.parent = item.parentId || "#";
//         });
//
//         $scope.treeData = data.data;
//
//         $scope.treeConfig.version++;
//     });
//
// };
//
// // 综合搜索项
// $scope.pagination = {
//     'pageSize': 1,
//     'pageNumber': 1,
//     "first": true,
//     "last": false,
//     "totalElements": 1,
//     "totalPages": 1
// };
//
// $scope.combox = {
//     types: [{'name': '猫科'}, {'name': '犬科'}]
// };
//
// // 检索宠物信息
// $scope.search = function () {
//
//     // console.log(" 执行搜索.... " + searchform.$dirty);
//
//     $http.post('/business/api/v2/products/page', {
//         'pageSize': $scope.pagination.pageSize,
//         'pageNumber': $scope.pagination.pageNumber,
//         'filters': $scope.filters
//     }).success(function (data, status, headers, config) {
//         // console.log( data );
//
//         $scope.products = data.data.content;
//
//         // 搜索+分页
//         $scope.pagination.pageNumber = data.data.number;
//
//         $scope.pagination.last = data.data.last;
//         $scope.pagination.first = data.data.first;
//         $scope.pagination.totalPages = data.data.totalPages;
//         $scope.pagination.totalElements = data.data.totalElements;
//     });
// };
//
// // Form 界面
// $scope.update = function (id) {
//     // alert(id);
//     if (id == undefined) {
//         // 添加
//         $scope.product = {};
//     }
//     else {
//         angular.forEach($scope.products, function (data, index, array) {
//             if (data.id == id) {
//                 $scope.product = data;
//             }
//         });
//     }
//
//     $('#product').modal('toggle');
// };
//
// $scope.productsubmit = function () {
//
//     $scope.productform.submitted = true;
//
//     if ($scope.productform.$valid) {
//
//         // console.log('submit: ' + $scope.product.id);
//
//         $http.post('/business/api/v2/products', $scope.product).success(function (data, status, headers, config) {
//             // console.log( data );
//         }).error(function (data, status, headers, config) { //     错误
//             alert("Productsubmit Error");
//         });
//     } else {
//
//         alert($scope.productform.$error);
//
//         // $scope.message = "请输入用户名和密码.";
//
//         // $scope.signup_form.submitted = true;
//     }
// };
//
//
// // Form 界面
// $scope.producttypemodal = function (id) {
//
//     // alert(id);
//     if (id == undefined) {
//
//         var parentNode;
//
//         angular.forEach($scope.treeData, function (data) {
//             if (data.id == $scope.treeSelectId) {
//                 parentNode = data;
//             }
//         });
//
//         // 添加
//         $scope.producttype = {"parentId": $scope.treeSelectId, "parentName": parentNode.text};
//     }
//     else {
//         angular.forEach($scope.products, function (data, index, array) {
//             if (data.id == id) {
//                 $scope.product = data;
//             }
//         });
//     }
//
//     $('#producttype').modal('toggle');
// };
//
// $scope.producttypesubmit = function () {
//
//     $scope.productform.submitted = true;
//
//     if ($scope.productform.$valid) {
//
//         // console.log('submit: ' + $scope.product.id);
//
//         $http.post('/business/api/v2/products', $scope.product).success(function (data, status, headers, config) {
//             // console.log( data );
//         }).error(function (data, status, headers, config) { //     错误
//             alert("Productsubmit Error");
//         });
//     } else {
//
//         alert($scope.productform.$error);
//
//         // $scope.message = "请输入用户名和密码.";
//
//         // $scope.signup_form.submitted = true;
//     }
// };
//
//
// // 删除功能
// $scope.removes = function () {
//     angular.forEach($scope.selection, function (value, key) {
//         alert(key + " = " + value);
//     });
// };
//
// $scope.remove = function (id) {
//     // // console.log( $scope.xiuUser )
//     alert(id);
//
//     $http.delete('/business/api/v2/products/' + id).success(function (data, index, array) {
//         commons.danger("删除成功");
//     }).error(function (data) {
//         commons.danger("删除失败");
//     });
// };
//
// $scope.sideload();