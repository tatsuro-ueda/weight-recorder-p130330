# coding = utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authorize

  helper_method :current_user

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to log_in_url, notice: "ログインして下さい"
    end
  end
end
# TODO usersコントローラを作る
# TODO userモデルを作る
# TODO usersコントローラを実装する
# TODO users/newビューを実装する
# TODO routeを編集する
# TODO userモデルを編集する
# TODO sessionコントローラを作る
# TODO sessions/newビューを実装する
# TODO routeを編集する
# TODO sessionコントローラを実装する
# TODO userモデルを編集する
# TODO applicationビューを編集する
# TODO routeを編集する
# TODO sessionコントローラを編集する
# TODO リンクを追加する
# TODO ヘルパーメソッドを追加する
# TODO userモデルを編集する
# TODO 閲覧画面を作る
# TODO 非ログイン者に対する閲覧制限をかける

# TODO 時間があれば画面遷移などを改良する