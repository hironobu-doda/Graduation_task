require 'rails_helper'


RSpec.feature "コメント投稿機能", type: :feature do

  scenario "サインインしないと全ての機能が使えないため、ログインのテスト" do
    visit new_user_registration_path
    # save_and_open_page

    fill_in '名前', with: 'shibao'
    fill_in 'メールアドレス', with: 'shibao@example.com'
    fill_in 'パスワード', with: 'shibaodayo'
    fill_in '確認用パスワード', with: 'shibaodayo'
    click_on '登録する'
    # save_and_open_page

    expect(page).to have_content 'shibaoさんのページ'

  end

  scenario "日付けに対するコメントができるかのテスト" do

    # サインイン
    visit new_user_registration_path
    fill_in '名前', with: 'shibao'
    fill_in 'メールアドレス', with: 'shibao@example.com'
    fill_in 'パスワード', with: 'shibaodayo'
    fill_in '確認用パスワード', with: 'shibaodayo'
    click_on '登録する'
    visit new_creation_date_path

    # 日付け登録
    click_on '登録する'
    save_and_open_page

    # ストレス内容とストレス度の登録
    fill_in 'ストレスの内容', with: 'テスト1-1'
    fill_in '現在のストレス度(%)', with: '80'
    fill_in 'ストレスの認識を改善した内容', with: 'テスト1-2'
    fill_in '改善後のストレス度(%)', with: '30'
    click_on '登録する'
    visit user_path
    save_and_open_page

  end

  scenario "日付に対するコメントができるかテスト" do

  end

  scenario "コメントの数字が表示されるかテスト" do

  end
end
