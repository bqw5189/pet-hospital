
// 会员等级管理
angular.module('fiona').controller('GradeController', function($scope, $http, commons) {

    $http.defaults.headers.post.authorization = commons.getAuthorization();

    $http.defaults.headers.post['Content-Type']= 'application/json';

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
        angular.forEach($scope.grades, function (grade) {
            $scope.selection[grade.id] = $scope.selectedall;
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

    // 综合搜索项 // 品种
    $scope.filters = [{"fieldName": "name","operator": "EQ", "value":""}];

    $scope.placeholder = "请输入品种";

    // 检索宠物信息
    $scope.search = function () {

        console.log(" 执行搜索.... " + searchform.$dirty);

        $http.post('/business/api/v2/grades/page', {'pageSize':$scope.pagination.pageSize, 'pageNumber':$scope.pagination.pageNumber, 'filters':$scope.filters}).success( function ( data, status, headers, config ) {
            console.log( data );

            $scope.grades = data.data.content;

            // 搜索+分页
            $scope.pagination.pageNumber = data.data.number;

            $scope.pagination.last = data.data.last;
            $scope.pagination.first = data.data.first;
            $scope.pagination.totalPages = data.data.totalPages;
            $scope.pagination.totalElements = data.data.totalElements;
        });
    };


    // Form 界面
    $scope.update = function (id) {
        // alert(id);
        if(id == undefined)
        {
            // 添加
            $scope.grade = {};
        }
        else
        {
            angular.forEach($scope.grades, function(data,index,array){
                if(data.id== id)
                {
                    $scope.grade = data;
                }
            });
        }

        $('#grade').modal('toggle');
    };


    $scope.gradesubmit = function () {

        $scope.gradeform.submitted = true;

        if ($scope.gradeform.$valid) {

            console.log('submit: ' + $scope.grade.id);

            $http.post('/business/api/v2/grades', $scope.grade).success( function ( data, status, headers, config ) {
                console.log( data );
            }).error(function(data,status,headers,config) { //     错误
                alert("Gradesubmit Error");
            });
        } else {

            alert($scope.gradeform.$error);

            // $scope.message = "请输入用户名和密码.";

            // $scope.signup_form.submitted = true;
        }
    };

    $scope.updatetype = function (id) {
        // alert(id);
        if(id == undefined)
        {
            // 添加
            $scope.grade = {};
        }
        else
        {
            // angular.forEach($scope.grades, function(data,index,array){
            //     if(data.id== id)
            //     {
            //         $scope.grade = data;
            //     }
            // });
        }

        $('#type').modal('toggle');
    };

    $scope.typesubmit = function () {

        $scope.gradeform.submitted = true;

        if ($scope.gradeform.$valid) {

            console.log('submit: ' + $scope.grade.id);

            $http.post('/business/api/v2/grades', $scope.grade).success( function ( data, status, headers, config ) {
                console.log( data );
            }).error(function(data,status,headers,config) { //     错误
                alert("Gradesubmit Error");
            });
        } else {

            alert($scope.gradeform.$error);

            // $scope.message = "请输入用户名和密码.";

            // $scope.signup_form.submitted = true;
        }
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

        $http.delete('/business/api/v2/grades/' + id).success(function(data, index, array){
            commons.danger("删除成功");
        }).error(function (data) {
            commons.danger("删除失败");
        });

        // angular.forEach($scope.grades, function(data,index,array){
        //
        //     if(data.id == id)
        //     {
        //     }
        //
        // });

    };


});