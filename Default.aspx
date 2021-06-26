<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUDWebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style="font-size:x-large" align="center" > Alunos</div>
    </div>
    <table style="width: 100%;">
        <tr>
            <td colspan="2"><strong>Adicionar Aluno(a)</strong></td>
            <td style="width: 478px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 232px">Nome Aluno(a)</td>
            <td style="width: 177px">
                <asp:TextBox ID="TextBox2" runat="server" Width="166px"></asp:TextBox>
            </td>
            <td style="width: 478px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 232px; height: 22px">Idade Aluno(a)</td>
            <td style="width: 177px; height: 22px;">
                <asp:TextBox ID="TextBox3" runat="server" Width="41px"></asp:TextBox>
            </td>
            <td style="width: 478px; height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 232px; height: 20px">Serie</td>
            <td style="width: 177px; height: 20px;">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True">1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 478px; height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 232px">&nbsp;</td>
            <td style="width: 177px">
                &nbsp;</td>
            <td style="width: 478px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 232px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar Aluno(a)" />
            </td>
            <td style="width: 177px">&nbsp;</td>
            <td style="width: 478px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" Width="459px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
