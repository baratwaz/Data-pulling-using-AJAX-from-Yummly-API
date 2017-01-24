<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" />
    <script src="Scripts\Yummly.js"></script>
    <script src="Scripts\JavaScript.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="upperbody" class="upperbody">
        <div id="mysearch" class="mysearch">
            <input id="searchText" type="text" class="searchText ui-widget" autocomplete="on" />
            <input type="button" class="searchBox" id="searchBox" value="Search" onclick="selectRecipe()" />
        </div>
    </div>

    <div id="lowerbody" class="lowerbody">
        <div>

            <table id="searchResult">
                <thead>
                    <tr>
                        <th class="tdclass"></th>
                        <th class="tdclass"></th>
                        <th class="tdclass"></th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
        <table id="lowertable" class="">
            <tbody></tbody>
        </table>
    </div>

</asp:Content>

