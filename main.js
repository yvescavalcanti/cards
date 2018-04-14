define('main',['ko','module'],function(ko,module){
    ko.components.register('testando',{
        template:'<p>this is a template</p>',
        viewModel:function(){

        }
    });
    console.log("CAVALCANTI");
    var model = function(){};
    ko.applyBindings(new model());
    
    return function(v){console.log(v)};
});