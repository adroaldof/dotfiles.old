[<-- Back](../README.md)

# Webstorm Configurations

## Enable Command Line

`Tools > Create Command Line Louncher`

## KeyMaps

|Action | Key|
|----------------------|-----|
|Up | `Ctrl + P`|
|Down | `Ctrl + N`|
|Left | `Ctrl + B`|
|Right | `Ctrl + F`|
|Carret to next word | `Ctrl + W`|
|Carret to previous word | `Ctrl + Q`|
|Carret to line end | `Ctrl + E`|
|Carret to line start | `Ctrl + A`|
|Carret to page top | `Ctrl + T`|
|Carret to page down | `Ctrl + R`|
|Delete to word end | `Ctrl + L`|
|Delete to word start | `Ctrl + ;`|
|Delete | `Ctrl + D`|
|Cut up to line end | `Ctrl + K`|


## Live Templates

Define the `Name` as the follow titles, with no camel case, set `Expand with Default (Tab)` and check the box `Reformating accord to styles`

### Constant

```js
(function () {
    'use strict';
    
    var $constName$ = {
    
    };
    
    
    angular.module('$moduleName$', [])
        .constant('$constCapitalName$', $constName$);
})();
```

### Controller

```js
(function () {
    'use strict';
    
    var $controllerName$ = function () {
        var vm = this;
        
    };
    
    $controllerName$.$inject = [];
    
    
    angular.module('$moduleName$')
        .controller('$controllerName$', $controllerName$);
})();     
```

### Directive

```js
(function () {
    'use strict';
    
    var $directiveFunc$ = function () {
        var linkFunction = function (scope, element, attributes) {
        
        };
        
        linkFunction.$inject = ['scope', 'element', 'attributes'];
        
        return {
            restrict: 'E',
            link: linkFunction
        };
    };
    
    $directiveFunc$.$inject = [];
    
    
    angular.module('$moduleName$', [])
        .directive('$directiveName$', $directiveFunc$);
})();
```

### Factory

```js
(function () {
    'use strict';
    
    var $factoryName$ = function ($http) {
        var $factoryFunction$ = function () {
        
        };
        
        
        return {
            $factoryFunction$: $factoryFunction$
        };
    };
    
    $factoryName$.$inject = ['$http'];
    
    
    angular.module('$moduleName$', [])
        .factory('$factoryName$', $factoryName$);
})();
```

### Route

```js
(function () {
    'use strict';

    var $routeFunction$ = function ($stateProvider) {
        $stateProvider
            .state('$stateName$', {
                url: '/$routeName$',
                templateUrl: '$routeName$/$routeName$Tpl.html',
                controller: '$routeName$Ctrl as vm'
            });
    };

    $routeFunction$.$inject = ['$stateProvider'];


    angular.module('$moduleName$')
        .config($routeFunction$);
})();
```

 ### Tests

```js
/* globals beforeEach, mock, inject, describe, it, expect */

(function () {
    'use strict';
    
    var $serviceInjection$;

    describe('$serviceInjection$ Tests ::', function () {
        beforeEach(angular.mock.module('$moduleName$'));

        /* jscs: disable */
        beforeEach(inject(function (_$serviceInjection$_) {
            $serviceInjection$ = _$serviceInjection$_;
        }));
        /* jscs: enable */
        
        
        describe('Check Injected Modules ::', function () {
            it('$serviceInjection$ module should exist', function () {
                expect($serviceInjection$).to.exists;
            });
        });
        
        describe('$serviceInjection$ Expectations ::', function () {
            it('$firstIt$', function () {
                expect(true).to.equal(true);
            });
        });
    });
})();
```
