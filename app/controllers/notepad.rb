<h3>Your applications</h3>
<div class="container">
<%@job.jobapps.each do |j|%>
<%=j.mover.first_name%>
<h3><%="#{j.mover.first_name}".capitalize + " wants to help with your move!"%></h3><br>
<h4><%="Message:" + " #{j.message}"%></h4><br>
<%=form_for(j) do |userzapp| %>
<div class="field">
  <%= userzapp.label :accepted %>
  <%= userzapp.radio_button_tag :accepted, 'Accept'%>
  <%= userzapp.label :not_accepted %>
  <%= userzapp.radio_button_tag :not_accepted, 'Reject'%>
</div>
<div class="action">
<%=  userzapp.submit%>
</div>


<%end%>
<%end%>
</div>
