$.widget('nmk.lapicardcolumn',{
    options:{
        columns : 2
    },
    _create:function(){
        this.element.css("column-count", this.options.columns);
    }
});