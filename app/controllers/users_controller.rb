class UsersController < ApplicationController
    def index
       #@users = User.all.order(created_at: :desc)
       #@users = User.all.limit(1)

       @q = User.ransack(params[:q])
       @users = @q.result(distinct: true)
      end
end