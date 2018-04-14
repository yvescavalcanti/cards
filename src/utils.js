/**
 * @module utils 
   @description Funçoes de utilidade geral para o projeto
 */
define('utils',['d3'],function(d3){

    /**
     * @function realFormat
     * @param {Number} v recebe um número e retorna este número formatado segundo 
     * o Real Brasileiro.
     * @return {Number}
     */
    function realFormat(v){
        return "Total: "+("R$"+d3.format(",.2f")(v)).replace(/[,.]/g,function(m){return m===','?'.':',';});
    }

    /**
     * @function orderByAnoPecuario
     * @param {Array} dados 
     * @param {String} key valor default = "mes_id"
     * @description Função para ordenar objetos segundo ano pecuário
     * @return {Array<Object>} Retorna o array ordenado segundo key
     */
    function _orderByAnoPecuario(dados, key="mes_id"){
        if(!Array.isArray(dados)){
            return undefined;
        }
        return dados.sort(function(a,b){
			var x = a[key] +(a[key]>6?-6:6);
			var y = b[key] +(b[key]>6?-6:6);
			return x-y;
		});
    }

    return {
        realFormat:realFormat,
        orderByAnoPecuario:_orderByAnoPecuario
    };
});
