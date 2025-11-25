<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="Trabalho_ecommerce_teste.adm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Painel de Clientes</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="/css/style.css" />

    <link rel="stylesheet" href="../css/Usuario.css" />

</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <img class="brand-logo-dark" src="../img/Logo.png" alt="La Florença Logo" />
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="../Default.aspx">Home</a></li>
                <li class="nav-item active"><a class="nav-link" aria-current="page" href="../Menu.aspx">Menu</a></li>
                <li class="nav-item"><a class="nav-link" href="../Carrinho.aspx">Carrinho</a></li>
                <li class="nav-item"><a class="nav-link" href="../Login.aspx">Entrar</a></li>
                <li class="nav-item"><a class="nav-link" href="Produto.aspx">Produtos adm</a></li>
            </ul>
            <span class="navbar-text"></span>
        </div>
    </nav>

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
                    <asp:Label ID="lblId" runat="server" Text="ID:" />
                    <asp:TextBox ID="txtId" runat="server" ReadOnly="true"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Nome:" />
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Email:" />
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Telefone:" />
                    <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
                </div>

                <br />
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar Alterações" OnClick="btnSalvar_Click" CssClass="btn-primary" />
            </div>

        </div>
    </form>
</body>
</html>
