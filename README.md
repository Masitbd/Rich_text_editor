# README

## Add the rich text editor
// Console
rails action_text:install
 
// application.js
require("trix")
require("@rails/actiontext")
 
// actiontext.scss
@import "trix/dist/trix";
 
// application.scss
@import "./actiontext.scss";
 
// app/models/course.rb
class Course < ApplicationRecord
  has_rich_text :description
end
 
// app/views/courses/_form.html.erb
ERB
<%= f.label :description %>
<%= f.rich_text_area :description %>
 
HAML + simple_form:
= f.input :description, as: :rich_text_area
Fullscreen

##  Add the fake dara in the application

add fake data to the app

https://github.com/faker-ruby/faker


// Gemfile
gem 'faker'
 
// seeds.rb
30.times do
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote
  }])
end
 
// Console
bundle
rails db:seed



## Devise install for the application login

https://github.com/heartcombo/devise


- Add the login and the logout functionality

<% if current_user %>
  <%= current_user.username %>
  <%= link_to 'Account settings', edit_user_registration_path %>
  <%= link_to 'Sign out', destroy_user_session_path, method: :delete %>
<% else %>
  <%= link_to 'Sign Up', new_user_registration_path %>
  <%= link_to 'Log In', new_user_session_path %>
<% end %>
