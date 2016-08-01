angular.module('fiona.services', [])

.factory('commons', function() {
    var authorization='fc5db3b3-4063-4a12-a511-880ba19e4b58';
    return {
        setAuthorization: function (auth) {
            console.log( "保存用户凭证" + auth );

            authorization = auth;
        },
        getAuthorization : function () {
            console.log( "当前用户凭证: " + authorization );

            return authorization;
        },
        success: function (msg) {
            App.alert({
                container: "#operate_msg_box",
                place: "append",
                type: "success",
                message: msg,
                close: true,
                closeInSeconds: 2,
                icon: "check"
            });
        },
        danger: function (msg) {
            App.alert({
                container: "#operate_msg_box",
                place: "append",
                type: "danger",
                message: msg,
                close: true,
                closeInSeconds: 2,
                icon: "remove"
            });
        },
        warning: function (msg) {
            App.alert({
                container: "#operate_msg_box",
                place: "append",
                type: "warning",
                message: msg,
                close: true,
                closeInSeconds: 2,
                icon: "warning"
            });
        },
        info: function (msg) {
            App.alert({
                container: "#operate_msg_box",
                place: "append",
                type: "info",
                message: msg,
                close: true,
                closeInSeconds: 2,
                icon: "info"
            });
        }
    };
});