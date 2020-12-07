class UsersController < ApplicationController
    def index
       @users = User.all.order(created_at: :desc)
       #@users = User.all.limit(1)
      end
end