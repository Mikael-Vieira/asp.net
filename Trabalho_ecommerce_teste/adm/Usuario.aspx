<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="Trabalho_ecommerce_teste.adm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Painel de Clientes</title>
  
    <style>
        /* Estilos básicos para demonstrar a estrutura. Mova isso para um arquivo CSS externo! */
        body { font-family: Arial, sans-serif; padding: 20px; }
        .container { max-width: 1000px; margin: 0 auto; }
        .grid-section, .edit-section { margin-bottom: 40px; border: 1px solid #ccc; padding: 20px; border-radius: 5px; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: inline-block; width: 80px; font-weight: bold; }
        .form-group input[type="text"] { width: 300px; padding: 5px; border: 1px solid #ddd; border-radius: 3px; }
        .tabela th { background-color: #f2f2f2; }
        .tabela td, .tabela th { border: 1px solid #ddd; padding: 8px; text-align: left; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Gerenciamento de Clientes</h1>

            <div class="grid-section">
                <h2>Lista de Clientes</h2>
                
                <asp:GridView ID="GridClientes" runat="server" 
                    AutoGenerateColumns="False" 
                    DataKeyNames="ClienteId"
                    OnRowCommand="GridClientes_RowCommand" 
                    CssClass="tabela"
                    AlternatingRowStyle-BackColor="#f9f9f9">
                    <Columns>
                        <asp:BoundField DataField="ClienteId" HeaderText="ID" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Telefone" HeaderText="Telefone" />
                        <asp:CheckBoxField DataField="IsBloqueado" HeaderText="Bloqueado" ItemStyle-HorizontalAlign="Center" />
                        
                        <asp:ButtonField CommandName="bloquear" Text="Bloquear" />
                        <asp:ButtonField CommandName="desbloquear" Text="Desbloquear" />
                        <asp:ButtonField CommandName="editar" Text="Editar Dados" />
                    </Columns>
                </asp:GridView>
            </div>

            <hr />

            <div class="edit-section">
                <h2>Editar Cliente Selecionado</h2>

                <div class="form-group">
                    <asp:Label ID="lblId" runat="server" Text="ID:"/>
                    <asp:TextBox ID="txtId" runat="server" ReadOnly="true"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Nome:"/>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Email:"/>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Telefone:"/>
                    <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
                </div>
                
                <br />
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar Alterações" OnClick="btnSalvar_Click" CssClass="btn-primary" />
            </div>

        </div>
    </form>
</body>
</html>