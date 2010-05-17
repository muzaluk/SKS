class UserController < ApplicationController
  before_filter :login_required, :only => :my_account
  def index
    redirect_to :action => :login
  end
  def login
    @user = User.new
    @user.username = params[:username]
  end

  def process_login
    if user = User.authenticate(params[:user])
      session[:id] = user.id #remeber the user's id during this session
      redirect_to session[:return_to] || '/user/my_account'
    else
      flash[:error] = 'Nieprawidłowy login i/lub hasło.'
      redirect_to :action => 'login', :username => params[:user][:username]
    end
  end

  def logout
    reset_session
    flash[:message] = 'Logged out.'
    redirect_to(root_path)
  end

  def my_account
    render :layout => "admin" 
  end

end
