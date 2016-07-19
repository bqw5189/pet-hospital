angular.module('fiona', ['ngRoute', 'ngResource'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider
        .when('/', {
            controller: "HomeController",
            templateUrl: "views/dashboard.html"
        })

// 宠物信息
        .when('/pet/list', {
            controller: PetController ,
            templateUrl: 'views/pet/list.html'
        })
        .when('/pet/update/:id', {
            controller: PetController ,
            templateUrl: 'views/pet/modify.html'
        })

// 会员管理
        // 会员管理
        .when('/vip/list', {
            controller: PetController ,
            templateUrl: 'views/vip/list.html'
        })
        .when('/vip/update/:id', {
            controller: PetController ,
            templateUrl: 'views/vip/modify.html'
        })

// 宠物品种
        .when('/varieties/list', {
            controller: PetController ,
            templateUrl: 'views/basic/varieties/list.html'
        })
        .when('/varieties/update/:id', {
            controller: PetController ,
            templateUrl: 'views/basic/varieties/modify.html'
        })
        .when('/varieties/type', {
            controller: PetController ,
            templateUrl: 'views/basic/varieties/type.html'
        })

// 经销商与生产商
        .when('/dealer/list', {
            controller: PetController ,
            templateUrl: 'views/basic/dealer/list.html'
        })
        .when('/dealer/update/:id', {
            controller: PetController ,
            templateUrl: 'views/basic/dealer/modify.html'
        })

// 仓库信息管理
        .when('/storage/list', {
            controller: PetController ,
            templateUrl: 'views/basic/storage/list.html'
        })
        .when('/storage/update/:id', {
            controller: PetController ,
            templateUrl: 'views/basic/storage/modify.html'
        })

// 商品与服务管理
        .when('/product/list', {
            controller: PetController ,
            templateUrl: 'views/basic/product/list.html'
        })
        .when('/product/update/:id', {
            controller: PetController ,
            templateUrl: 'views/basic/product/modify.html'
        })

// 会员等级管理
        .when('/grade/list', {
            controller: PetController ,
            templateUrl: 'views/basic/grade/list.html'
        })
        .when('/grade/update/:id', {
            controller: PetController ,
            templateUrl: 'views/basic/grade/modify.html'
        })

// 数据字典
        .when('/dictionary/list', {
            controller: PetController ,
            templateUrl: 'views/basic/dictionary/list.html'
        })
        .when('/dictionary/update/:id', {
            controller: PetController ,
            templateUrl: 'views/basic/dictionary/modify.html'
        })

// 员工管理
        .when('/personnel/list', {
            controller: PetController ,
            templateUrl: 'views/basic/personnel/list.html'
        })
        .when('/personnel/update/:id', {
            controller: PetController ,
            templateUrl: 'views/basic/personnel/modify.html'
        })

// 化验项目管理
        .when('/labwork/list', {
            controller: PetController ,
            templateUrl: 'views/basic/labwork/list.html'
        })
        .when('/labwork/update/:id', {
            controller: PetController ,
            templateUrl: 'views/basic/labwork/modify.html'
        })

// 医院管理
        .when('/hospital/list', {
            controller: PetController ,
            templateUrl: 'views/basic/hospital/list.html'
        })
        .when('/hospital/update/:id', {
            controller: PetController ,
            templateUrl: 'views/basic/hospital/modify.html'
        })

// 应用参数
        .when('/setting/list', {
            controller: PetController ,
            templateUrl: 'views/basic/setting/list.html'
        })
        .when('/setting/update/:id', {
            controller: PetController ,
            templateUrl: 'views/basic/setting/modify.html'
        })

// 角色管理
        .when('/role/list', {
            controller: RoleController,
            templateUrl: 'views/basic/role/list.html'
        })
        .when('/role/update/:id', {
            controller: RoleController,
            templateUrl: 'views/basic/role/modify.html'
        })


// 预约管理
        .when('/bespeak/list', {
            controller: PetController ,
            templateUrl: 'views/bespeak/list.html'
        })
        .when('/bespeak/update/:id', {
            controller: PetController ,
            templateUrl: 'views/bespeak/modify.html'
        })
        .when('/bespeak/sms/:id', {
            controller: PetController ,
            templateUrl: 'views/bespeak/sms.html'
        })
        .when('/bespeak/detail/:id', {
            controller: PetController ,
            templateUrl: 'views/bespeak/detail.html'
        })
        .when('/bespeak/fosterage/:id', {
            controller: PetController ,
            templateUrl: 'views/bespeak/fosterage.html'
        })
        .when('/bespeak/hospitalization/:id', {
            controller: PetController ,
            templateUrl: 'views/bespeak/hospitalization.html'
        })

// 挂号管理
        .when('/register/register', {
            controller: PetController ,
            templateUrl: 'views/register/register.html'
        })
        .when('/register/fastregister', {
            controller: PetController ,
            templateUrl: 'views/register/fastregister.html'
        })

        // 案例
        .when('/inbox/:name', {
            controller: 'InboxController',
            template: '\
    <h1>Welcome to your inbox, {{ name }}</h1>\
    <a href="#/">Back</a>\
  '
        })
        .when('/pages/datalist', {
            controller: 'InboxController',
            templateUrl: 'pages/datalist.html'
        })
        .otherwise({redirectTo: '/'});
}])

.controller('HomeController', function($scope) {
    // define controller to prevent console error
})

.controller('InboxController', function($scope, $routeParams, $location) {
    $scope.name = $routeParams.name;
});

// 读取目录树
function SidebarController ( $scope, $http ) {

    // alert("Invoke: SidebarController");

    $http.get("server/sidebar.json").success(function (data, status, headers, config ) {

        $scope.name = "Time";
        $scope.sidebar = data;

        // alert('GET Success');
    }).error(function (data, status, headers, config) {
        alert('GET Error');
    });
}

// Role 控制器
function RoleController ( $scope, $http ) {

    // alert("Invoke: SidebarController");
    // $http.get("server/role.json").success(function (data, status, headers, config ) {
    //     // alert('GET Success');
    // }).error(function (data, status, headers, config) {
    //     alert('GET Error');
    // });
}

// Role 控制器
function PetController ( $scope, $http ) {

    // alert("Invoke: SidebarController");
    // $http.get("server/role.json").success(function (data, status, headers, config ) {
    //     // alert('GET Success');
    // }).error(function (data, status, headers, config) {
    //     alert('GET Error');
    // });
}

function InvoiceCntl($scope)
{
    $scope.yourname= "Tim";
}
