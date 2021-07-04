<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUDWebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style="font-size:x-large" align="center" > Alunos</div>
    </div>
    <table style="width: 100%;">
        <tr>
            <td style="width: 325px">Nome Aluno</td>
            <td style="width: 131px">
                <asp:TextBox ID="TextBox6" runat="server" Width="221px"></asp:TextBox>
            </td>
            <td style="width: 478px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 325px">Idade Aluno</td>
            <td style="width: 131px">
                <asp:TextBox ID="TextBox7" runat="server" Width="41px"></asp:TextBox>
            </td>
            <td style="width: 478px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 325px; height: 22px;">Série Aluno</td>
            <td style="width: 131px; height: 22px;">
                <asp:TextBox ID="TextBox8" runat="server" Width="42px"></asp:TextBox>
            </td>
            <td style="width: 478px; height: 22px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 325px; height: 39px;">Nota Português</td>
            <td style="width: 131px; height: 39px;">
                <asp:TextBox ID="TextBox2" runat="server" Width="41px"></asp:TextBox>
            </td>
            <td style="width: 478px; height: 39px;"></td>
            <td style="height: 39px"></td>
        </tr>
        <tr>
            <td style="width: 325px; height: 22px">Nota Matemática</td>
            <td style="width: 131px; height: 22px;">
                <asp:TextBox ID="TextBox3" runat="server" Width="41px"></asp:TextBox>
            </td>
            <td style="width: 478px; height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 325px; height: 20px">Nota Ciências</td>
            <td style="width: 131px; height: 20px;">
                <asp:TextBox ID="TextBox4" runat="server" Width="41px"></asp:TextBox>
            </td>
            <td style="width: 478px; height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 325px">Nota Artes</td>
            <td style="width: 131px">
                <asp:TextBox ID="TextBox5" runat="server" Width="41px"></asp:TextBox>
            </td>
            <td style="width: 478px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 325px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar" />
            </td>
            <td style="width: 131px">&nbsp;</td>
            <td style="width: 478px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="459px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="#CCCCCC"  />
                    <Columns>
                        <asp:BoundField DataField="AlunoID" HeaderText="ID do aluno"/>
                        <asp:BoundField DataField="Nome" HeaderText="Nome"/>
                        <asp:BoundField DataField="Idade" HeaderText="Idade"/>
                        <asp:BoundField DataField="serie" HeaderText="Série"/>
                        <asp:BoundField DataField="portugues" HeaderText="Nota Português"/>
                        <asp:BoundField DataField="matematica" HeaderText="Nota Matemática"/>
                        <asp:BoundField DataField="ciencias" HeaderText="Nota Ciências"/>
                        <asp:BoundField DataField="artes" HeaderText="Nota Artes"/>
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
