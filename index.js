(function($){
    $.widget("nmk.lapcard",{
        options:{
            title:'',
            resposta:'resposta',
            statusBar:true,
            verified:true,
            variation:0
        },
        _create:function(dados, _callback){
            var self = this;
            this.element.append(dashcard["hb/cards.hbs"]());
            
            //this.body.hide();
            setTimeout(function(){
                self._setVerified(true);
            },3000);
            var id = this.element.attr('id');
            // store components tags
            this.body = this.element.find('#body-content');
            this.titleTag = this.element.find("#title");
            this.verifiedTag = this.element.find("#verified");
            this.goto = this.element.find('.goto');
            this.variation = this.element.find("#variation");
            this.lastvariation = this.element.find("#lastvariation");
            this.lastcaret = this.element.find("#lastcaret");
            this.goto.on('click',function(){
                
                
            });
            //console.log(this._title);
        },
        _title:function(title){
            this.titleTag.text(title);
        },
        _setVerified:function(verified){
            if(verified){
                this.verifiedTag.attr('class', 'fa fa-check');
                this.verifiedTag.css('color','blue');
            }else{
                this.verifiedTag.attr('class', 'fa fa-exclamation');
                this.verifiedTag.css('color','red');
            }
        },
        /* 
        Função que define a cor da borda superior do card, que
        serve como status 
        @param boolean
        */
        _setStatusBar:function(active){
            
            /*if(active)
                this.element.css("border-top","solid 2px lightsteelblue");
            else
                this.element.css("border-top","solid 2px red");*/
        },
        _setLastVariation:function(variation){
            if(variation < 0){
                this.variation.css('color','red');
                this.variation.children("#lastcaret").attr('class','fa fa-caret-down');
                
            }else{
                this.variation.css('color','blue');
                if(variation > 0)
                    this.variation.children("#lastcaret").attr('class','fa fa-caret-up');
                else
                    this.variation.children("#lastcaret").attr('class','fa fa-square');
            }
            this.variation.children("#lastvariation").text(variation+"%");
        },
        _setOptions:function(options){
           this._super(options);
           this._title(options.title);
           this._setStatusBar(options.statusBar);
           this._setLastVariation(options.variation);
           console.log(this.options);
        }


        


    });

    
}(jQuery));