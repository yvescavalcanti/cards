/**
 * @file Define classes que representam gráficos
 * @author Lapidata - Yves Cavalcanti
 * @version 1.0
 * @license BSD-3
 */
/**
 * @constructor
 * 
 */
function ToolTip(){
    function tooltip(selection){
        
        selection.each(function(){
            var parent = d3.select(this);
            var t = parent.append("g")
            .attr("class", "tooltip")
            .style("display", "none");
            
            t.append("rect")
            .attr("width", 30)
            .attr("height", 20)
            .attr("fill", "white")
            .style("opacity", 0.5);
        
            t.append("text")
            .attr("x", 15)
            .attr("dy", "1.2em")
            .style("text-anchor", "middle")
            .attr("font-size", "12px")
            .attr("font-weight", "bold")
            .text("teste");

            parent.selectAll('.bar').on("mouseover",function(d){
                var ttip = parent.select('.tooltip').style('display',null);
                var xPosition = d3.mouse(this)[0] - 15;
                var yPosition = d3.mouse(this)[1] - 25;
                ttip.attr("transform", "translate(" + xPosition + "," + yPosition + ")");
                ttip.select("text").text(d.value);
            }).on("mouseout", function(d){
                parent.select('.tooltip').style('display','none');
            });
        });
        
    }
    return tooltip;
}
function notImplemented(fname){
    return function(){
        throw new Error("Função "+fname+" não foi implementada ou apontada.");
    }
};
/**
 * @constructor
 * @param {*} opts 
 * <ul>
 * <li><strong>element:</strong>querySelector do nó pai. ex.: document.querySelector("#graph_one")</li>
 * <li><strong>xFunction(data):</strong>função que retorna valores do eixo x</li>
 * <li><strong>yFunction(data):</strong>função que retorna valores do eixo y</li>
 * </ul>
 * @example
 * var bChart = new BaseChart(
 *  {
 *      element:document.querySelector("#graph_one"),
 *      xFunction: function(data){return data.id;},
 *      yFunction: function(data){return data.value;}
 *  }
 * );
 */
function BaseChart(opts){
    this.margin = {top:10, right:10, bottom:20, left:10};
    this.data = opts.data || 0;
    this.element = document.querySelector(opts.element).querySelector("#grafico");
    this.fatherId = opts.element;
    this.xScale = opts.xScale;
    this.yScale = opts.yScale;
    this.xFunction = opts.xFunction || notImplemented("xFunction");
    this.yFunction = opts.yFunction || notImplemented("yFunction");
    
    this.assembly();
}

/**
 * @function measures 
 * @description Determina dimensões do svg, e da área de plotagem segundo dimensões do nó pai e das margens.
 */
BaseChart.prototype.measures = function(){
    this.width=this.element.offsetWidth;
    this.height=this.element.offsetHeight;
    this.plotHeight = this.height - this.margin.top - this.margin.bottom;
    this.plotWidth = this.width - this.margin.left - this.margin.right;
};

/**
 * @function assembly
 * @description Monta estrutura básica de um gráfico D3, svg e um elemento g denominado
 * plotArea para plotagem do gráfico.
 */
BaseChart.prototype.assembly = function(){
    var self = this;
    this.measures();
    //this.setScales();
    // limpando div pai
    this.element.innerHTML = '';
    // adicionando div svg
    this.svg = d3.select(this.element).append('svg')
    .attr('height',this.height).attr('width',this.width);//.call(ToolTip);
    //adicionando área do gráfico
    this.plotArea = this.svg.append('g')
        .attr("transform", "translate("+this.margin.left+","+this.margin.top+")")
        .attr("id","plotarea");
    //this.svg.style("border","2px solid red");
    if(this.data!==0)
        this.draw();
    var tool = ToolTip();
    this.svg.call(tool);
    //d3.select(window).on('resize',function(){self.resize()});
};

/**
 * 
 */
