<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultWJQuery.aspx.cs" Inherits="WebApplication1.DefaultWJQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


    <script src="http://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script>
    $(function() {
        $("#btn").on("click", function() {
 
            alert("You should be parsing stuff here, you chose the jquery page so put it to work!!!");
        });
    });
    </script>


    <div id="topDiv"style="border:1px solid black">
        Container 1
    </div>
    <div id="bottomDiv"style="border:1px solid black">
        Container 2
    </div>

    <input type="button" id="btn" />

    <form id="form1" runat="server">
    </form>
</body>
</html>
