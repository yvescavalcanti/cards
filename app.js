// Configure loading modules from the lib directory,
// except for 'app' ones, which are in a sibling
// directory.
requirejs.config({
    baseUrl: 'src',
    paths: {
        main: '../main',
        text:'../text',
        ko:'../js/knockout-3.4.2'
    }/*,
    config:{
        main:{
            valor:global
        }
    }*/
});

// Start loading the main app file. Put all of
// your application logic in there.
requirejs(['main']);