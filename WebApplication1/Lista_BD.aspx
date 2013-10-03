<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lista_BD.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 673px">
    <form id="form1" runat="server">
    <div>
    
        LISTADO DE BASE DE DATO<br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Naccion" HeaderText="Naccion" SortExpression="Naccion" />
                <asp:BoundField DataField="Ano" HeaderText="Ano" SortExpression="Ano" />
                <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Tlf" HeaderText="Tlf" SortExpression="Tlf" />
                <asp:BoundField DataField="comment" HeaderText="comment" SortExpression="comment" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Id], [Nombre], [Apellido], [Naccion], [Ano], [DNI], [Email], [Tlf], [comment] FROM [Table1]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
