function loadShadow(selection){// filters go in defs element
    selection.each(function(){
        var svg = d3.select(this);
        var defs = svg.append("defs");
        
        // create filter with id #drop-shadow
        // height=130% so that the shadow is not clipped
        var filter = defs.append("filter")
            .attr("id", "drop-shadow")
            .attr("height", "100%");
        
        // SourceAlpha refers to opacity of graphic that this filter will be applied to
        // convolve that with a Gaussian with standard deviation 3 and store result
        // in blur
        filter.append("feGaussianBlur")
            .attr("in", "SourceAlpha")
            .attr("stdDeviation", 5)
            .attr("result", "blur");
        
        // translate output of Gaussian blur to the right and downwards with 2px
        // store result in offsetBlur
        filter.append("feOffset")
            .attr("in", "blur")
            .attr("dx", 1)
            .attr("dy", 0)
            .attr("result", "offsetBlur");
        
        // overlay original SourceGraphic over translated blurred opacity by using
        // feMerge filter. Order of specifying inputs is important!
        var feMerge = filter.append("feMerge");
        
        feMerge.append("feMergeNode")
            .attr("in", "offsetBlur")
        feMerge.append("feMergeNode")
            .attr("in", "SourceGraphic");
    });

}

function BarChart(){
    var width, height;
    var margin = {top:10, right:10, bottom:20, left:10};
    var plotHeight, plotWidth;
    var svg;
    var plotArea;
    var x,y,xf,yf,xs,ys;
    var dados;
    function chart(selection){
        selection.each(function(){
            var el = d3.select(this);
            el.html("");
            var limits = el.node().getBoundingClientRect();
            width = limits.width;
            height = limits.height;
            plotHeight = height - margin.top - margin.bottom;
            plotWidth = width - margin.left - margin.right;
            svg = el.append('svg').attr('width',width).attr('height',height);
            //svg.call(loadShadow);
            plotArea = svg.append('g')
                .attr("transform", "translate("+margin.left+","+margin.top+")");
            xs.rangeRound([0,plotWidth]).domain(dados.map(function(d){return xf(d);}))
            .padding(0.2);
            ys.range([plotHeight,0]).domain([0,d3.max(dados,function(d){return yf(d)})]);
            
            svg.append('g')
            .attr("transform","translate("+margin.left+","+(height-margin.bottom)+")")
            .attr('class','bt-axis')
            .call(d3.axisBottom(xs));
            plotArea.selectAll('rect.bar').data(dados).enter().append('rect')
                .attr("class","bar")
                .attr('x', function(d){return xs(xf(d));})
                .attr('y', function(d){return ys(yf(d));})
                .attr('width', xs.bandwidth())
                .attr('height',function(d){return plotHeight - ys(yf(d));});
                //.style("filter", "url(#drop-shadow)");
            });
    }

    chart.xFunction = function(f){
        if(!arguments.length) return x;
        else xf = f;
        return chart;
    }

    chart.yFunction = function(f){
        if(!arguments.length) return x;
        else yf = f;
        return chart;
    }

    chart.xScale = function(s){
        if(!arguments.length) return xs;
        else xs = s;
        return chart;
    }

    chart.yScale = function(s){
        if(!arguments.length) return ys;
        else ys = s;
        return chart;
    }

    chart.dados = function(d){
        dados = d;
        return chart;
    }

    return chart;
};


function BarChart2(){
    var width, height;
    var margin = {top:10, right:10, bottom:20, left:10};
    var plotHeight, plotWidth;
    var svg;
    var plotArea;
    var x,y,xf,yf,xs,ys;
    var dados;
    function chart(selection){
        selection.each(function(){
            draw = function(){
            var el = d3.select(this);
            el.html("");
            var limits = el.node().getBoundingClientRect();
            width = limits.width;
            height = limits.height;
            plotHeight = height - margin.top - margin.bottom;
            plotWidth = width - margin.left - margin.right;
            svg = el.append('svg').attr('width',width).attr('height',height);
            //svg.call(loadShadow);
            plotArea = svg.append('g')
                .attr("transform", "translate("+margin.left+","+margin.top+")");
            xs.rangeRound([0,plotWidth]).domain(dados.map(function(d){return xf(d);}))
            .padding(0.2);
            ys.range([plotHeight,0]).domain([0,d3.max(dados,function(d){return yf(d)})]);
            
            svg.append('g')
            .attr("transform","translate("+margin.left+","+(height-margin.bottom)+")")
            .attr('class','bt-axis')
            .call(d3.axisBottom(xs));
            plotArea.selectAll('rect.bar').data(dados).enter().append('rect')
                .attr("class","bar")
                .attr('x', function(d){return xs(xf(d));})
                .attr('y', function(d){return ys(yf(d));})
                .attr('width', xs.bandwidth())
                .attr('height',function(d){return plotHeight - ys(yf(d));})
                .style("filter", "url(#drop-shadow)");
            }
        });
    }

    chart.xFunction = function(f){
        if(!arguments.length) return x;
        else xf = f;
        return chart;
    }

    chart.yFunction = function(f){
        if(!arguments.length) return x;
        else yf = f;
        return chart;
    }

    chart.xScale = function(s){
        if(!arguments.length) return xs;
        else xs = s;
        return chart;
    }

    chart.yScale = function(s){
        if(!arguments.length) return ys;
        else ys = s;
        return chart;
    }

    chart.dados = function(d){
        dados = d;
        return chart;
    }

    chart.dados = function(){
        if(typeof draw === 'function')
            draw();
        return chart;
    }

    return chart;
};

