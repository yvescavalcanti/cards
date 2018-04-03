/**
 * @param {String} titulo
 * @param {*} params
 * @param {String} gt url para edição dos dados
*/
function CardModel(params){
    var self = this;
    this.title = params.titulo || "";
    this.dados = ko.observableArray((params.dados||[]));
    this.goto = params.gott || "";
    this.plot = params.plot || null;
    self.gotoClick = function(){
        $('#content').load(window.urlbase+this.goto);
    }

    if(typeof params.checkFunction === 'function')
        this.ckFunc = params.checkFunction.bind(this);
    else
        this.ckFunc = function(){
            return true;
        };

    this.checked = ko.computed(function(){
        var c = this.ckFunc(this.dados());
        return c;
    },this);

    
}

ko.components.register('linechart',{
    viewModel: function(w,h){
        this.width = w;
        this.height = h;
    },
    template:'<svg data-bind="{attr:{width:width,height" '
});
ko.components.register('card-widget', {
    viewModel: function(params){
        this.title = params.card.title;
        this.goto = params.card.goto;
        this.dados = params.card.dados;
        this.plot = params.card.plot;
    },
    template:
        '<div class="card shadow">\
            <div class="card-header">\
                <h5 id="title" data-bind="text:title" class="card-title"></h5>\
                <h7 class="card-subtitle mb-2 text-muted" id="lastdate" ></h7>\
            </div>\
            <div class="card-body">\
                <div class="row" id="body-content" style="height:100%;">\
                <div class="col-sm-6 my-auto variation" id="variation">\
                <span class="card-text" id="lastvariation"></span>\
                <i id="lastcaret"></i></div>\
                <div id="grafico" class="col-sm-6 graph" data-bind="lineChart:{data:dados,metodo:plot}"></div>\
                </div>\
            </div>\
            <div class="card-footer">\
                <button type="button" id="goto" data-bind="click:gotoClick" class="btn btn-light">\
                    EDITAR\
                </button>\
                <i id="verified" class="align-middle" data-bind="text:goto" style="font-size:26px;"></i>\
            </div>\
        </div>'
});
