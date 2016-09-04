
// 住院管理
angular.module('fiona').controller('InhospitalController', function($scope, $http, commons) {

    $http.defaults.headers.post.authorization = commons.getAuthorization();

    $http.defaults.headers.post['Content-Type']= 'application/json';

    // alert(commons.getAuthorization());

    // 使用日期控件
    jQuery().datepicker && $(".date-picker-btn").datepicker({
        format: 'yyyy-mm-dd',
        orientation: "left",
        autoclose: !0
    }).on("changeDate", function() {
        $(this).parent().prev().val($(this).datepicker('getFormattedDate'));
    });

    jQuery().datepicker && $(".date-picker").datepicker({
        format: 'yyyy-mm-dd',
        orientation: "left",
        autoclose: !0
    });


    $scope.error= "未找到定义";

    $scope.selectedall = false;

    $scope.isRemoves = true;

    $scope.selection = {};

    $scope.selectChange = function () {
        $scope.isRemoves = true;
        angular.forEach($scope.selection, function(value, key){
            if(value == true)
            {
                $scope.isRemoves = false;
            }
        });
    };

    $scope.selectAll= function () {
        angular.forEach($scope.inhospitals, function (inhospital) {
            $scope.selection[inhospital.id] = $scope.selectedall;
        })

        $scope.isRemoves = !$scope.selectedall
    };

    // 综合搜索项
    $scope.pagination = {
        'pageSize': 1,
        'pageNumber': 1,
        "first":true,
        "last":false,
        "totalElements": 1,
        "totalPages": 1
    };
    
    $scope.combox = {
        types: [ {'name':'猫科'}, {'name':'犬科'} ]
    };

    // 综合搜索项
    $scope.filters = [
        // 宠物病例号
        // {"fieldName": "name","operator": "EQ", "value":""},

        // 宠物昵称
        {"fieldName": "inhospitalCode","operator": "EQ", "value":""},

        // 宠物昵称
        {"fieldName": "inhospitalName","operator": "EQ", "value":""},

        // 会员编号
        {"fieldName": "gestCode","operator": "EQ", "value":""},

        // 会员名称
        {"fieldName": "gestName","operator": "EQ", "value":""},

        // 会员电话
        // {"fieldName": "mobilePhone","operator": "EQ", "value":""}
    ];

    $scope.placeholder = "请输入宠物病例号/宠物昵称/会员编号/会员名称/会员电话";

    // 检索宠物信息
    $scope.search = function () {

        // alert(" 执行搜索.... ");

        console.log(" 执行搜索.... " + searchform.$dirty);

        angular.forEach($scope.filters, function (data) {
            console.log(" 执行搜索.... " + data.fieldName + ", " + data.operator + ", " + data.value);
        });

        // 分页查询  /business/api/v2/inhospitals
        // $http.get('/server/api/v2/inhospitals/page.json', {'pageSize':$scope.pagination.pageSize, 'pageNumber':$scope.pagination.pageNumber, 'filters':$scope.filters}).success( function ( data, status, headers, config ) {

        // alert('pageSize: '+ $scope.pagination.pageSize  +'pageNumber: ' + $scope.pagination.pageNumber + ", " + $scope.filters.length);

        // angular.forEach($scope.filters, function (data, index) {
        //     alert(data.fieldName);
        // });

        $http.post('/server/api/v2/inhospitals/page.json', {'pageSize':$scope.pagination.pageSize, 'pageNumber':$scope.pagination.pageNumber, 'filters':$scope.filters}).success( function ( data, status, headers, config ) {
            console.log( data );

            $scope.inhospitals = data.data.content;

            // $http.post('/business/api/v2/inhospitals', data).success( function ( data, status, headers, config ) {
            //     console.log( data );
            //     alert("Submit OK");
            // }).error(function(data,status,headers,config) { //     错误
            //     alert("保存失败,请确认后重试" + status);
            // });

            // angular.forEach($scope.inhospitals, function (inhospital, i) {
            //     alert(inhospital.id);
            // });

            // 搜索+分页
            $scope.pagination.pageNumber = data.data.number+1;

            $scope.pagination.last = data.data.last;
            $scope.pagination.first = data.data.first;
            $scope.pagination.totalPages = data.data.totalPages;
            $scope.pagination.totalElements = data.data.totalElements;
        });
    };


    // Form 界面
    $scope.inhospitalsubmit = function () {

        $scope.inhospitalform.submitted = true;

        if ($scope.inhospitalform.$valid) {
            alert('submit: ' + $scope.inhospital.id);
            $http.post('/business/api/v2/inhospitals', $scope.inhospital).success( function ( data, status, headers, config ) {
                console.log( data );
                alert("Submit OK");
            }).error(function(data,status,headers,config) { //     错误
                alert(status);
            });
        } else {

            alert($scope.inhospitalform.$error);

            // $scope.message = "请输入用户名和密码.";

            // $scope.signup_form.submitted = true;
        }
    };

    $scope.update = function (id) {

        if(id == undefined)
        {
            // 添加
            $scope.inhospital = {};
        }
        else
        {
            angular.forEach($scope.inhospitals, function(data,index,array){
                if(data.id== id)
                {
                    $scope.inhospital = data;
                }
            });
        }

        $('#inhospital').modal('toggle');
    };

    // 预付金记录
    $scope.prepaymodal = function (id) {

        if(id == undefined)
        {
            // 添加
            $scope.prepay = {};
        }
        else
        {
            angular.forEach($scope.prepays, function(data,index,array){
                if(data.id== id)
                {
                    $scope.prepay = data;
                }
            });
        }

        $('#prepay').modal('toggle');
    };

    // 健康状态记录
    $scope.healthmodal = function (id) {

        if(id == undefined)
        {
            // 添加
            $scope.health = {};
        }
        else
        {
            angular.forEach($scope.healths, function(data,index,array){
                if(data.id== id)
                {
                    $scope.health = data;
                }
            });
        }

        $('#health').modal('toggle');
    };

    // 添加商品/服务
    $scope.productmodal = function (id) {

        if(id == undefined)
        {
            // 添加
            $scope.product = {};
        }
        else
        {
            angular.forEach($scope.products, function(data,index,array){
                if(data.id== id)
                {
                    $scope.product = data;
                }
            });
        }

        $('#product').modal('toggle');
    };

    // 删除功能
    $scope.removes = function () {
        angular.forEach($scope.selection, function(value, key){
            alert(key+ " = " + value);
        });
    };

    $scope.remove= function (id) {
        // console.log( $scope.xiuUser )

        alert(id);

        $http.delete('/business/api/v2/inhospitals/' + id).success(function(data, index, array){
            commons.danger("删除成功");
        }).error(function (data) {
            commons.danger("删除失败");
        });

        // angular.forEach($scope.inhospitals, function(data,index,array){
        //
        //     if(data.id == id)
        //     {
        //     }
        //
        // });

    };


});