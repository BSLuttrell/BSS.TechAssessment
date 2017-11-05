<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


    <script type="text/javascript">
        function stuff() {

            alert("You should be parsing stuff here!!!");

        }
    </script>

    <div id="topDiv"style="border:1px solid black">
        Container 1
    </div>
    <div id="bottomDiv"style="border:1px solid black">
        Container 2
    </div>
    
    <form id="form1" runat="server">

        <asp:LinkButton ID="LinkButton1" OnClientClick="return stuff()" runat="server" Width="200" Height="50">Click</asp:LinkButton>

    </form>
</body>
</html>
