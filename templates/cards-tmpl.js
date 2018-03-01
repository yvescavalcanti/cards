this["dashcard"] = this["dashcard"] || {};

this["dashcard"]["hb/cards.hbs"] = Handlebars.template({"1":function(container,depth0,helpers,partials,data) {
    return "            <div class=\"col-sm-1 circle-icon\"    style=\"color:red\"><i class=\"fa fa-exclamation\" style=\"size:16px\"></i></div>\n";
},"3":function(container,depth0,helpers,partials,data) {
    return "            <div class=\"col-sm-1 circle-icon\"    style=\"color:green\"><i class=\"fa fa-check\" style=\"size:16px\"></i></div>\n";
},"5":function(container,depth0,helpers,partials,data) {
    var helper;

  return "                    <p class=\"card-text\"     style=\"color:red\"><i class=\"fa fa-caret-down\"></i> "
    + container.escapeExpression(((helper = (helper = helpers.tax || (depth0 != null ? depth0.tax : depth0)) != null ? helper : helpers.helperMissing),(typeof helper === "function" ? helper.call(depth0 != null ? depth0 : (container.nullContext || {}),{"name":"tax","hash":{},"data":data}) : helper)))
    + "%</p>\n";
},"7":function(container,depth0,helpers,partials,data) {
    var helper;

  return "                    <p class=\"card-text\"     style=\"color:lightsteelblue\"><i class=\"fa fa-caret-up\"></i> "
    + container.escapeExpression(((helper = (helper = helpers.tax || (depth0 != null ? depth0.tax : depth0)) != null ? helper : helpers.helperMissing),(typeof helper === "function" ? helper.call(depth0 != null ? depth0 : (container.nullContext || {}),{"name":"tax","hash":{},"data":data}) : helper)))
    + "%</p>\n";
},"compiler":[7,">= 4.0.0"],"main":function(container,depth0,helpers,partials,data) {
    var stack1, helper, alias1=depth0 != null ? depth0 : (container.nullContext || {}), alias2=helpers.helperMissing, alias3="function", alias4=container.escapeExpression;

  return "<div class=\"card-header\">\n            <div class=\"row\"><div class=\"col-sm-10\">\n            <h2 id=\"title\">"
    + alias4(((helper = (helper = helpers.title || (depth0 != null ? depth0.title : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"title","hash":{},"data":data}) : helper)))
    + "</h2>\n            </div>\n            \n"
    + ((stack1 = (helpers.ifCond || (depth0 && depth0.ifCond) || alias2).call(alias1,(depth0 != null ? depth0.checked : depth0),{"name":"ifCond","hash":{},"fn":container.program(1, data, 0),"inverse":container.program(3, data, 0),"data":data})) != null ? stack1 : "")
    + "            </div>\n        </div>\n        <div class=\"card-body\">\n            <div class=\"row\" style=\"height:100%;\">\n                <div class=\"col-sm-4 my-auto\">\n                    <p class=\"card-text\" id=\"last_input\">"
    + alias4(((helper = (helper = helpers.last_input || (depth0 != null ? depth0.last_input : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"last_input","hash":{},"data":data}) : helper)))
    + "</p>\n                    \n"
    + ((stack1 = (helpers.ifCond || (depth0 && depth0.ifCond) || alias2).call(alias1,(depth0 != null ? depth0.tax : depth0),{"name":"ifCond","hash":{},"fn":container.program(5, data, 0),"inverse":container.program(7, data, 0),"data":data})) != null ? stack1 : "")
    + "                </div>\n                <div style=\"background-color:red\" class=\"col-sm-8\">\n                    área do gráfico\n                </div>\n            </div>\n        </div>\n        <div class=\"card-footer align-middle\">\n            <div class=\"row\">\n                <div class=\"col-sm-10 my-auto\">\n                    <p class=\"card-text\">"
    + alias4(((helper = (helper = helpers.text || (depth0 != null ? depth0.text : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"text","hash":{},"data":data}) : helper)))
    + "</p>\n                </div>\n                <div class=\"col-sm-1\">\n                    <a class=\"goto\" href=\"#"
    + alias4(((helper = (helper = helpers.id || (depth0 != null ? depth0.id : depth0)) != null ? helper : alias2),(typeof helper === alias3 ? helper.call(alias1,{"name":"id","hash":{},"data":data}) : helper)))
    + "\">\n                            <div class=\"circle-icon\"><i class=\"fa fa-plus-circle\"></i></div>\n                    </a>\n                </div>\n            </div>\n        </div>";
},"useData":true});