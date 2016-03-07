
<div class="jumbotron">
  <div class="profile container">
    <%- model_class = Job -%>
    <div class="page-header">
      <h1>Listed Jobs</h1>
    </div>
    <table class="table table-striped">
      <thead>
        <tr>
          <th><%= model_class.human_attribute_name(:name) %></th>
          <th><%= model_class.human_attribute_name(:description) %></th>
          <th><%= model_class.human_attribute_name(:area) %></th>
          <th><%=t '.actions', :default => t("helpers.actions") %></th>
        </tr>
      </thead>
      <tbody>
        <% @jobs.each do |job| %>
        <tr>
          <td class="orange_button"><%= link_to job.name, job_path(job)%></td>
          <td><%= job.description %></td>
          <td><%= job.area %></td>
        </tr>
        <% end %>
      </tbody>
    </table>
  </div>
</div>
