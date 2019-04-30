require 'rails_helper'


RSpec.feature "コメント投稿機能", type: :feature do
    scenario "サインインのテスト(サインインしないと全ての機能が使えないため)" do
      visit new_user_registration_path
      fill_in '名前', with: 'shibao'
      fill_in 'メールアドレス', with: 'shibao@example.com'
      fill_in 'パスワード', with: 'shibaodayo'
      fill_in '確認用パスワード', with: 'shibaodayo'
      click_on '登録する'

      expect(page).to have_content 'shibaoさんのページ'
    end

    scenario "ストレス内容とステレス度が登録し、Ajaxで表示できるかテストした", js: true do
      # サインイン
      visit new_user_registration_path
      fill_in '名前', with: 'shibao'
      fill_in 'メールアドレス', with: 'shibao@example.com'
      fill_in 'パスワード', with: 'shibaodayo'
      fill_in '確認用パスワード', with: 'shibaodayo'
      click_on '登録する'

      click_on 'ストレス認識画面へ'
      click_on 'ストレス認識改善を行う'

      # 日付け登録
      sleep 0.5
      fill_in "creation_date_date", with: "2019/04/30"
      click_on '登録する'

      # ストレス内容とストレス度の登録
      fill_in 'ストレスの内容', with: 'テスト1-1'
      fill_in '現在のストレス度(0~100%)', with: '80'
      fill_in 'ストレスの認識を改善した内容', with: 'テスト1-2'
      fill_in '改善後のストレス度(0~100%)', with: '30'
      click_on '登録する'
      find_link('削除').visible?

      expect(page).to have_content 'テスト1-1'
      expect(page).to have_content '80'
      expect(page).to have_content 'テスト1-2'
      expect(page).to have_content '30'
    end

    scenario "コーピングが登録し、Ajaxで表示できるかテストした", js: true do
      # サインイン
      visit new_user_registration_path
      fill_in '名前', with: 'shibao'
      fill_in 'メールアドレス', with: 'shibao@example.com'
      fill_in 'パスワード', with: 'shibaodayo'
      fill_in '確認用パスワード', with: 'shibaodayo'
      click_on '登録する'

      click_on 'コーピングレパートリー集へ'

      # コーピングレパートリーの登録
      fill_in 'コーピングレパートリー', with: 'テスト1-3'
      click_on '登録する'
      find_link('削除').visible?

      expect(page).to have_content 'テスト1-3'
    end
end
