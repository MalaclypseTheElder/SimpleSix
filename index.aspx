<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Workouts.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Six Workout</title>
    
      <!-- Local Stylesheets -->
     <link rel="stylesheet" href="~/css/StyleSheet1.css" />

    
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            Simple Six Workout
        </h1>
        
        <asp:GridView ID="simpleSixGridView" runat="server" OnRowDataBound="simpleSixGridView_RowDataBound" AutoGenerateColumns="false"  >
            <Columns>

                <asp:BoundField DataField="Exercise" HeaderText="Exercise" />

                <asp:TemplateField HeaderText="Complete">

                    <ItemTemplate>

                        <asp:CheckBox ID="Complete" runat="server" />

                    </ItemTemplate>

                </asp:TemplateField>

        </Columns>

        </asp:GridView>

        <p>
            Last Day Number Done: <asp:Label ID="lastDayLabel" runat="server" Text="x"></asp:Label>
            &nbsp;Change Day <asp:DropDownList ID="dayDropDownList" runat="server" OnSelectedIndexChanged="dayDropDownList_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        </p>

        <h3>
            1 set of 10 reps 
            <br />
            5 set of 10 reps <strong>(RF)</strong>
        </h3>
        <p>
            <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
        </p>
    </form>
</body>
</html>
