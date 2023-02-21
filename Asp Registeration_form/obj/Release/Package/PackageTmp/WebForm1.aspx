<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Asp_Registeration_form.WebForm1" %>

<!DOCTYPE html>
<script runat="server">
    protected void btn_submit_click(object sender,EventArgs args)
    {
        if (choose_file.HasFile)
        {
            choose_file.SaveAs(Server.MapPath("~/images/") + choose_file.FileName);
            img.ImageUrl = "~/images/" + choose_file.FileName;
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset style="width: 500px;">
                <legend>Registration Form</legend>
                <asp:Label runat="server" ID="lbl_username" Text="First Name: " />
                <asp:TextBox runat="server" ID="tb_username" />
                <br /><br />
                 <asp:Label runat="server" ID="Label1" Text="Last Name: " />
                <asp:TextBox runat="server" ID="TextBox1" />
                <br /><br />
                <asp:Label runat="server" Text="User Name: " />
                <asp:TextBox runat="server" ID="txt_User" />
                <br /><br />
                <asp:Label runat="server" ID="password" Text="Password: " />
                <asp:TextBox runat="server" ID="txt_password" TextMode="Password"/>
                <br /><br />
                <asp:Label runat="server" ID="lbl_confirm_password" Text="Confirm Password: " />
                <asp:TextBox runat="server" ID="txt_confirm_password" TextMode="Password"/>
                <br /><br />
                <asp:Label runat="server" ID="lbl_Email" Text="Email: " />
                <asp:TextBox runat="server" ID="txt_Email" TextMode="Email"/>
                <br /><br />
                <asp:Label runat="server" ID="lbl_mobile" Text="Mobile: " />
                <asp:TextBox runat="server" ID="Txt_mobile" TextMode="Number"/>
                <br /><br />
                <asp:Label runat="server" ID="lbl_gender" Text="Gender: "/>
                <asp:RadioButton runat="server" ID="R_dbutton_male" Text="Male" GroupName="gender" />
                <asp:RadioButton runat="server" ID="R_dbutton_female" Text="Female" GroupName="gender" />
                <br /><br />
                <asp:Label runat="server" ID="lbl_dob" Text="D.O.B: "/>
                <asp:TextBox runat="server" ID="Dob" TextMode="Date"/>
                <br /><br />
                <asp:Label runat="server" ID="lbl_course" Text="Course: "/>
                <asp:DropDownList runat="server" ID="Dropdown">
                    <asp:ListItem Text="CPP"/>
                    <asp:ListItem Text="DSA" />
                    <asp:ListItem Text="DotNet"/>
                </asp:DropDownList>
                <br /><br />
                <asp:Label runat="server" ID="lbl_Nationality" Text="Nationality: " />
                <asp:RadioButton runat="server" ID="Rd_Indian" Text="Indian" GroupName="Nationality" />
                <asp:RadioButton runat="server" ID="Rd_Others" Text="Others" GroupName="Nationality" />
                <br /><br />
                <asp:Label runat="server" ID="lbl_Profile" Text="Profile: " />
                <asp:Image runat="server" ID="img" ImageUrl="images/s2.jpg" Width="50"/>
                <br /><br />
                <asp:FileUpload runat="server" ID="choose_file"  />
                <br /><br />
                <asp:Button runat="server" ID="btn_Submit" Text="Submit" OnClick="btn_submit_click" />
                <asp:Button runat="server" ID="btn_reset" Text="Reset" />
            </fieldset>
        </div>
    </form>
</body>
</html>
