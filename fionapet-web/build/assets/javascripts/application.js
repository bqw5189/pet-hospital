angular.module('fiona', ['ngRoute', 'ngResource', 'fiona.services'])
    .config(['$routeProvider', function($routeProvider) {
        $routeProvider
            .when('/', {
                controller: "DashboardController",
                templateUrl: "views/dashboard.html"
            })

            // 宠物信息
            .when('/pet/list', {
                controller: 'PetController' ,
                templateUrl: 'views/pet/list.html'
            })

            // 会员管理
            // 会员管理
            .when('/vip/list', {
                controller: TempController ,
                templateUrl: 'views/vip/list.html'
            })
            .when('/vip/update/:id', {
                controller: TempController ,
                templateUrl: 'views/vip/modify.html'
            })

            // 宠物品种
            .when('/varieties/list', {
                controller: TempController ,
                templateUrl: 'views/basic/varieties/list.html'
            })
            .when('/varieties/update/:id', {
                controller: TempController ,
                templateUrl: 'views/basic/varieties/modify.html'
            })
            .when('/varieties/type', {
                controller: TempController ,
                templateUrl: 'views/basic/varieties/type.html'
            })

            // 经销商与生产商
            .when('/dealer/list', {
                controller: TempController ,
                templateUrl: 'views/basic/dealer/list.html'
            })
            .when('/dealer/update/:id', {
                controller: TempController ,
                templateUrl: 'views/basic/dealer/modify.html'
            })

            // 仓库信息管理
            .when('/storage/list', {
                controller: TempController ,
                templateUrl: 'views/basic/storage/list.html'
            })
            .when('/storage/update/:id', {
                controller: TempController ,
                templateUrl: 'views/basic/storage/modify.html'
            })

            // 商品与服务管理
            .when('/product/list', {
                controller: TempController ,
                templateUrl: 'views/basic/product/list.html'
            })
            .when('/product/update/:id', {
                controller: TempController ,
                templateUrl: 'views/basic/product/modify.html'
            })

            // 会员等级管理
            .when('/grade/list', {
                controller: TempController ,
                templateUrl: 'views/basic/grade/list.html'
            })
            .when('/grade/update/:id', {
                controller: TempController ,
                templateUrl: 'views/basic/grade/modify.html'
            })

            // 数据字典
            .when('/dictionary/list', {
                controller: TempController ,
                templateUrl: 'views/basic/dictionary/list.html'
            })
            .when('/dictionary/update/:id', {
                controller: TempController ,
                templateUrl: 'views/basic/dictionary/modify.html'
            })

            // 员工管理
            .when('/personnel/list', {
                controller: TempController ,
                templateUrl: 'views/basic/personnel/list.html'
            })
            .when('/personnel/update/:id', {
                controller: TempController ,
                templateUrl: 'views/basic/personnel/modify.html'
            })

            // 化验项目管理
            .when('/labwork/list', {
                controller: TempController ,
                templateUrl: 'views/basic/labwork/list.html'
            })
            .when('/labwork/update/:id', {
                controller: TempController ,
                templateUrl: 'views/basic/labwork/modify.html'
            })

            // 医院管理
            .when('/hospital/list', {
                controller: TempController ,
                templateUrl: 'views/basic/hospital/list.html'
            })
            .when('/hospital/update/:id', {
                controller: TempController ,
                templateUrl: 'views/basic/hospital/modify.html'
            })

            // 应用参数
            .when('/setting/list', {
                controller: TempController ,
                templateUrl: 'views/basic/setting/list.html'
            })
            .when('/setting/update/:id', {
                controller: TempController ,
                templateUrl: 'views/basic/setting/modify.html'
            })

            // 角色管理
            .when('/role/list', {
                controller: TempController,
                templateUrl: 'views/basic/role/list.html'
            })
            .when('/role/update/:id', {
                controller: TempController,
                templateUrl: 'views/basic/role/modify.html'
            })

            // 预约管理
            .when('/bespeak/list', {
                controller: TempController ,
                templateUrl: 'views/bespeak/list.html'
            })
            .when('/bespeak/update/:id', {
                controller: TempController ,
                templateUrl: 'views/bespeak/modify.html'
            })
            .when('/bespeak/sms/:id', {
                controller: TempController ,
                templateUrl: 'views/bespeak/smsform.html'
            })
            .when('/bespeak/detail/:id', {
                controller: TempController ,
                templateUrl: 'views/bespeak/detail.html'
            })
            .when('/bespeak/fosterage/:id', {
                controller: TempController ,
                templateUrl: 'views/bespeak/fosterageform.html'
            })
            .when('/bespeak/hospitalization/:id', {
                controller: TempController ,
                templateUrl: 'views/bespeak/hospitaliform.html'
            })

            // 挂号管理
            .when('/register/register', {
                controller: TempController ,
                templateUrl: 'views/register/register.html'
            })
            .when('/register/fastregister', {
                controller: TempController ,
                templateUrl: 'views/register/fastregister.html'
            })

            // 案例
            .when('/cases/list', {
                controller: "CaseController",
                templateUrl: 'views/cases/caselist.html'
            })
            .when('/cases/filter', {
                controller: "FilterController",
                templateUrl: 'views/cases/casefilter.html'
            })
            .when('/cases/form', {
                controller: TempController,
                templateUrl: 'views/cases/caseform.html'
            })
            .otherwise({redirectTo: '/'});
    }])

    // 首页面
    .controller('DashboardController', function($scope) {
        // define controller to prevent console error

        $scope.userName = 'tim';
    })

    .controller('InboxController', function($scope, $routeParams, $location) {
        $scope.name = $routeParams.name;
    })

    // 侧边栏
    .controller('SidebarController', function($scope, $http) {

        $http.get("server/sidebar.json").success(function (data, status, headers, config ) {

            $scope.name = "Time";
            $scope.sidebar = data;

            // alert('GET Success');
        }).error(function (data, status, headers, config) {
            alert('GET Error');
        });
    });

// Role 控制器
function TempController ( $scope, $http ) {

    jQuery().datepicker && $(".date-picker-btn").datepicker({
        format: 'yyyy-mm-dd',
        orientation: "left",
        autoclose: !0
    }).on("changeDate", function() {
        $(this).parent().prev().val($(this).datepicker('getFormattedDate'));
    });

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
