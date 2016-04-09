<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pivotal CF Meetup | Welcome</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <script src="js/modernizr.js"></script>
</head>
<body>
    <form id="form1" runat="server">


        <nav class="top-bar">
            <ul class="title-area">
                <li class="name">
                    <h1><a href="./">Pivotal Cloud Foundry Demo</a></h1>
                </li>
            </ul>
        </nav>
        <div class="row">
            <div class="large-12 columns">
                <h3>Example .NET app running on Pivotal Cloud Foundry</h3>
                <hr />
            </div>

            <div class="row" runat="server" visible="false" id="attendeePane">
                <div class="large-12 columns">
                    <h3>Datagrid bound to MySQL Service Instance:</h3>
                    <h5>List of Attendees</h5>
                    <hr />
                    <asp:GridView ID="gridAttendees" runat="server"
                        AutoGenerateColumns="false"
                        EmptyDataText="No attendees found."
                        DataSourceID="AttendeeDataSource"
                        EnableViewState="true">
                        <Columns>
                            <asp:BoundField HeaderText="Attendee ID" DataField="id" InsertVisible="false" ReadOnly="true" Visible="false" />
                            <asp:BoundField HeaderText="First Name" DataField="first_name" />
                            <asp:BoundField HeaderText="Last Name" DataField="last_name" />
                            <asp:BoundField HeaderText="Address" DataField="address" />
                            <asp:BoundField HeaderText="City" DataField="city" />
                            <asp:BoundField HeaderText="State" DataField="state" />
                            <asp:BoundField HeaderText="Zip Code" DataField="zip_code" />
                            <asp:BoundField HeaderText="Phone" DataField="phone_number" />
                            <asp:BoundField HeaderText="Email Address" DataField="email_address" />
                            <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
                        </Columns>
                    </asp:GridView>
                    <asp:Button ID="btnAddAttendee" runat="server" Text="Add Attendee"  CssClass="medium button" OnClick="btnAddAttendee_Click" />
                </div>
                <asp:SqlDataSource
                    ID="AttendeeDataSource"
                    runat="server"
                    DataSourceMode="DataReader"></asp:SqlDataSource>
            </div>
            <div class="row">
                <div class="large-12 columns">
                    <div class="panel">
                        <h4>App Instance info and Env. Variables:</h4>
                        <br />
                        <p>
                            Current server time of Diego Cell: <em><b>
                                <asp:Label ID="lblTime" runat="server"></asp:Label></b></em>
                        </p>
                        <p>
                            .NET version: <em><b>
                                <asp:Label ID="lblDotNetVersion" runat="server"></asp:Label></b></em>
                        </p>
                        <p>
                            Application port: <em><b>
                                <asp:Label ID="lblPort" runat="server"></asp:Label></b></em>
                        </p>
                        <p>
                            App instance GUID: <em><b>
                                <asp:Label ID="lblInstanceID" runat="server"></asp:Label></b></em>
                        </p>
                        <p>
                            App instance index: <em><b>
                                <asp:Label ID="lblInstanceIndex" runat="server"></asp:Label></b></em>
                        </p>
                        <p>
                            Cell Uptime: since <em><b>
                                <asp:Label ID="lblInstanceStart" runat="server"></asp:Label></b></em>
                        </p>
                        <p>
                            vcap_services: <em><b>
                                <asp:Label ID="lblBoundServices" runat="server"></asp:Label></b></em>
                        </p>
                        <p>
                            DB engine: <em><b>
                                <asp:Label ID="lblDbEngine" runat="server"></asp:Label></b></em>
                        </p>
                    </div>
                    <hr />
                </div>
            </div>

            <div class="row">
                <div class="large-12 columns">
                    <!-- This simply refreshes the page to demonstrate changed (or unchanged) ports -->
                    <a href="javascript:window.location.reload();" class="medium button">Refresh</a>
                    <!-- This link should be changed to the application's kill action -->
                    <asp:Button ID="btnKill" runat="server" Text="Kill" CssClass="medium alert button" OnClick="btnKill_Click" />
                </div>
            </div>
            <script src="js/jquery.js"></script>
            <script src="js/foundation.min.js"></script>
            <script>
                $(document).foundation();
            </script>


        </div>
    </form>
</body>
</html>
