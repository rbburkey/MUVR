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



<div class="profile container">
  <h3>All Jobs</h3>
  <%@user.jobs.each do |jobz|%>
  <div class=".col-md-4">
    <div class="column">
      <h4><%= jobz.name %></h4>
      <h3><%=jobz.description%></h3>
      <h3><%=jobz.area%></h3>
      <div class="image"><%= image_tag jobz.image.url(:medium) %></div>
      <%= link_to "See Details", job_path(jobz), class: "btn btn-primary"%>
    </div>
    <% end %>
  </div>
</div>
</div>
