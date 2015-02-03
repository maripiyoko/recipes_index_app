module SessionsHelper

  ## ユーザーをサインインさせるヘルパ関数
  ## ページ移動ではパスワードやパスワード確認が取得できないため
  ## ページ移動時はここで保存したremember_tokenを元に
  ## データベースを検索してユーザーを取得する
  def sign_in(user)
    # トークンの新規作成
    remember_token = User.new_remember_token
    # 暗号化されていないトークンをブラウザクッキーに保存
    cookies.permanent[:remember_token] = remember_token
    # 暗号化したトークンをデータベースに保存
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    # 与えられたユーザーを現在のユーザーにする
    # current_userはコントローラー、ビュー両方からアクセス可能
    self.current_user = user
  end


  # current_userへの要素代入
  def current_user=(user)
    @current_user = user
  end

  # current_userを取得
  # remember_tokenを暗号化したものでデータベースを検索する
  def current_user
    remember_token = User.encrypt(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
end
