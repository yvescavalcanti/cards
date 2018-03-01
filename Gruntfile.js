module.exports = function(grunt){

    grunt.initConfig({
        handlebars:{
            compile:{
                options:{
                    namespace:'dashcard'
                },
                files:{
                    'templates/cards-tmpl.js': 'hb/cards.hbs'
                }
            }
        },
        uglify:{
            cardwidget:{
                files:{
                    'index.min.js':'index.js'
                }
            }
        },
        browserify:{
            dist:{
                files:{
                    'bundle.js':'index.js'
                }
                
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-handlebars');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-browserify');

    grunt.registerTask('compile-templates',['handlebars']);
    grunt.registerTask('minify',['uglify:cardwidget']);
    grunt.registerTask('default',['uglify:cardwidget','handlebars']);
};