ko.components.register("tmpl",{
    viewModel:function(){},
    template:require('fs').readFileSync(__dirname+"/tmpl.html",'utf8')
});