<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RecipePage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />

    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" />
    <script src="Scripts\Yummly.js"></script>
    <script src="Scripts/jquery.cookie.js"></script>
    <script src="Scripts\JavaScript.js"></script>
    <script type="text/javascript">
        $(function () {
            var $body = $("#nutrition tbody");
            $body.empty();
            var $tr = $("<tr></tr>").appendTo($body);
            $("#recipeName").text(sessionStorage["name"]);
            $("#recipeImage").attr("src", sessionStorage["url"]);
            var list = sessionStorage["ingredients"];
            $("#ingredientslist").text(list);
            $("#prepsteps").attr("href", sessionStorage["sourceSite"]);
            var nutritionList = sessionStorage["nutrition"];
            //  alert(nutritionList);
            for (var i = 0; i <= 10; i++) {
                //      alert(nutritionList[i]);
            }

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="bodybreakfast">
        <label class="recipeName" id="recipeName"></label>
        <div class="menuheader">
            <div>
                <label class="ingredientlabel" id="ingredients">Ingredients</label>
                <ul id="ingredientslist">
                </ul>
            </div>
            <div>
                <table id="searchRecipeSingle">
                    <thead>
                        <tr>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
                <img class="baselImage" src="/" id="recipeImage" />
            </div>
        </div>
        <div class="prepsteps">
            <div class="preplabel">For Preparation Steps Please refer the below link</div>
            <a class="steps" id="prepsteps">Source Link</a>
        </div>
    </div>
</asp:Content>

