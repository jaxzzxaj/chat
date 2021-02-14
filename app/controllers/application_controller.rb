class ApplicationController < ActionController::Base
  #ログインしていないユーザーのログインページの画面に促すことができる。
  before_action :authenticate_user!
end
