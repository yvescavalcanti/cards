this["dashcard"] = this["dashcard"] || {};

this["dashcard"]["hb/cards.hbs"] = Handlebars.template({"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    var helper;

  return "<div class=\"card-header\">\n            \n            <h5 id=\"title\" class=\"card-title\">"
    + container.escapeExpression(((helper = (helper = helpers.title || (depth0 != null ? depth0.title : depth0)) != null ? helper : helpers.helperMissing),(typeof helper === "function" ? helper.call(depth0 != null ? depth0 : (container.nullContext || {}),{"name":"title","hash":{},"data":data}) : helper)))
    + "</h5>\n            <h7 class=\"card-subtitle mb-2 text-muted\" id=\"lastdate\"></h7>\n            \n        </div>\n        <div class=\"card-body\">\n            \n            <div class=\"row\" id=\"body-content\" style=\"height:100%;\">\n                <div class=\"col-sm-4 my-auto variation\" id=\"variation\">\n                    <span class=\"card-text\" id=\"lastvariation\"></span>\n                    <i id=\"lastcaret\"></i>\n                    \n                </div>\n                <div class=\"col-sm-8 graph\">\n                    \n                </div>\n            </div>\n        </div>\n        <div class=\"card-footer\">\n            \n            <button type=\"button\" class=\"btn btn-light\">\n                EDITAR\n            </button>\n            \n            <i id=\"verified\" class=\"align-middle\" style=\"font-size:26px;\"></i>\n                \n            \n                \n            \n        </div>";
},"useData":true});