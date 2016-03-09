<table class="table table-hover">
  <tr>
    <th>Job Name</th>
    <th>Description</th>
    <th>Area</th>
  </tr>
  <%@user.jobs.each do |jobz|%>
  <tr>
    <td>
      <%=jobz.name%>
    </td>
    <td>
      <%=jobz.description%>
    </td>
    <td>
      <%=jobz.area%></td>
  </tr>
  <%end%>

</table>
