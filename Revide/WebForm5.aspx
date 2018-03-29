<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true"
    CodeBehind="WebForm5.aspx.cs" Inherits="Revide.WebForm5" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" runat="server">
    <div>
        <asp:Label runat="server">Search</asp:Label>
        <asp:TextBox ID="search" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label runat="server">Sort By</asp:Label>
        <asp:ComboBox ID="ComboBox1" runat="server">
        </asp:ComboBox>
        <asp:Label ID="Label1" runat="server">Order By</asp:Label>
        <asp:ComboBox ID="ComboBox2" runat="server">
        </asp:ComboBox>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
            OnPaging="OnPaging" PageSize="10">
            <Columns>
                <asp:BoundField ItemStyle-Width="150px" DataField="Username" HeaderText="Username" />
                <asp:BoundField ItemStyle-Width="150px" DataField="LoginID" HeaderText="LoginID" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="downloadbtn" runat="server" Text="Download" onclick="btntoExcel_Click"/>
    </div>
</asp:Content>
