(function() {
  App.twitter = App.cable.subscriptions.create("TwitterChannel", {
    connected: function() {},
    disconnected: function() {},
    received: function(data) {
    	list = $('.twitter-list');
    	list.empty();
    	data['tweets'].forEach(function (tweet) {
    		item = '<li>' + tweet + '</li>';
    		list.append(item);
    	}) 
    }
  });

}).call(this);
