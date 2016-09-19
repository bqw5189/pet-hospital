// 化验项目管理
angular.module('fiona').controller('LabworkController', function ($scope, $controller, $http, commons) {

    // 声明要使用的下拉选项
    $scope.dropboxargs = [
        {name: "petRaceNameSet", server: "userdicts", filterName: "医疗类型"},
        {name: "cheTestUnitSet", server: "userdicts", filterName: "化验单位"}
    ];

    $scope.dropdowns= {
        indexTypesSet: [{code: "1", name: "定量"}, {code: "2", name: "定性"}]
    };

    $controller('BaseController', {$scope: $scope}); //继承

    $scope.dropboxinit($scope.dropboxargs);

    console.log($scope.dropdowns);

    /**
     * 化验项目分类
     * ---------------------------
     * */
    $scope.labworktypeportal= {

        text: "cateName", // 树标签-字段名

        parent: "parentId", // 父引用-字段名

        foreign: "labworktype",

        foreignkey: "cateNo",

        id: "labworktype",

        name: "化验项目分类",

        server: "/api/v2/chemicalexamcates",

        callback: {
            switched: function () {
                // 加载
                $scope.labworkportal.search();
            },
            insert: function () {
                // 加载
                if (!$scope.labworktypeportal.selectedId) {
                    $scope.labworktype.parentId = "#";
                }
                else {
                    $scope.labworktype.parentId = $scope.labworktypeportal.selectedId;
                }
            }
        }
    };

    $controller('TreeSidePanelController', {$scope: $scope, component: $scope.labworktypeportal}); //继承

    /**
     * 化验项目管理
     * ---------------------------
     * */
    $scope.labworkportal= {

        foreign: "labworktype", // 外键

        foreignkey: "cateNo",

        id: "labwork",

        name: "化验项目管理",

        server: "/api/v2/medicchemicalexamtypes",

        defilters: {"itemCode": "商品编号", "itemName": "商品名称"},

        callback : {
            update: function () {
                $scope.labworkdetailportal.search($scope.labwork.id);
            }
        }
    };

    $controller('BaseCRUDController', {$scope: $scope, component: $scope.labworkportal}); //继承

    /**
     * 参考值设置
     * ---------------------------
     * */
    $scope.labworkdetailportal= {

        foreign: "labwork", // 外键

        foreignkey: "cheTestTypdId",

        id: "labworkdetail",

        name: "参考值设置",

        server: "/api/v2/medicchemicalexamtypedetails"
    };

    $controller('BaseCRUDController', {$scope: $scope, component: $scope.labworkdetailportal}); //继承

    $scope.labworktypeportal.search();
    $scope.labworkportal.filter();
});