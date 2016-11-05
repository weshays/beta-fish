BetaFish = {
  defaults : { 'access_key' : null },
  class_vars : { 'url' : 'https://betafish.herokuapp.com/api/feedback_entries' },
  //class_vars : { 'url' : 'http://localhost:3000/api/feedback_entries' },

  show_form : function() {

  },
  submit_form : function(options) {
    this.take_snapshot();
    console.log('Data Sent');
  },

  take_snapshot : function() {
    var self = this;

    html2canvas(document.body, {
      logging: true
    }).then(function(canvas) {
      // document.body.appendChild(canvas);
      var data = { 'feedback_entry' : {
        'comprehension' : 'happy',
        'path' : window.location.href,
        'comment' : 'This is really awesome',
        'browser' : navigator.userAgent,
        'operating_system' : navigator.platform,
        'screen_resolution' : window.screen.width + ' x ' + window.screen.height,
        'browser_resolution' : document.body.clientWidth + ' x ' + document.body.clientHeight,
        'screenshot' : canvas.toDataURL('image/png') //.split(',')[1]
      }};
      self.post_feedback(data);
    });
  },

  post_feedback : function(data) {
    var xmlDoc = new XMLHttpRequest();
    xmlDoc.open('POST', this.class_vars['url'], true);
    xmlDoc.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xmlDoc.setRequestHeader('Content-Type', 'application/json');
    xmlDoc.onreadystatechange = function() {
      if (xmlDoc.readyState === 4 && xmlDoc.status === 200) {
        // console.log('ready....');
      }
    }
    xmlDoc.send(JSON.stringify(data));
  }
}
