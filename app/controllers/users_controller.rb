class UsersController < ApplicationController
    
    def new
    end
    
    def login_form
    end
    
    def login
        @user=User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            session[:id]=@user.id
            flash[:notice]="Logged In..."
            redirect_to("/")
        else
            render("users/login_form")
        end
    end
    
    def create
        @user=User.new(name: params[:name],email: params[:email],password: params[:password])
        if @user.save
            session[:id]=@user.id
            flash[:notice]="Signed Up..."
            redirect_to("/")
        else
            render("users/new")
        end
    end

end
