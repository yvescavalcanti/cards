function StackedBarChart(){
    var width, height;
    var margin = {top:10, right:10, bottom:20, left:10};
    var plotHeight, plotWidth;
    var svg;
    var plotArea;
    var x,y,xf,yf,xs,ys;
    var dados, keys, series;

    function stackMin(serie) {
        return d3.min(serie, function(d) { return d[0]; });
    }
      
    function stackMax(serie) {
        return d3.max(serie, function(d) { return d[1]; });
    }

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
            plotArea = svg.append('g')
                .attr("transform", "translate("+margin.left+","+margin.top+")");
            xs.rangeRound([0,plotWidth]).domain(dados.map(function(d){return d.month;}))
            .padding(0.2);
            
            series = d3.stack().keys(keys)(dados);
            //console.log(series);
            //console.log(series);
            ys.range([plotHeight,0])
            .domain([d3.min(series, stackMin),d3.max(series,stackMax)]);
            svg.append('g')
            .attr("transform","translate("+margin.left+","+(height-margin.bottom)+")")
            .attr('class','bt-axis')
            .call(d3.axisBottom(xs));

            
            var i = 0;
            var z = d3.scaleOrdinal(d3.schemeCategory10);
            plotArea.selectAll('g')
            .data(series)
            .enter().append("g").attr('class','fullbar')
            .attr("fill", function(d) { return z(d.key); })
            .selectAll("rect")
            .data(function(d) { return d; })
            .enter()
            .append("rect")
              .attr("width", xs.bandwidth())
              .attr("x", function(d) { return xs(d.data.month); })
              .attr("y", function(d) { return ys(d[1]); })
              .attr("height", function(d) { return Math.abs(ys(d[0]) - ys(d[1])); });
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

    chart.keys = function(k){
        keys = k;
        return chart;
    }

    return chart;
};

