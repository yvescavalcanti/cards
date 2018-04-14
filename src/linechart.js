/**
 * @module linechart
*/
define('linechart', ['d3'], function(d3){
    /**
     * @class LineChart
     * @return {function} função geradora de gráficos
     * */    
    function LineChart(){
    var width, height;
    var margin = {top:10, right:10, bottom:20, left:10};
    var plotHeight, plotWidth;
    var svg;
    var plotArea;
    var x,y,xf,yf,xs = d3.scaleBand(),ys=d3.scaleLinear();
    var dados = [], xLabels;
    var dotStyle = function(d){
        return (d === 0);
    };
        function chart(selection){
        selection.each(function(){
            // se houver registros em dados desenhe
            if(dados.length>0){
                
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
                xs.range([0,plotWidth]).domain(dados.map(function(d){return xf(d);}));
                //.padding(0.2);
                ys.range([plotHeight,0]).domain([0,d3.max(dados,function(d){return yf(d)})]);
                
                var axis = svg.append('g')
                .attr("transform","translate("+margin.left+","+(height-margin.bottom)+")")
                .attr('class','bt-axis');
                if(xLabels!==null)
                    axis.call(d3.axisBottom(xs).tickFormat(xLabels));
                else
                    axis.call(d3.axisBottom(xs));

                var line = d3.line()
                .x(function(d){return xs(xf(d))+xs.bandwidth()/2;})
                .y(function(d){return ys(yf(d))});
                //console.log(this.plotArea);
                plotArea.append("path")
                .datum(dados)
                .attr("class", "line")
                .attr("d", line);
                
                plotArea.selectAll('dot').data(dados).enter().append('circle')
                    .attr('r',3)
                    .attr('cx',function(d){return xs(xf(d))+xs.bandwidth()/2;})
                    .attr('cy',function(d){return ys(yf(d));})
                    //.attr('class','circle')
                    .attr("class", function(d){
                        if (dotStyle(d))
                            return "circle-good";
                        else
                            return "circle-bad";
                    })
                    .on("mouseover",function(d){
                        d3.select('body').append('div').style('position','absolute')
                        .style('text-align','center')
                        .attr('class','tool-tip')
                        .html(toolTipText({x:xf(d),y:yf(d)}))	
                        .style("left", (d3.event.pageX + 5) + "px")		
                        .style("top", (d3.event.pageY - 28) + "px");
                    })
                    .on("mouseout",function(){d3.select('.tool-tip').remove();});
                } // fim do if de comprimento de dados
            });
    }
    /**
     * @method xFunction
     * @param {function} f 
     * @description define função que retorna valores para o eixo X.
     */
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

    chart.xLabels = function(d){
        if(!arguments.length) return xLabels;
        xLabels = d;
        return chart;
    }

    /**
     * @method dotStyle
     * @param {function} f
     * @description Define função para avaliação de dados para auxiliar na 
     * estilização dos pontos do gráfico.
     * @return {Number} Valores inteiros para avaliação. Sugestão retorna 0 ou 1.
     */
    chart.dotStyle = function(f){
        if(!arguments.length) return dotStyle;
        dotStyle = f;
        return chart;
    };
    
    chart.toolTipText = function(f){
    	if(!arguments.length) return toolTipText;
    	toolTipText = f;
    	return chart;
    };

    return chart;
    };
    
    return LineChart;
});
