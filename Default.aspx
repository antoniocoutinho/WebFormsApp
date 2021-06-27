<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUDWebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style="font-size:x-large" align="center" > <strong>Alunos</strong></div>
    </div>
    <table style="width: 100%;">
        <tr>
            <td colspan="2">&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"><strong aria-orientation="horizontal">Adicionar Aluno(a)</strong></td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px"><strong>Adicionar Notas</strong></td>
            <td>&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td style="width: 126px"><strong>Consultar Notas</strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 178px">Nome Aluno(a)</td>
            <td style="width: 230px">
                <asp:TextBox ID="TextBox2" runat="server" Width="209px"></asp:TextBox>
            </td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">ID do Aluno(a)</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="41px" style="margin-left: 0"></asp:TextBox>
            </td>
            <td style="width: 126px">&nbsp;</td>
            <td style="width: 126px">ID do Aluno(a)</td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server" Width="41px" style="margin-left: 0"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Mostrar" />
            </td>
        </tr>
        <tr>
            <td style="width: 178px; height: 22px">Idade Aluno(a)</td>
            <td style="width: 230px; height: 22px;">
                <asp:TextBox ID="TextBox3" runat="server" Width="41px"></asp:TextBox>
            </td>
            <td style="width: 150px; height: 22px"></td>
            <td style="height: 22px; width: 126px;">Matemática</td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox9" runat="server" Width="41px" style="margin-left: 0"></asp:TextBox>
            </td>
            <td rowspan="5">&nbsp;</td>
            <td colspan="2" rowspan="5">
                <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
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
            <td rowspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 178px; height: 20px">Série</td>
            <td style="width: 230px; height: 20px;">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True">1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 150px; height: 20px"></td>
            <td style="height: 20px; width: 126px;">Português</td>
            <td style="height: 20px">
                <asp:TextBox ID="TextBox10" runat="server" Width="41px" style="margin-left: 0"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 178px">&nbsp;</td>
            <td style="width: 230px">
                &nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">Ciências</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" Width="41px" style="margin-left: 0"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 178px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar Aluno(a)" />
            </td>
            <td style="width: 230px">&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">Artes</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" Width="41px" style="margin-left: 0"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 178px">
                &nbsp;</td>
            <td style="width: 230px">&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px"><strong>Deletar Aluno(a)</strong></td>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Adicionar Notas" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px; height: 22px;">ID do Aluno(a)</td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox4" runat="server" Width="41px"></asp:TextBox>
            </td>
            <td style="width: 150px; height: 22px;"></td>
            <td style="width: 126px; height: 22px"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px">&nbsp;</td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 127px; height: 22px"></td>
            <td style="height: 22px"></td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px; height: 20px">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Deletar Aluno(a)" Width="176px" />
            </td>
            <td style="height: 20px"></td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px"><strong>Editar perfil do Aluno(a)</strong></td>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">ID do Aluno(a)</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="41px"></asp:TextBox>
            </td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px; height: 20px;">Nome Aluno(a)</td>
            <td style="height: 20px">
                <asp:TextBox ID="TextBox6" runat="server" Width="209px"></asp:TextBox>
            </td>
            <td style="width: 150px; height: 20px;"></td>
            <td style="height: 20px; width: 126px;"></td>
            <td style="height: 20px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">Idade Aluno(a)</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="41px"></asp:TextBox>
            </td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">Série</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Selected="True">1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 127px">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Editar Aluno(a)" />
            </td>
            <td>&nbsp;</td>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 126px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="height: 20px">
            </td>
            <td style="height: 20px">
                &nbsp;</td>
            <td style="height: 20px">
                &nbsp;</td>
            <td style="height: 20px">
                &nbsp;</td>
            <td style="height: 20px">
                &nbsp;</td>
            <td style="height: 20px">
                &nbsp;</td>
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
