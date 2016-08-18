var CustomerSearchController = function($scope) {
  $scope.search = function(searchTerm) {
    $scope.searchedFor = searchTerm;
  }
}

app.controller("CustomerSearchController", [
  "$scope",
  function($scope) {
    $scope.search = function(searchTerm) {
      $scope.searchedFor = searchTerm;
      }
    }
  ]);