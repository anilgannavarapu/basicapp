<!DOCTYPE html>
<html ng-app="myApp">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<body>

<div ng-controller="myController">
    {{getAccountDetailsMethod()}}
    <input type="text" ng-model="color" placeholder="Enter a color" />
    <hello-world/>
    <hello-world/>
    <hello-world/>
</div>


<script>
    var myApp = angular.module("myApp", []);
    myApp.controller("myController", function($http, $scope,myservice,myfactory) {

      //  myservice.setArtist("Anil");
        myfactory.setArtist("Anil");

        $scope.getAccountDetailsMethod = function() {
            return myfactory.getArtist();
        }
    });
    myApp.service("myservice",function(){

        var _artist = '';
        this.setArtist = function(artist){

            _artist = artist;
        }

        this.getArtist = function(){
            return _artist ;
        }


    });

    myApp.factory("myfactory",function(){

        var service = {};

        var _artist = '';
        service.setArtist = function(artist){

            _artist = artist;
        }

        service.getArtist = function(){
            return _artist ;
        }
        return service;

    });


    myApp.directive('helloWorld', function() {
        return {
            restrict: 'AE',
            replace: true,
            scope:{},
            template: '<p style="background-color:{{color}}">Hello World',
            link: function($scope, elem, attrs) {
                elem.bind('click', function() {
                    elem.css('background-color', 'white');
                    $scope.$apply(function() {
                        $scope.color = "white";
                    });
                });
                elem.bind('mouseover', function() {
                    elem.css('cursor', 'pointer');
                });
            }
        };
    });






 //   $http({
  //      method:'GET',
   //     url:'http://localhost:8080/xbasic-web-app/rest/accounts'
    //}).then(function handleSuccess(response) {
     //
      //  $scope.getAccountDetails =response.data;

    //});


</script>
</body>

</html>