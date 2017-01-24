$(function () {
    Yummly.Search($("#query").val(), populateHomeData);
    $('#searchText').keyup(function () {
        Yummly.Search($("#searchText").val(), populateSearchResultAutoComplete)
    }),
     $("#form1").submit(
            function (e) {
                e.preventDefault();
                Yummly.Search($("#query").val(), populateHomeData)
            }
        );
    function populateResult(recipeId) {

        Yummly.Recipe(recipeId, function (data) {
            console.log(data);
            sessionStorage["name"] = data.name;
            sessionStorage["url"] = data.images[0].hostedLargeUrl;

            window.location = "http://localhost:50877/RecipePage.aspx";
            var list = [];
            for (var i = 0; i <= data.ingredientLines.length; i++) {
                list.push(data.ingredientLines[i]);

            }
            sessionStorage["ingredients"] = list;
            sessionStorage["sourceSite"] = data.source.sourceRecipeUrl;
            var nutritionList = [];
            for (var i = 0; i <= data.nutritionEstimates.length; i++) {
                //nutritionList.push(data.nutritionEstimates[i].value);
                //alert(data.nutritionEstimates[i].value);
            }
            sessionStorage["nutrition"] = nutritionList;
        })
    }
    function populateHomeData(data) {
        var $body = $("#lowertable tbody");
        var $tr = $("<tr></tr>").appendTo($body);
        $tr.width(1000);
        for (var i = 0; i < data.matches.length; i++) {

            (function (recipe) {

                var $td = $("<td><a href= '#'></a></td>").addClass("tdclasslower").appendTo($tr);
                $td.find('a').text(recipe.recipeName).click(function (e) {
                    e.preventDefault();
                    populateResult(recipe.id);
                }
                );
                var imageResult = recipe.imageUrlsBySize;

                $.each(imageResult, function (key, value) {
                    var $td = $("<td></td>").addClass("tdclasslower").appendTo($tr);
                    $td.html('<img src="' + value + '"/>');
                    $("img").attr("width", "250");
                    $("img").attr("height", "250");
                });
            })(data.matches[i]);
        }
    }
    function populateSearchResultAutoComplete(data) {
        var list = [];
        for (var i = 0; i < data.matches.length; i++) {
            (function (recipe) {

                list.push(recipe.recipeName);
                $("#searchText").autocomplete({
                    source: list
                });
            })(data.matches[i]);
        }
    }
});


function selectRecipe(data) {
    var selectedRecipe = document.getElementById("searchText").value;
    Yummly.RecipeName(selectedRecipe, function (data) {
        var $body = $("#searchRecipeSingle tbody");
        var $tr = $("<tr></tr>").appendTo($body);
        $body.empty();
        console.log(data);

        for (var i = 0; i < data.matches.length; i++) {
            var $td = $("<td><a href= '#'></a></td>").addClass("tdclasslower").appendTo($tr);
            $td.find('a').text(data.matches[i].recipeName).click(function (e) {
                e.preventDefault();
                populateResult(data.matches[i].id);
            }
            );
            var imageResult = data.matches[i].imageUrlsBySize;
            sessionStorage["name"] = data.matches[i].recipeName;
            // sessionStorage["url"] = data.matches[i].imageUrlsBySize;
            sessionStorage["url"] = "https://lh3.googleusercontent.com/7BLtfW0D9rmr-WLrRKgECkgnKOcuENNsqO9Zq_OxxU0rn_-NllrfbWTfdKc0cpk88I2ivea3kMHZI8ZeyVSbsw=s360";

            window.location = "http://localhost:50877/RecipePage.aspx";
            var list = [];
            for (var i = 0; i <= data.ingredientLines.length; i++) {
                list.push(data.ingredientLines[i]);

            }
            sessionStorage["ingredients"] = list;
            sessionStorage["sourceSite"] = data.source.sourceRecipeUrl;
        }

        sessionStorage["name"] = data.name;
        sessionStorage["url"] = data.images[0].hostedLargeUrl;

        window.location = "http://localhost:50877/RecipePage.aspx";
        var list = [];


        for (var i = 0; i <= data.ingredientLines.length; i++) {
            list.push(data.ingredientLines[i]);

        }
        sessionStorage["ingredients"] = list;
        sessionStorage["sourceSite"] = data.source.sourceRecipeUrl;
        var nutritionList = [];
        for (var i = 0; i <= data.nutritionEstimates.length; i++) {
            //nutritionList.push(data.nutritionEstimates[i].value);
            //alert(data.nutritionEstimates[i].value);
        }
        sessionStorage["nutrition"] = nutritionList;
    });
}

window.onload = function () {
    document.getElementById("createAccount").onclick = function fun() {
        window.open('/CreateAnAccount.aspx');
    }
    document.getElementById("signIn").onclick = function fun() {
        window.open('/signIn.aspx');
    }
    document.getElementById('Logo').onclick = function fun() {
        window.open('/Default.aspx', '_self', false);
    }
}
