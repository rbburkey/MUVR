<div class="col-md-4 text-center">
  <h2>Reviews about You</h2>

  <%@reviews.each do |user_review|%>
  <!-- want userz=true because we want reviews about user  -->
  <%if user_review.user_id == @user.id && user_review.userz?%>
  <%= user_review.title%>
  <%= user_review.body%>
  <%= user_review.user_id%>
  <%= user_review.userz%>
  <%end%>
  <%end%>
</div>
