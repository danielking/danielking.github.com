APP_NAME = 'com_jedisto_jedios_clock'
APP_TITLE = 'Clock'

angular.module APP_NAME, ['common']

angular.module(APP_NAME).run ['common.message', (message) ->
]

$(document).trigger 'app_reg', name: APP_NAME, title: APP_TITLE, genre: 'angular'

angular.module(APP_NAME).controller 'AppController', ['$scope', 'common.message', ($scope, message) ->
  $scope.app_name = APP_NAME
  message.publish 'app', 'hello'
]
