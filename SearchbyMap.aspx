<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchbyMap.aspx.cs" Inherits="_Default" %>

<asp:Content id="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB_lCnVrG6orm6OmyLdPVhfzLBnuXRTlSE&sensor=false"></script>
    <script type="text/javascript">
        var markers = [
            <asp:Repeater ID="rptMarkers" runat="server">
            <ItemTemplate>
                    {
                        "name": '<%# Eval("name") %>',
                        "lat": '<%# Eval("latitude") %>',
                        "lng": '<%# Eval("longitude") %>',
                        "typeofspot": '<%# Eval("typeofspot") %>'
                    }
    </ItemTemplate>
    <SeparatorTemplate>
        ,
    </SeparatorTemplate>
   </asp:Repeater>
        ];
    </script>
    <script type="text/javascript">

        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 12,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            for (i = 0; i < markers.length; i++) {
                var data = markers[i]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.title
                });
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent(data.name);
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
            }
        }
    </script>
    <%--<form id="form1" runat="server">--%>       
    <div id="dvMap" style="width:90%; height:700px;" class="container"></div><br /><br />
   <%-- </form>--%>
</asp:Content>

