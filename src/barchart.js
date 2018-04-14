define('barchart', ["d3"], function(d3){
   
    return function BarChart(){
        var width, height;
        var margin = {top:10, right:10, bottom:20, left:10};
        var plotHeight, plotWidth;
        var svg;
        var plotArea;
        var x,y,xf,yf,xs = d3.scaleBand(),ys = d3.scaleLinear();
        var dados = [];
        var updateData;
        var xLabels = null;
        var color = d3.scaleOrdinal(d3.schemeCategory10);
        function chart(selection){
            selection.each(function(){
                var el = d3.select(this);
                el.html("");
                var limits = el.node().getBoundingClientRect();
                width = limits.width;// > 78 ? limits.width : 78;
                height = limits.height > 78 ? limits.height : 78;
                plotHeight = height - margin.top - margin.bottom;
                plotWidth = width - margin.left - margin.right;
                svg = el.append('svg').attr('width',width).attr('height',height);
                //svg.call(loadShadow);
                
                plotArea = svg.append('g')
                    .attr("transform", "translate("+margin.left+","+margin.top+")");
                // desenhe o gráfico apenas se houverem pelo menos 2 lançamentos
                if(dados.length>1){
                    color.domain(dados.map(function(d){return xf(d);}));
                    xs.rangeRound([0,plotWidth]).domain(dados.map(function(d){return xf(d);}))
                    .padding(0.2);
                    ys.range([plotHeight,0]).domain([0,d3.max(dados,function(d){return yf(d)})]);
                    var axis = svg.append('g')
                        .attr("transform","translate("+margin.left+","+(height-margin.bottom)+")")
                        .attr('class','bt-axis');
                    if(xLabels!==null)
                        axis.call(d3.axisBottom(xs).tickFormat(xLabels));
                    else
                        axis.call(d3.axisBottom(xs));
                    plotArea.selectAll('rect.bar').data(dados).enter().append('rect')
                        .attr("class","bar")
                        .attr('x', function(d){return xs(xf(d));})
                        .attr('y', function(d){return ys(yf(d));})
                        .attr('width', xs.bandwidth())
                        .attr('height',function(d){return plotHeight - ys(yf(d));})
                        .style('fill', function(d){return color(xf(d));})
                        .on("mouseover",function(d){
                            d3.select('body').append('div').style('position','absolute')
                            .style('text-align','center')
                            .attr('class','tool-tip')
            	            .html(toolTipText({x:xf(d),y:yf(d)}))	
                            .style("left", (d3.event.pageX + 5) + "px")		
                            .style("top", (d3.event.pageY - 28) + "px");
                        })
                        .on("mouseout",function(){d3.select('.tool-tip').remove();});
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
            if(!arguments.length) return dados;
            else dados = d;
            if(typeof updateData === 'function')
                updateData();
            return chart;
        }
        
         chart.xLabels = function(d){
            xLabels = d;
            return chart;
        }
        
        chart.toolTipText = function(f){
    		if(!arguments.length) return toolTipText;
    		toolTipText = f;
    		return chart;
    	};
    
        return chart;
    };
    
    




});
