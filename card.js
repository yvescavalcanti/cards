define(['knockout'],function(ko){
    return function CardModel(t, gt,tData){
        this.title = ko.observable(t);
        this.goto = gt;
        this.testData = tData;
    }
    alert();
});