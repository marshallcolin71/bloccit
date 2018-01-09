require 'rails_helper'

<h1><%= @sponsored_post.title %></h1>
<div class="row">
  <div class="col-md-8">
    <p><%= @sponsored_post.body %></p>
    <p><%= @sponsored_post.price %></p>
  </div>
  <div class="col-md-4">
    <%= link_to "Edit", edit_topic_sponsored_post_path(@sponsored_post.topic, @sponsored_post), class: 'btn btn-success' %>
    <%= link_to "Delete", [@sponsored_post.topic, @sponsored_post], method: :delete, class: 'btn btn-danger', data: { confirm: 'Are you sure you want to delete this post?' } %>
  </div>
</div>

end
