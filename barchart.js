function ttteste(d){
    console.log(this.xs(d));
}
/**
 * 
 */
function BarChart(){
    var width, height;
    var margin = {top:10, right:10, bottom:20, left:10};
    var plotHeight, plotWidth;
    var svg;
    var plotArea;
    var x,y,xf,yf,xs = d3.scaleBand(),ys=d3.scaleLinear();
    var dados = [];
    var updateData;
    function chart(selection){
        selection.each(function(){
            //se dados não estiver vazio desenhe o gráfico
            if(dados.length>0){
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
                if(dados!==[]){
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
                    .on('mouseover',function(d){
                        //var x = xs(xf(d));
                        //var y = ys(yf(d));
                        console.log("mouseover");
                        ttteste.bind(this)(d);
                    });
                }
            } // fim do if dados.length
            });
    }

    /**
     * @method xFunction Define função a ser aplicada a um dado para extrair valor 
     * referente ao eixo x.
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
        if(!arguments.length) return dados;
        else dados = d;
        if(typeof updateData === 'function')
            updateData();
        return chart;
    }

    return chart;
};



