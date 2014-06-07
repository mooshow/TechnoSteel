<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctrl_AddProduct.ascx.cs" Inherits="TechnoSteel.Controls.ctrl_AddProduct" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 40px;
    }
</style>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
<table class="auto-style1" style="text-align: left">
    <tr>
        <td>
            <asp:Label ID="lbl_Name" runat="server" Text="Product Name:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_ProductName" runat="server"></asp:TextBox>
        </td>
        <td rowspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_ProductName" ErrorMessage="Product Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_ProductName" ErrorMessage="Product Name should not exceed 50 character" ForeColor="Red" ValidationExpression="^.{1,50}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_Model" runat="server" Text="Product Model:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_ProductModel" runat="server"></asp:TextBox>
        </td>
        <td rowspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_ProductModel" ErrorMessage="Product Model is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_ProductModel" ErrorMessage="Product Model should not exceed 50 character" ForeColor="Red" ValidationExpression="^.{1,50}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lbl_Desc" runat="server" Text="Product Description"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txt_desc" runat="server" TextMode="MultiLine" Width="80%"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_desc" ErrorMessage="Product Description should be more than 20 and not  exceed 1000 character" ForeColor="Red" ValidationExpression="^.{20,1000}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td style="direction: ltr">&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_Category" runat="server" Text="Product Category:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddl_ProductCategory" runat="server">
            </asp:DropDownList>
        </td>
        <td rowspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_ProductImage" runat="server" Text="Product Image:"></asp:Label>
        </td>
        <td>
            <script>
                function UploadStart(sender, args) {
                    //for (var i in args) {
                    //    console.log("property is " + i + "value is " + args[i]);
                    //}

                }
            </script>
            <asp:FileUpload ID="FileUpload1" runat="server" ClientIDMode="Static" />
        </td>
        <td>
            <script>
                function ValidateFile(source, args) {

                    var FileUpload = document.getElementById("FileUpload1");
                    var reg = /\.(gif|jpg|jpeg|png)$/i;
                    var fileName = FileUpload.value.toLowerCase();


                    if (!reg.test(fileName)) {
                        args.IsValid = false;
                        source.textContent = "File type should be jpg,jpeg,png,gif";
                        source.style.visibility = "visible";
                    }
                    else {
                        if (FileUpload.files[0].size > 4000000) {
                            args.IsValid = false;
                            source.textContent = "File size exceeds maximum limit 4 MB.";
                            source.style.visibility = "visible";
                        }
                    }



                }
            </script>
            <asp:CustomValidator ID="vld_cstm_file" runat="server" ErrorMessage="CustomValidator" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" ClientValidationFunction="ValidateFile"></asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_ShowInHomeAlbum" runat="server" Text="Show In Home Album"></asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chk_HomeAlbum" runat="server" />
        </td>
        <td rowspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_ShowInHomeProducts" runat="server" Text="Show In Home Products"></asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chk_HomeProducts" runat="server" />
        </td>
        <td rowspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl_ShowInProductAlbum" runat="server" Text="Show In Products Album"></asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chk_ProductsAlbum" runat="server" />
        </td>
        <td rowspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btn_Save" runat="server" Text="Add" OnClick="btn_Save_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>


