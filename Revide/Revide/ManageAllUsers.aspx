<%@ Page Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true"
    CodeBehind="ManageAllUsers.aspx.cs" Inherits="Revide.WebForm16" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>
    Manage All Users
    </title>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
        rel="stylesheet">
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://rawgit.com/rainabba/jquery-table2excel/master/dist/jquery.table2excel.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" runat="server">
    <div style="margin-top: 15px;">
        <div class="container">
            <p class="bg-primary" align="center" style="font-size: 25px;">
                MANAGE ALL USERS </p>
        </div>

        <div style="margin: 20px;" align="right" >
         <!-- <span >  <a href="BlockUser.aspx">Click here to block User</a>  </span>
         <a href="BlockUser.aspx" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-ban-circle"></span> Click here to block User-->
           
           <a href="AddAdmin.aspx">
          <span class="glyphicon glyphicon-plus"></span> 
        </a>
        Click here to add admin
        </a>
        </div>
        

        <div class="table-responsive">
            <table id="allUserReport" class="display table" width="100%">
                <thead>
                    <tr>
                        <th>
                           Username
                        </th>
                        <th>
                            LoginID
                        </th>
                        <th>
                            RoleID
                        </th>
                        <th>
                            UpdatedOn
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rpt_allUserDetails" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%# DataBinder.Eval(Container.DataItem,"Username") %>
                                </td>
                                <td>
                                    <%# DataBinder.Eval(Container.DataItem, "LoginID")%>
                                </td>
                                <td>
                                    <%# DataBinder.Eval(Container.DataItem, "RoleID")%>
                                </td>
                                <td>
                                    <%# DataBinder.Eval(Container.DataItem, "UpdatedOn")%>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
            <!--input type="button" id="btnExport"text="download"-->
        </div>
    </div>
   
    </div>
    <script>
        $(document).ready(function () {
            $('#allUserReport').dataTable();
            $("#btnExpo").click(function () {
                $("#allUserReport").table2excel({
                    exclude: ".excludeThisClass",
                    name: "Worksheet Name",
                    filename: "SomeFile"
                });
            })
        });
    </script>
    </div>
</asp:Content>
   
