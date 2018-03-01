(function($){
    $.widget("nmk.card",{
        options:{
            title:'',
            resposta:'resposta'
        },
        _create:function(dados, _callback){
            this.element.append(dashcard["hb/cards.hbs"]());
            var id = this.element.attr('id');
            this.titleTag = this.element.find("#title");
            this.statusBarTag
            //console.log(this._title);
        },
        _title:function(title){
            this.titleTag.text(title);
        },
        _setStatus:function(){

        },
        /* 
        Função que define a cor da borda superior do card, que
        serve como status 
        @param boolean
        */
        _setStatusBar:function(active){
           this.statusBarTag.toggleClass("statusbar-active");
        },
        _setOptions:function(options){
           this._super(options);
           this._title(options.title);
           console.log(this.options);
        }


        


    });

    
}(jQuery));