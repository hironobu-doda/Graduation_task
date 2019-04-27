require 'rails_helper'


RSpec.feature "コメント投稿機能", type: :feature do

  scenario "サインインしないと全ての機能が使えないため、ログインのテスト" do
    visit new_user_registration_path

  end

  scenario "日付投稿のテスト" do

  end

  scenario "日付に対するコメントができるかテスト" do

  end

  scenario "コメントの数字が表示されるかテスト" do

  end
end