BaseChart.prototype.loadData = function(values){
    this.data = values;
    this.draw();
};
BaseChart.prototype.resize = function(){
    
    this.measures();
    //this.svg.attr('width', this.width);
    //this.xScale.rangeRound([0, this.plotWidth]);
    //this.YScale.range([0,(this.width-this.margin.top-this.margin.bottom)]);
    //d3.select(this.element).select('.bt-axis').call(d3.axisBottom(this.xScale));
    this.draw();
};

/**
 * @abstract
 */
BaseChart.prototype.setScales = function(){
    throw new Error("Função abastrata, precisa ser implementada nos filhos");
};

/**
 * @abstract
 */
BaseChart.prototype.draw = function(){
    throw new Error("Função abastrata, precisa ser implementada nos filhos");
};


/**
 * @constructor
 * @extends BaseChart 
 * @param {*} opts 
 */
function BarChart(opts){
    BaseChart.call(this,opts);
    this.barWidth = 10;
}
/**
 * Setting BarChart inheritance
 */
BarChart.prototype = Object.create(BaseChart.prototype);
BarChart.prototype.constructor = BarChart;

BarChart.prototype.setScales = function(){
    this.xScale.rangeRound([0,this.plotWidth]).domain(this.data.map(function(d){return d.id}))
    .padding(0.2);
    this.yScale.range([this.plotHeight,0]).domain([0,d3.max(this.data,function(d){return d.value})]);
};

BarChart.prototype.draw = function(){
    var self = this;
    this.setScales();
    this.bottomAxis = this.svg.append('g')
    .attr("transform","translate("+this.margin.left+","+(this.height-this.margin.bottom)+")")
    .attr('class','bt-axis')
    .call(d3.axisBottom(this.xScale));
    var i = 0;

    var barras = this.plotArea.selectAll('rect.bar')
                .data(this.data, function(d){return d.ix || (d.ix = ++i);}); 
    var bEnter = barras.enter()
    .append('rect')
    .attr("class","bar")
    .attr('x', function(d){return self.xScale(d.id);})
    .attr('y', function(d){return self.yScale(d.value);})
    .attr('width', this.xScale.bandwidth())
    .attr('height',function(d){return self.plotHeight - self.yScale(d.value);});

    
}

/**
 * @constructor
 * @extends BarChart 
 * @param {*} opts 
 */
function StackedBarChart(opts){
    BarChart.call(this,opts);
  
}
/**
 * Setting BarChart inheritance
 */
StackedBarChart.prototype = Object.create(BarChart.prototype);
StackedBarChart.prototype.constructor = StackedBarChart;

StackedBarChart.prototype.setScales = function(){
    
    this.xScale.rangeRound([0,this.plotWidth]).domain(this.data.map(function(d){return d.month}))
    .padding(0.2);
    this.yScale.range([this.plotHeight,this.margin.top])
    .domain([0,6000])
    //.rangeRound([this.plotHeight, this.margin.top]);
};

StackedBarChart.prototype.draw = function(){
    var self = this;
    //self.element.innerHTML='';
    this.series = d3.stack().keys(["apples", "bananas", "cherries", "dates"])
    (this.data);
    var i = 0;
    var z = d3.scaleOrdinal(d3.schemeCategory10);
    this.plotArea.selectAll('g')
    .data(this.series)
    .enter().append("g").attr('class','fullbar')
    .attr("fill", function(d) { return z(d.key); })
    .selectAll("rect")
    .data(function(d) { return d; })
    .enter()
    .append("rect")
      .attr("width", this.xScale.bandwidth())
      .attr("x", function(d) { return self.xScale(d.data.month); })
      .attr("y", function(d) { return Math.abs(self.yScale(d[1])); })
      .attr("height", function(d) { return Math.abs(self.yScale(d[0]) - self.yScale(d[1])); });

    
};

/**
 * @constructor
 * @extends BaseChart 
 * @param {*} opts 
 * @description Classe que representa gráfico de linha
 */
