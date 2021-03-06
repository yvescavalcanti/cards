/**
 * @file card-widget
 * @author LAPIDATA TECNOLOGIA EM SERVICOS EMPRESARIAIS LTDA
 * @version 1.0
 * 
 * <h3>Aplicação</h3>
 * Geração de cards customizados com um ou dois gráficos.
 * Os cards são denominados <strong>card-widget</strong> e <strong>card-widget-two</strong>,
 * possuindo o primeiro um gráfico e segundo dois.
 * Os gráficos podem ser de qualquer tipo desde que sigam o padrão apresentado pelos
 * já desenvolvidos.
 * Projeto baseado nas bibliotecas, knockout.js, require.js, d3.js e bootstrap
 * Os cards apresentam um ou dois gráficos.
 */

 /**
  * @module card-widget
  */
define('card-widget',['ko','d3'],function(ko,d3){

    ko.bindingHandlers.drawChart = {
        
    init: function(element,valueAccessor) {
        "use strict";
        var self = this;
        var values = ko.unwrap(valueAccessor());
        
        //if(values.stage()===0)
           // $(element).html(values.message);
        window.addEventListener("resize", function(){d3.select(element).call(values.metodo);});
        d3.select(".closebtn").on('click',function(e){
            d3.select(element).call(values.metodo);
        });
    },
    update: function(element, valueAccessor,allBindings) {
        "use strict";
        var metodo = ko.unwrap(valueAccessor()).metodo;
        var dados = ko.unwrap(valueAccessor()).data;
        var stage = ko.unwrap(valueAccessor()).stage;
        
        switch (stage()){
            case 1:
                d3.select(element).html("");
                d3.select(element).append('div').attr('class','g-message').html("Buscando dados no servidor...");
            break;
            case 2:
                if(metodo && dados().length>0)
                    d3.select(element).call(metodo.dados(dados()));
                else
                    d3.select(element).html("Clique em editar");
                break;
        }
        
    }
};
    
/**
 * @class CardModel
 * @description Classe que representa o modelo de uma classe
 * @param {*} params
 * @param {String} params.title {String} Titulo do card, default=""
 * @param {Number} params.status Status do card, default=0. Este parâmetro auxilia na estilização da
 * borda superior do card. Pode ser 0 ou 1.
 * @param {boolean} params.moreIsGood Default=true, quando um card apresentar um valor de variação,
 * este valor serve para determinar se o crescimento desta variação é boa ou ruim, auxiliando
 * na estilização do card.
 * @param {Chart} params.plot
 * @param {function} formatValueOne função que determina a formatação do valueone. Deve ser
 * função que recebe um valor e retorna outro no formato desejado.
 * @param {function} formatValueTwo idem a formatValueOne, porém, referindo-se a valuetwo
 */
function CardModel(params){
    var self = this;
    //console.log(params);
    this.title = ko.observable(params.title || "");
    self.status = ko.observable(params.status || 0);
    self.computedStatus = ko.pureComputed(function(){
    	if(this.status() === 1)
    		return 'solid 2px blue';
    	else
    		return 'solid 2px red';
    },self);
    self.valueone = ko.observable(params.valueone || "");
    self.valuetwo = ko.observable(params.valuetwo || 0);
    self.getValueOne = ko.computed(function(){
        
        if (params.formatValueOne)
            return params.formatValueOne(this.valueone());
        else 
            return this.valueone();
    },this);
    self.getValueTwo = ko.computed(function(){
        if(params.formatValueTwo)
            return params.formatValueTwo(this.valuetwo());
        else
            return this.valuetwo();
    },this);
    this.dados = ko.observableArray(params.dados||[]);
    self.gotoClick = function(){
            $('#content').load(window.urlBase+this.goto);
    }
    this.goto = params.goto || "";
    this.moreIsGood = params.moreIsGood && true;
    this.plot = params.plot || null;
    this.adapter = params.adapter || null;
    this.caret = ko.pureComputed(function(){
        
        if(this.valuetwo()===0)
          return "fas fa-foo";
        else return this.valuetwo()>0 ? "fas fa-caret-up" : "fas fa-caret-down";
        
    },this);
    this.goodOrBad = ko.pureComputed(function(){
        if(this.valuetwo()>0)
            return this.moreIsGood ? "blue" : "red";
        else if(this.valuetwo()<0)
            return this.moreIsGood ? "red" : "blue";
    },this);

    self.verified = ko.observable(params.verificado || -1);
    self.verify = ko.pureComputed(function(){
    	switch(self.verified()){
    		case -1:
    			return "fas fa-foo";
    			break;
    		case 1:
    			return "fas fa-check";
    			break;
    		default:
    			return "fas fa-exclamation";
    			break;
    	}
    },this);
   
    this.stage = ko.observable(2);
	this.visible = ko.observable('true');
    
} 

    ko.components.register('card-widget', {
            viewModel: function(params){
            	return params.model;
            },
            template:
                '<div class="card mt-2" data-bind="style:{\'border-top\':computedStatus()}" id="base-card">\
		<div class="card-header">\
			<h4 class="card-title" data-bind="text:title"></h4>\
			<i id="verified" class="" data-bind="css:verify()" style="font-size:26px;"></i>\
		</div>	\
		<div class="card-body row" data-bind="visible:dados().length>0">\
        	<div class="col-sm-6 my-auto variation" data-bind="style:{color:goodOrBad(),visibility:visible()}">\
        	        	<p class="card-text" data-bind="text:getValueOne()"></p>\
        	        	<span class ="card-text" data-bind="text:getValueTwo()"></span>\
        	        	<i data-bind="css:caret()" class=""></i>\
            </div>\
        	<div id="grafico" class="col-sm-6 graph" data-bind="drawChart:{stage:stage,data:dados,metodo:plot}">\
        	</div>\
        </div>\
        <div class="card-body" data-bind="visible:dados().length===0">\
            <div class="alert alert-success">Clique em editar para adicionar registros</div>\
        </div><!-- FIM BODY CARD -->\
		<div class="card-footer float-right">\
			<button type="button" id="goto" data-bind="click:gotoClick" class="btn btn-light">\
                    EDITAR\
            </button>\
		</div><!-- FIM DO CARD FOOTER -->\
	</div><!-- FIM DO CARD -->'
        });
        
/**
 * @class DoubleChartCardModel
 * @extends CardModel
 * @param {*} params Além dos parâmetros herdados de CardModel os seguintes atributos
 * devem/podem ser definidos
 * @param {Chart} params.plot2 Instância de gráfico que será utilizado para o segundo
 * gráfico exibido no card
 * @param {Array.<Object>} params.dados2 Array de entidades que fornecerão valores para
 * o segundo gráfico do card. Default = []
 */
function DoubleChartCardModel(params){
    this.dados2 = ko.observableArray((params.dados2||[]));
    this.plot2 = params.plot2 || null;
    CardModel.call(this, params);
}

DoubleChartCardModel.prototype = Object.create(CardModel.prototype);
DoubleChartCardModel.prototype.constructor = DoubleChartCardModel;

ko.components.register('card-widget-two', {
            viewModel: function(params){
            	return params.model;
            },
            template:
                '<div class="card" data-bind="style:{\'border-top\':computedStatus()}" id="base-card">\
		<div class="card-header">\
			<h4 class="card-title" data-bind="text:title"></h4>\
			<i id="verified" class="" data-bind="css:verify()" style="font-size:26px;"></i>\
		</div>	\
		<div class="card-body row" data-bind="visible:dados().length>0">\
        	<div class="col-sm-4 my-auto variation" data-bind="style:{color:goodOrBad(),visibility:visible()}">\
        	        	<p class="card-text" data-bind="text:getValueOne()"></p>\
        	        	<span class ="card-text" data-bind="text:getValueTwo()"></span>\
        	        	<i data-bind="css:caret()"></i>\
            </div>\
        	<div id="grafico" class="col-sm-4 graph" data-bind="drawChart:{stage:stage, data:dados,metodo:plot}">\
        	</div>\
        	<div id="grafico" class="col-sm-4 graph" data-bind="drawChart:{stage:stage, data:dados2,metodo:plot2}">\
        	</div>\
        </div>\
        <div class="card-body" data-bind="visible:dados().length===0">\
            <div class="alert alert-success">Clique em editar para adicionar registros</div>\
        </div><!-- FIM BODY CARD -->\
		<div class="card-footer float-right">\
			<button type="button" id="goto" data-bind="click:gotoClick" class="btn btn-light">\
                    EDITAR\
            </button>\
		</div><!-- FIM DO CARD FOOTER -->\
	</div><!-- FIM DO CARD -->'
});

return {Card : CardModel, DoubleCard: DoubleChartCardModel};
});
