<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="App.Logger.WebTests._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%">
            <tr>
                <td colspan="2" style="border-bottom: solid 1px black; font-size: x-small; background-color: #DCDCDC">
                    <div style="position: relative; width:100%; ">
                        <div style="float: left; padding-right: 10px; border-right : solid 1px grey;">
                            <b>Instructions:</b>
                            <ul>
                                <li><b>Add Customer:</b> Adds a new Customer to the database.</li>
                                <li><b>Add Customer:</b> Adds a new Supplier to the database.</li>
                                <li><b>Create Schema:</b> Creates the necessary database objects.</li>
                                <li><b>Get History:</b> Lists all the changes made to a certain object.</li>
                                <li><b>Get Last Version:</b> Gets the record last version.</li>
                                <li><b>Get Version:</b> Gets the record version at a certain point in time.</li>
                            </ul>                        
                        </div>
                        <div style="float: left; padding-left: 10px;">
                            <b>Thigs you may want to try:</b>
                            <ul>
                                <li>Add or Remove properties to the Customer class with and without the [LogProperty] attribute.</li>
                                <li>Create your own object to log and mess with it!.</li>
                            </ul>                        
                        </div>                        
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 130px; border-right: dashed 1px black; vertical-align: top;">
                    <br />
                    <asp:Button ID="btnAddCustomer" runat="server" Text="Add Customer" OnClick="btnAddCustomer_Click" Width="120px" /><br />
                    <asp:Button ID="btnAddSupplier" runat="server" Text="Add Supplier" OnClick="btnAddSupplier_Click" Width="120px" />
                    <br /><br />
                    <asp:Button ID="btnCreateSchema" runat="server" Text="Create Schema" OnClick="btnCreateSchema_Click" Width="120px" /><br />
                    <asp:Button ID="btnGetHistory" runat="server" Text="Get History" OnClick="btnGetHistory_Click" Width="120px" /><br />
                    <asp:Button ID="btnGetLastVersion" runat="server" Text="Get Last Version" OnClick="btnGetLastVersion_Click" Width="120px" /><br />
                    <asp:Button ID="btnGetVersion" runat="server" Text="Get Version" OnClick="btnGetVersion_Click" Width="120px" /><br />
                    <br />
                    <asp:Button ID="btnReadXmlConfig" runat="server" Text="Read Xml Config" OnClick="btnReadXmlConfiguration_Click" Width="120px" /><br />
                </td>
                <td>
                    <center>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:GridView ID="gridResult" runat="server" Font-Size="Small"></asp:GridView>
                    </center>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
