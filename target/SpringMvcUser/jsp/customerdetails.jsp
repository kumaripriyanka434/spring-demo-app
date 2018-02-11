<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
<script>
    angular.module('demo', [])
    .controller('Hello', function($scope, $http) {
        $http.get('/SpringMvcUser/customers').
            then(function(response) {
                $scope.customer = response.data;
                alert($scope.customer[0].id);
            });
    });
</script>
 <div ng-app="demo" ng-controller="Hello">
<p>ID : {{customer[0].id}}</p>
<p>Name: {{customer[0].firstName}} {{customer[0].lastName}}</p>
<p>Email: {{customer[0].email}}</p>
<p>Mobile: {{customer[0].mobile}}</p>
<p>DateOfBirth: {{customer[0].dateOfBirth}}</p>
</div>