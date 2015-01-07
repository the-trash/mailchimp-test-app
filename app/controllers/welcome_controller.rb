class WelcomeController < ApplicationController
  def index
  end
  def add_mail
    gb = Gibbon::API.new(:api)
    gb.lists.subscribe({:id => :list_id, :email => {:email => params[:email]}, :merge_vars => {:FNAME => 'First Name', :LNAME => 'Last Name'}, :double_optin => false})
    redirect_to root_path
  end
end
