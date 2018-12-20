var phantomcss = require('phantomcss');
casper.test.begin('Validação Home', function() {

  phantomcss.init({
    rebase: casper.cli.get('rebase')
  });

  casper.start('http://veja.abril.com.br/');

  casper.viewport(1280, 720);
  
  casper.then(function() {
    phantomcss.screenshot( {'newslatter': { selector: "div[id='abril_newsletter_widget-4']"}
    });
  });

  casper.then(function() {
    phantomcss.screenshot( {'footer': { selector: "footer[id='footer']"}
    });
  });

  casper.then(function now_check_the_screenshots() {
    phantomcss.compareAll();
  });

  casper.run(function() {
    casper.test.done();
  });

});
