<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MulLang.About" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<script language="c#" runat="server">
    void LangsChan(object sender, EventArgs e)
    {
        var selected = Langs.SelectedValue;
        UICulture = selected;
        Culture = selected;
        Button1.Text = Resources.Resource.Button;
        Label1.Text = Resources.Resource.Label;
        TextBox1.Text = Resources.Resource.Text;
    }
</script>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title%>.</h2>
    <asp:DropDownList ID="Langs" runat="server" OnSelectedIndexChanged="LangsChan" AutoPostBack="true" >
        <asp:ListItem Value="tr">TR</asp:ListItem>
        <asp:ListItem Value="">EN</asp:ListItem>
        <asp:ListItem Value="fr">FR</asp:ListItem>
    </asp:DropDownList><br />
    <asp:Button ID="Button1" Text="<%$Resources:Resource,Button%>" runat="server"/>
    <asp:Label ID="Label1" runat="server" Text="<%$Resources:Resource,Label%>" ></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Text="<%$Resources:Resource,Text %>"></asp:TextBox>
<br />

    </asp:Content>