function LineChart(opts){
    BaseChart.call(this,opts);
}
/**
 * Setting Linechart inheritance
 */
LineChart.prototype = Object.create(BaseChart.prototype);
LineChart.prototype.constructor = LineChart;

LineChart.prototype.setScales = function(){
    var self = this;
    console.log(d3.max(self.data, self.xFunction));
    this.xScale.range([0,this.plotWidth]).domain([1,d3.max(self.data, self.xFunction)]);
    this.yScale.range([this.plotHeight,this.margin.top]).domain([0,d3.max(this.data, this.yFunction)]);
};

LineChart.prototype.draw = function(){
    var self = this;
    
    
    // setting axis x
    //this.svg.append("g")
    //.attr("transform", "translate("+this.margin.left+"," + this.plotHeight + ")")
    //.call(d3.axisBottom(this.xScale));
    
    var line = d3.line()
    .x(function(d){return self.xScale(d.id);})
    .y(function(d){return self.yScale(d.value)});
    //console.log(this.plotArea);
    this.plotArea.append("path")
    .datum(this.data)
    .attr("class", "line")
    .attr("d", line);

    this.plotArea.selectAll('dot').data(this.data).enter().append('circle')
        .attr('r',5)
        .attr('cx',function(d){return self.xScale(self.xFunction(d));})
        .attr('cy',function(d){return self.yScale(self.yFunction(d));});
        //.on("mouseover", toolTip('circle',this.yFunction))
        //.on("mouseout", function() {
        //d3.select("#tooltip").classed("hidden", true);
        //});
};
/**
 * @constructor
 * @extends BaseChart 
 * @param {*} opts 
 * @description Classe que representa gráfico de linha
 */
function DonutChart(opts){
    BaseChart.call(this,opts);
    this.colour = d3.scaleOrdinal(d3.schemeCategory20c);
    this.cornerRadius = 5;
    this.padAngle = 5;
}
/**
 * Setting Linechart inheritance
 */
DonutChart.prototype = Object.create(BaseChart.prototype);
DonutChart.prototype.constructor = DonutChart;

/**
 *  
 */
DonutChart.prototype.setScales = function(){

};

DonutChart.prototype.update = function(){
    this.draw();
};

/**
 * 
 */
DonutChart.prototype.draw = function(){
    var radius = Math.min(this.plotWidth, this.plotHeight) / 2;
    // creates a new pie generator
    var pie = d3.pie()
        .value(this.yFunction)
        .sort(null);

    // contructs and arc generator. This will be used for the donut. The difference between outer and inner
    // radius will dictate the thickness of the donut
    var arc = d3.arc()
        .outerRadius(radius * 0.8)
        .innerRadius(radius * 0.6)
        .cornerRadius(this.cornerRadius)
        .padAngle(this.padAngle);

    // this arc is used for aligning the text labels
    var outerArc = d3.arc()
    .outerRadius(radius * 0.9)
    .innerRadius(radius * 0.9);
    // ===========================================================================================

    // ===========================================================================================
    // append the svg object to the selection
    // var svg = selection.append('svg')
    //this.svg.attr('width', this.width + this.margin.left + this.margin.right)
    //.attr('height', height + margin.top + margin.bottom)
    //.append('g')
    //.attr('transform', 'translate(' + width / 2 + ',' + height / 2 + ')');
    // g elements to keep elements within svg modular
    this.svg.append('g').attr('class', 'slices');
    this.svg.append('g').attr('class', 'labelName');
    this.svg.append('g').attr('class', 'lines');
    // ===========================================================================================

    // ===========================================================================================
    // add and colour the donut slices
    this.path = this.svg.select('.slices')
        .selectAll('path')
        .data(pie(data))
      .enter().append('path')
        .attr('fill', function(d) { return colour(this.data[this.category]); })
        .attr('d', arc);
};
