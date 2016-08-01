// 指令
angular.module('fiona')

// 搜索Bar
    .directive('faFilter', function() {
        return {
            restrict: 'A',
            replace: true,
            scope: {
                filters: '=',
                placeholder: '@',
                search: '&'
            },

            templateUrl: function(elem,attrs) {
                return attrs.templateurl;
            },

            controller: function($scope) {

                // alert("Filter Init");
                $scope.filtersCopy = $scope.filters;

                // 综合搜索
                // $.each($scope.filters, function(i, filter){
                //     alert("Controller>综合搜索: '" + filter.fieldName + "', '" + filter.operator + "', '" + filter.value + "' ");
                // });

                // type : between(区间)
                $scope.searchbar = {
                    "field": "",
                    "fieldName": "综合搜索",
                    "dataType": "",
                    "type":  "",

                    "firstValue": "",
                    "lastValue": "",

                    "firstTextPlaceholder": $scope.placeholder,
                    "lastTextPlaceholder": ""
                };

                $scope.submit = function () {

                    // alert($scope.searchbar.type + ", " + $scope.searchbar.firstValue);

                    if(($scope.searchbar.type == '' && $scope.searchbar.firstValue != ''))
                    {
                        // alert($scope.searchbar.type + ", " + $scope.searchbar.firstValue);

                        if($scope.searchbar.field == '')
                        {
                            // 综合搜索
                            $.each($scope.filtersCopy, function(i, filter){
                                filter.value = $scope.searchbar.firstValue;
                                // alert("综合搜索: '" + filter.fieldName + "', '" + filter.operator + "', '" + filter.value + "' ");
                            });

                            $scope.filters = $scope.filtersCopy;
                        }
                        else {
                            // alert("单值搜索: '" + filter.fieldName + "', '" + filter.operator + "', '" + filter.value + "' ");

                            $scope.filters = [{"fieldName": $scope.searchbar.field,"operator": "EQ", "value":$scope.searchbar.firstValue}];
                        }
                    }
                    else if($scope.searchbar.type == 'between' && ($scope.searchbar.firstValue != ''|| $scope.searchbar.lastValue != ''))
                    {
                        if($scope.searchbar.firstValue == ''|| $scope.searchbar.lastValue == '')
                        {
                            if($scope.searchbar.firstValue != '')
                            {
                                //  alert("区间搜索: '" + filter.fieldName + "', '" + filter.operator + "', '" + filter.value + "' ");
                                $scope.filters = [{"fieldName": $scope.searchbar.field,"operator": "GTE", "value":$scope.searchbar.firstValue}];
                            }

                            if($scope.searchbar.lastValue != '')
                            {
                                // alert("区间搜索: '" + filter.fieldName + "', '" + filter.operator + "', '" + filter.value + "' ");
                                $scope.filters = [{"fieldName": $scope.searchbar.field,"operator": "LTE", "value":$scope.searchbar.lastValue}];
                            }
                        }
                        else
                        {
                            // alert("区间搜索: '" + filter.fieldName + "', '" + filter.operator + "', '" + filter.value + "' ");
                            $scope.filters = $scope.searchbar;
                        }
                    }
                    else
                    {
                        // alert("Filters is Empty");

                        $scope.filters = [];
                    }

                    // 手动触发
                    if (!$scope.$$phase){
                        $scope.$apply();
                    }

                    $scope.search();
                };

                $scope.setField= function(field, fieldName, dataType, type) {

                    $scope.searchbar.field = (!field?'':field);
                    $scope.searchbar.fieldName = (!fieldName?'':fieldName);
                    $scope.searchbar.dataType = (!dataType?'':dataType );
                    $scope.searchbar.type= (!type?'':type );

                    $scope.searchbar.firstValue = $scope.searchbar.lastValue = '';

                    if($scope.searchbar.field == '')
                    {
                        // 综合搜索
                        $scope.searchbar.firstTextPlaceholder = $scope.placeholder;
                    }
                    else if($scope.searchbar.field != '' && $scope.searchbar.type == 'between')
                    {
                        // 区间搜索
                        if($scope.searchbar.dataType == 'date')
                        {
                            $scope.searchbar.firstTextPlaceholder = "请选择最小日期";

                            $scope.searchbar.lastTextPlaceholder = "请选择最大日期";
                        }
                        else
                        {
                            $scope.searchbar.firstTextPlaceholder = "请输入最小值";

                            $scope.searchbar.lastTextPlaceholder = "请输入最大值";
                        }
                    }
                    else {
                        $scope.searchbar.firstTextPlaceholder = "请输入" + $scope.searchbar.fieldName;
                    }

                    // alert($scope.searchbar.firstTextPlaceholder);
                    // alert($scope.searchbar.field + ", " + $scope.searchbar.fieldName  + ", " + $scope.searchbar.dataType + ", " + $scope.searchbar.type );

                    // alert('OK');
                    // alert(scope.searchbar.field + ", " + scope.searchbar.fieldName  + ", " + scope.searchbar.dataType + ", " + scope.searchbar.type );
                    // alert(field + ", " + fieldName  + ", " + dataType + ", " + type );

                };


                $scope.submit();
            }
        }
    })

    // 分页
    .directive('faPagination', function() {
        return {
            restrict: 'A',
            replace: true,
            scope: {
                pagination:'=',
                search: '&'
            },

            templateUrl: "/views/pagination.html",

            controller: function($scope) {

                // Form 界面
                $scope.jump = function (_pagenumber) {

                    if(_pagenumber != undefined)
                    {
                        $scope.pagination.pageNumber = _pagenumber;
                    }

                    // alert($scope.pagination.pageNumber);

                    // 手动触发
                    if (!$scope.$$phase && !$scope.$root.$$phase){
                        $scope.$apply();
                    }

                    $scope.search();

                    // alert(_pagenumber);
                    // alert($scope.pagination.pageSize);
                    //
                    // if ($scope.petform.$valid) {
                    //     alert('submit: ' + $scope.pagination.pageNumber);
                    // } else {
                    //     // $scope.message = "请输入用户名和密码.";
                    //
                    //     // $scope.signup_form.submitted = true;
                    // }

                    // alert($scope.pet.gestCode);
                };

                // alert("pageSize : " + $scope.pagination.pageSize + ", pageNumber : " + $scope.pagination.pageNumber + ", first: " + $scope.pagination.first + ", last: " + $scope.pagination.last + ", totalElements: " + $scope.pagination.totalElements+ ", totalPages: " + $scope.pagination.totalPages);
            }
        }
    });