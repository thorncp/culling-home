$(document).ready(function() {
  // http://ybits.net/2009/10/making-jquery-tablesorter-persistent/
  $.tablesorter.addWidget({
    // give the widget an id
    id: "sortPersist",
    // format is called when the on init and when a
    // sorting has finished
    format: function(table) {

      // Cookie info
      var cookieName = 'MY_SORT_COOKIE';
      var cookie = $.cookie(cookieName);
      var options = {path: '/'};

      var data = {};
      var sortList = table.config.sortList;
      var tableId = $(table).attr('id');
      var cookieExists = (typeof(cookie) != "undefined"
          && cookie != null);

      // If the existing sortList isn't empty, set it into the cookie
      // and get out
      if (sortList.length > 0) {
        if (cookieExists) {
          data = $.parseJSON(cookie);
        }
        data[tableId] = sortList;
        $.cookie(cookieName, JSON.stringify(data), options);
      }

      // Otherwise...
      else {
        if (cookieExists) {

          // Get the cookie data
          var data = $.parseJSON($.cookie(cookieName));

          // If it exists
          if (typeof(data[tableId]) != "undefined"
              && data[tableId] != null) {

            // Get the list
            sortList = data[tableId];

            // And finally, if the list is NOT empty, trigger
            // the sort with the new list
            if (sortList.length > 0) {
              $(table).trigger("sorton", [sortList]);
            }
          }
        }
      }
    }
  });
  $("table").tablesorter({widgets: ['sortPersist']});
});
