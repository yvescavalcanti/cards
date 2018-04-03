define('principal',['ko'],function(ko){
    ko.components.register('testando',{
        template:'<p>{{@lang("messages.nascimentos")}}</p>',
        viewModel:function(){

        }
    });

    ko.applyBindings();
});