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
    var cardBody = '<div class="col-sm-4 my-auto variation" id="variation">';
        cardBody +='<span class="card-text" id="lastvariation"></span>';
        cardBody +='<i id="lastcaret"></i></div>';
        cardBody +='<div class="col-sm-8 graph"></div>';
    
    /**
     * @name $.lapicard
     * @namespace $.lapicard
     * @description
     * <p>Função de instanciação de um lapicard</p>
     * <p>Você deve primeiro instanciar um lapicard, e depois pode fornecer opções em uma
     * segunda invocação do plugin.</p>
     * @example
     * $(selector).lapicard()
     * 
     */
    
     /**
      * 
     * @name $.lapicard#options
     * @namespace $.lapicard#options
     * @property {Number} height Define a altura do card
     * @property {function} setStatus 
     * Função utilizada para definir a barra de status do card. Deve retornar
     * <ul>
     * <li>0 -> azul</li>
     * <li>1 -> vermelho</li>
     * <li>2 -> laranja</li>
     * <li>3 -> amarelo</li>
     * <li>4 -> verde</li>
     * </ul>
     * @property {function} setCaret 
     * <p>Função utilizada para avaliar os dados do último lançamento, e, assim definir cor e ícone (caret) relacionado à variação provocada pelo último lançamento.</p>
     * <p>Deve retornar -1 para vermelho, 1 para azul</p>
     * <p>O sentido do caret é definido segundo o sinal da variação.</p>
     * @property {function} graphConstructor
     * <p>Propriedade que recebe a função geradora do gráfico. Esta será invocada quando do recebimento dos dados</p>
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
            statusBar:0,
            verified:true,
            variation:0,
            setCaret:function(v){
                if(v === 0)
                return 0;
               else if(v<0) return -1;
               else return 1;
            },
            setChecked:function(){
                throw new Error("setChecked not implemented yet");
            },
            setStatus:function(v){
                return v;
            },
            graph:null
            

        },
        _create:function(){
            var self = this;
            
            var title = this.element.attr('title');
            this.element.append(dashcard["hb/cards.hbs"]({'title':title}));
            this.body = this.element.find('#body-content');
            
            
            var id = this.element.attr('id');
            // store components tags
                       
            this.titleTag = this.element.find("#title");
            this.verifiedTag = this.element.find("#verified");
            this.goto = this.element.find('#goto');
            this.lastvariation = this.element.find("#lastvariation");
            this.lastcaret = this.element.find("#lastcaret");
            
            // configurando path de destino do botão
            this.goto.on("click", function(){
                alert(self.element.attr('data-link'));
                $('#content').load(window.urlBase + self.element.attr('data-link'));
            });
            //this.setWaiting();    
            
            //console.log(this._title);
        },
        setWaiting:function(){
            this.body.html($('#loading-icon').text());
        },
        /**
         * @param {Object} data 
         * <ul>
         *  <li>status</li>
         *  <li>variation</li>
         *  <li>verified</li>
         * </ul>
         * 
         */
        loadContent:function(data){
            
            
            this._setVerified(data.verified);
            this._setLastVariation(data.variation);
            this._setStatusBar(this.options.setStatus(data.status));
        },
        _title:function(title){
            this.titleTag.text(title);
        },
        _setVerified:function(verified){
            this.verifiedTag.hide(500);
            if(verified){
                this.verifiedTag.attr('class', 'fa fa-check');
                this.verifiedTag.css('color','blue');
            }else{
                this.verifiedTag.attr('class', 'fa fa-exclamation');
                this.verifiedTag.css('color','red');
            }
            this.verifiedTag.show(500);
        },


        /**
         *  Função que define a cor da borda superior do card, que
         *  serve como status 
         *  @param {boolean} active
         */
        
        
        _setStatusBar:function(stage){
            
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
            
            this.element.css('border-top','0.2em solid '+color);
            
        },
        /**
         * Função que define o campo de variação
         * @param {Number} variation - Taxa de variação
         */
        _setLastVariation:function(variation){
            this.variation = this.element.find("#variation");
            this.variation.hide();
            if(this.options.setCaret(variation) === -1)
                this.variation.css('color','red');
            else
                this.variation.css('color','blue');
            if(variation < 0)
                this.variation.children("#lastcaret").attr('class','fa fa-caret-down');
            else if(variation === 0)
                this.variation.children("#lastcaret").attr('class','fa fa-square');
            else
                this.variation.children("#lastcaret").attr('class','fa fa-caret-up');
            
            this.variation.children("#lastvariation").text(variation+"%");
            this.variation.fadeIn(500);
            
        },
        _setOptions:function(options){
           this._super(options);
           
           
        }


        


    });

    
}(jQuery));

