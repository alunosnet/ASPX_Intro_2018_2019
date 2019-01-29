<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="ASPX_Intro.Alunos.pesquisar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
Nome: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Pesquisar" />
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlAlunos" DataKeyNames="nprocesso" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td runat="server" style="">nprocesso:
                <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                nome:
                <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /><br />
                data_nascimento:
                <asp:Label Text='<%# Eval("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
                email:
                <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /><br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">nprocesso:
                <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel1" /><br />
                nome:
                <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                data_nascimento:
                <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                email:
                <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><br />
                <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /><br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Sem dados para listar.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr runat="server" id="itemPlaceholderContainer">
                <td runat="server" id="itemPlaceholder"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">nome:
                <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                data_nascimento:
                <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                email:
                <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><br />
                <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /><br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="">nprocesso:
                <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                nome:
                <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /><br />
                data_nascimento:
                <asp:Label Text='<%# Eval("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
                email:
                <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /><br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="groupPlaceholderContainer" style="" border="0">
                            <tr runat="server" id="groupPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">nprocesso:
                <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                nome:
                <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /><br />
                data_nascimento:
                <asp:Label Text='<%# Eval("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
                email:
                <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /><br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString_BD_M17 %>' SelectCommand="SELECT * FROM [alunos] WHERE ([nome] LIKE '%' + @nome + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
