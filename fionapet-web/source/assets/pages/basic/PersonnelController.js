// 员工管理
angular.module('fiona').controller('PersonnelController', function($scope, $controller) {

    // 声明要使用的下拉选项
    $scope.dropboxargs = [
        {name: "personStatusSet", server: "dicts", filterName: "会员状态"}, 
        {name: "sexSet", server: "userdicts", filterName: "性别"}
    ];

    $scope.dropdowns= {
        isSyncEasSet: [{code: "true", name: "是"}, {code: "false", name: "否"}]
        // roleset: [{code: "1", name: "医生"}, {code: "2", name: "护士"}, {code: "3", name: "销售员"}, {code: "4", name: "系统管理员"}]
    };

    $controller('BaseController', {$scope: $scope}); //继承

    $scope.dropboxinit($scope.dropboxargs);

    console.log($scope.dropdowns);

    /**
     * 经销商与生产商
     * ---------------------------
     * */
    $scope.personnelportal = {

        id: "personnel",

        name: "员工管理",

        server: "/api/v2/personss",

        defilters: {"code": "自动编号", "name": "经销商名称 ","contractMan": "联系人","mobilePhone": "手机","personnelAddress": "地址"},

        callback: {
            insert: function () {

                angular.forEach(["isSyncEas", "personStatus", "sex"], function (name) {
                    if(!!$scope.dropdowns[name +  "Set"])
                    {
                        $scope.personnel[name] = $scope.dropdowns[name +  "Set"][0].code;
                    }
                });

                // $scope.personnel.code = commons.serialNumber(); // 自动编号
                //
                // $scope.personnel.companyType = "1"; // 类型
            }
        }
    };

    $controller('BaseCRUDController', {$scope: $scope, component: $scope.personnelportal}); //继承

    $scope.personnelportal.filter();

    //
    // // 主数据加载地址
    // $scope.master = {
    //     id: "personnel",
    //
    //     name: "员工管理",
    //
    //     server: "/api/v2/personss",
    //
    //     insert: function () {
    //         angular.forEach($scope.dropdowns, function (value, key) {
    //             $scope.personnel[key.substr(0, key.length - 3)] = value[0].code;
    //         });
    //     }
    // };

    // $controller('BasePaginationController', {$scope: $scope}); //继承
});
