require 'rails_helper'

<h1>Edit Sponsored Post</h1>

<div class="row">
  <div class="col-md-4">
    <p>
      Guidelines for sponsored posts
    </p>
    <ul>
      <li>Make sure that it rhymes.</li>
      <li>Don't use the letter "A".</li>
      <li>The incessant use of hashtags will get you banned.</li>
    </ul>
  </div>
  <div class="col-md-8">
  <%= form_for [@sponsored_post.topic, @sponsored_post] do |f| %>
    <div class="form-group">
      <%= f.label :title %>
      <%= f.text_field :title, class: 'form-control', placeholder: "Enter post title" %>
    </div>
    <div class="form-group">
      <%= f.label :body %>
      <%= f.text_area :body, rows: 8, class: 'form-control', placeholder: "Enter post body" %>
    </div>
    <div class="form-group">
      <%= f.label :price %>
      <%= f.number_field :price, class: 'form-control' %>
    </div>
    <div class="form-group">
      <%= f.submit "Save", class: 'btn btn-success' %>
    </div>
  <% end %>
  </div>
</div>
end
