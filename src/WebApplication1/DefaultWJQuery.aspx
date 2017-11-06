<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultWJQuery.aspx.cs" Inherits="WebApplication1.DefaultWJQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assessment - BSS Tech</title>
</head>
<body>


    <script src="http://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script>
        var file = "Assessment.csv"

        // Button click event that loads data into top div
        $(function () {
            $("#btnLoad").on("click", function () {
                $.get(file, function (data) {
                    var data = data.split(',')
                    var topDiv = $("#topDiv")
                    topDiv.text('')
                    for (var d in data) { topDiv.append("<p>" + data[d] + "</p>") }
                })
            })
        })

        // Button click event that adds third to bottom div and remove from top div
        $(function () {
            $("#btn").on("click", function () {
                $.get(file, function (data) {
                    var d = data.split(',')
                    $("#bottomDiv").text(d[2])
                    $("#topDiv p").filter(":contains('" + d[2] + "')").remove()
                });
            });
        });
    </script>


    <div id="topDiv"style="border:1px solid black">
        Container 1
    </div>
    <div id="bottomDiv"style="border:1px solid black">
        Container 2
    </div>

    <input type="button" id="btnLoad" style="padding: 1em; margin-top: 10px;" value="Load"/>
    <input type="button" id="btn" style="padding: 1em; margin-top: 10px;" value="Remove"/>

    <form id="form1" runat="server">
    </form>
</body>
</html>
