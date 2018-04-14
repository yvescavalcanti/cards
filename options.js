module.exports = {  
    appDir: '.',
    baseUrl: 'src/',
    mainConfigFile: './common.js',
    dir: 'build',
    modules: [
      {
        name: 'common',
        include: [
          
          'ko',
          
        ]
      },
      {
        name: 'app/main-about',
        exclude: ['common']
      },
      {
        name: 'app/main-contact',
        exclude: ['common']
      }
    ]
  };
  