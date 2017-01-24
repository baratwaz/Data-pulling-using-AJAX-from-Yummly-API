(function (global, $) {
    function YummlyRequest(data) {
        if (typeof (data) == "object" && data != null) {
            for (var i in data) {
                this[i] = data[i];
            }
        }
    }
    YummlyRequest.URL = "http://api.yummly.com/v1/api/";
    YummlyRequest.prototype._app_id = "e10d95e6";
    YummlyRequest.prototype._app_key = "6305fc3c3fec6c998cc057fff05406a8";
    
    function getUrl(method, data) {
        var query = new YummlyRequest(data);
        var queryString = $.param(query); // jquery creates a query string automatically
        var url = YummlyRequest.URL + method;
        //  if (path) url += "/" + path;
        url += '?' + queryString;
        return url;
    }
    function getUrlId(method, data) {
        var query = new YummlyRequest(data);
        var queryString = $.param(query); // jquery creates a query string automatically
        var url = YummlyRequest.URL + method+"/" +data;
        url += '?' + queryString;
        return url;
    }
    function getUrlName(method, data) {
        YummlyRequest.prototype.q = data;
        var query = new YummlyRequest(data);
        var queryString = $.param(query); // jquery creates a query string automatically
        var url = YummlyRequest.URL + method;
        url += '?' + queryString;
        return url;
    }
    global.getUrl = getUrl; // to expose this method to test whether we get the url or not
    global.Yummly = function Yummly() {

    };
    Yummly.Search = function Yummly_Search(query, callback) {
        var url = getUrl("recipes", { q: query });
        var options = {
            type: "GET",
            dataType: "jsonp",
            jsonp: "callback",
            success: callback

        };
        $.ajax(url, options); // one way to use the ajax and another is to write a web service in same site and use it
    }

    Yummly.Recipe = function Yummly_Recipe(recipeId, callback) {
        var url = getUrlId("recipe", recipeId);
        var options = {
            type: "GET",
            dataType: "jsonp",
            jsonp: "callback",
            success: callback

        };
        $.ajax(url, options); // one way to use the ajax and another is to write a web service in same site and use it
    }
    Yummly.RecipeName = function Yummly_Recipe(recipeName, callback) {
        var url = getUrlName("recipes", recipeName);
        var options = {
            type: "GET",
            dataType: "jsonp",
            jsonp: "callback",
            success: callback

        };
        $.ajax(url, options); // one way to use the ajax and another is to write a web service in same site and use it
    }
})(window, jQuery)