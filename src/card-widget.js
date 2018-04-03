define('card-widget',['ko','text!card.html'],function(ko,template){

    ko.components.register('card-widget', {
        viewModel: function(params){
            this.title = params.card.title;
            this.goto = params.card.goto;
            this.dados = params.card.dados;
            this.plot = params.card.plot;
            this.gotoClick = params.card.gotoClick;//console.log(this.plot);
        },
        template:template
    });

    return function CardModel(titulo, dados, gt, pl){
        var self = this;
        this.title = titulo;
        this.dados = ko.observableArray(dados);
        this.goto = gt;
        this.plot = pl;
        self.gotoClick = function(){
            alert(window.urlBase+"/"+self.goto);
            $('#content').load(window.urlBase+"/"+self.goto);
        }
    };
});