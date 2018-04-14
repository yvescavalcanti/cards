// Configure loading modules from the lib directory,
// except for 'app' ones, which are in a sibling
// directory.
require.config({
    baseUrl: 'src',
    paths: {
        text:'../text',
        ko:'../knockout-3.4.2',
        main: '../main'
    }
    
});

// Start loading the main app file. Put all of
// your application logic in there.
define('principal', ['main','card-widget'],function(main, models){
    return function(v){console.log(v);};
});