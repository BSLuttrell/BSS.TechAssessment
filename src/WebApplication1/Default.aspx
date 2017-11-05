<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


  <script type="text/javascript">
        function stuff() {

            var div1 = document.getElementById('topDiv').innerHTML;
            var array = div1.split(',');
            var div2 = array[2].innerHTML;
            document.getElementById('bottomDiv').innerHTML = array[2];

        }
    </script>

    <div id="topDiv" runat="server" style="border:1px solid black">
        Container 1
    </div>
    <div id="bottomDiv"style="border:1px solid black">
        Container 2
    </div>    
    <form id="form1">
        <button type="button" onclick="stuff()" value="Submit">Click</button>
    </form>
</body>
</html>
