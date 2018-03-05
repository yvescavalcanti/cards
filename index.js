/**
 * @fileoverview LAPiDATA card widget - JQuery based
 * @author Yves Cavalcanti
 * @version 1.0
 * 
 */

 /**
  * @exports $ as jQuery
  */
(function($){

    /**
     * @name $.lapicard
     * @namespace $.lapicard
     * @description
     * <p>Função de instanciação de um lapicard</p>
     * @example
     * $(selector).lapicard()
     * 
     */
    
     /**
      * 
     * @name $.lapicard#options
     * @namespace $.lapicard#options
     * @property {Number} height Define a altura do card
     * @property {function} setCaret 
     * Função utilizada para definir a barra de status do card. Deve retornar
     * <ul>
     * <li>0 -> azul</li>
     * <li>1 -> vermelho</li>
     * <li>2 -> laranja</li>
     * <li>3 -> amarelo</li>
     * <li>4 -> verde</li>
     * </ul>
     * @property {function} setChecked 
     * Função utilizada para definir ícone checked, deve retornar true para cheacked or false para unchecked
     * @description
     * Conjunto de opções de um lapicard. Você pode definir uma ou mais opções em cada invocação.
     * @example
     * $(selector).lapicard({height:"0.2em",setCaret:function(v){},...})
     * 
     */
    
    $.widget("nmk.lapicard",
        {
        
        options:{
            title:'',
            resposta:'resposta',
            statusBar:0,
            verified:true,
            variation:0,
            setCaret:function(){
                throw new Error("setCaret not implemented yet");
            },
            setChecked:function(){
                throw new Error("setChecked not implemented yet");
            }

        },
        _create:function(){
            var self = this;
            this.element.append(dashcard["hb/cards.hbs"]({teste:this.teste}));
            
            //this.body.hide();
            setTimeout(function(){
                self._setVerified(false);
                //console.log("timeout");
                //self._setStatusBar(0);
            },3000);
            var id = this.element.attr('id');
            // store components tags
            this.body = this.element.find('#body-content');
            this.titleTag = this.element.find("#title");
            this.verifiedTag = this.element.find("#verified");
            this.goto = this.element.find('#goto');
            this.variation = this.element.find("#variation");
            this.lastvariation = this.element.find("#lastvariation");
            this.lastcaret = this.element.find("#lastcaret");
            
            // configurando path de destino do botão
            this.goto.on("click", function(){
                alert(self.element.attr('data-link'));
                $('#content').load(window.urlBase + self.element.attr('data-link'));
            });
                
            
            //console.log(this._title);
        },
        teste:function(){
            return alert();
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


        /**
         *  Função que define a cor da borda superior do card, que
         *  serve como status 
         *  @param {boolean} active
         */
        
        
        _setStatusBar:function(stage){
            console.log("stage:"+stage);
            var color;
            switch (stage){
                case 0:
                    color = "blue";
                break;
                case 1:
                    color = "red";
                break;
                case 2:
                    color = "orange";
                break;
                case 3:
                    color = "green";
                break;
                case 4:
                break;
                case 5:
                break;
                
                
            }
            console.log('color:'+color);
            this.element.css('border-top','0.2em solid '+color);
            /*if(active)
                this.element.css("border-top","solid 2px lightsteelblue");
            else
                this.element.css("border-top","solid 2px red");*/
        },
        /**
         * Função que define o campo de variação
         * @param {Number} variation - Taxa de variação
         */
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
           this._setStatusBar(options.statusBar);
           console.log(this.options);
        }


        


    });

    
}(jQuery));