angular.module('fiona').controller('PackingController', function ($scope, component, $http, commons) {


});

// var Packing = {
//
//     treebind : function (component, $http, commons) {
//
//
//
//         // component.selectChange = function () {
//         //     component.isRemoves = true;
//         //     angular.forEach(component.selection, function (value, key) {
//         //         if (value == true) {
//         //             component.isRemoves = false;
//         //         }
//         //     });
//         // };
//         //
//         // component.selectAll = function () {
//         //     angular.forEach(component[componentId + 's'], function (data) {
//         //         component.selection[data.id] = component.selectedall;
//         //     })
//         //
//         //     component.isRemoves = !component.selectedall
//         // };
//         //
//         // // 初始化数据
//         // component[componentId + "search"] = function (master_id) {
//         //
//         //     $http.post(commons.getBusinessHostname() + component.server + "/page", {'pageSize':10000, 'pageNumber':1,'filters': [{"fieldName": component.foreignkey, "value": master_id, "operator": "EQ"}]}).success(function (data, status, headers, config) {
//         //
//         //         console.log("Component: " + componentId + 's')
//         //
//         //         console.log(data.data.content)
//         //
//         //         component[componentId + 's'] = data.data.content;
//         //     });
//         // };
//     }
// };