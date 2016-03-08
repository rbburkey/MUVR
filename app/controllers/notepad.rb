<div class="col-md-6 text-center">

  <%= link_to new_user_session_path do %>
  <div class="btn btn-sq-lg btn-primary">
    <br>
    <i class="fa fa-user fa-5x"></i>
    <br>
    <p class="signin">User Signin</p>
  </div>
<% end %>

</div>

<div class="col-md-6 text-center">

  <%= link_to new_mover_session_path do %>
  <div class="btn btn-sq-lg btn-success">
    <br>
    <i class="fa fa-user fa-5x"></i>
    <br>
    <p class="signin">User Signin</p>
  </div>
<% end %>


<div class="jumbotron">
  <div class="profile container">

    <h1><%= "#{@mover.first_name}" + " #{@mover.last_name}'s" + " Profile"%></h1>
    <h2><%= "Username: " + "#{@mover.user_name}"%></h2>
    <h2><%= "Available in" + " #{@mover.service_area}" %></h2>
    <%if current_mover %>

    <div align="center">
      <br>
      <div style="text-align: center"><%= link_to "Account Settings", edit_mover_registration_path, class: 'btn btn-warning btn-lg'%>
      </div>
      <% else %>

      <div style="text-align: center">
        <h2><%= "#{@mover.first_name}'s" + " Reviews" %></h2>

        <%@reviews.each do |mover_review|%>
        <!-- want userz=false because we want reviews about movers -->
        <%if mover_review.mover_id == @mover.id && !mover_review.userz?%>
        <%= mover_review.body%>
        <%= mover_review.mover_id%>
        <%= mover_review.userz%>
        <%end%>
        <%end%>
      </div>
    </div>
  </div>
  <% end %>
</div>
