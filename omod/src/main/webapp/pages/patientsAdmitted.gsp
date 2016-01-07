<%
    ui.decorateWith("appui", "standardEmrPage")
%>
<head>
    <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
</head>

<div  style="margin-bottom: 15px">
<table cellpadding="5" cellspacing="0" width="100%" id="queueList">
    <thead>
        <tr align="center" >
            <th>${ui.message("ipd.admissionDate")}</th>
            <th>${ui.message("ipd.patient.patientId")}</th>
            <th>${ui.message("ipd.patient.patientName")}</th>
            <th>${ui.message("ipd.patient.bedNumber")}</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    <% if(listPatientAdmitted!=null || listPatientAdmitted!=""){ %>
        <% listPatientAdmitted.each { queue -> %>
            <tr align="center" >
                <td>${ui.formatDatePretty(queue.admissionDate)}</td>
                <td>${queue.patientIdentifier}</td>
                <td>${queue.patientName}</td>
                <td>${queue.bed}</td>
                <td><button style="color:#00463F">View More</button></td>
            </tr>
        <% } %>
    <% } else { %>
        <tr align="center" >
            <td colspan="6">No patient found</td>
        </tr>
    <% } %>
    </tbody>

</table>

<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script>
    var jq = jQuery;
    jq(function () {
           jq("#queueList").dataTable();
    });
</script>
</div>
