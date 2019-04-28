require 'rails_helper'

RSpec.describe Comment, type: :model do

  it "before_commentが201文字以上ならバリデーションが通らない" do
    comment = Comment.new(before_content: 'a*201', after_content: '失敗テスト', before_point: 80, after_point: 20)
    expect(comment).not_to be_valid
  end

  it "after_commentが201文字以上ならバリデーションが通らない" do
    comment = Comment.new(before_content: '失敗テスト', after_content: 'a*201', before_point: 80, after_point: 20)
    expect(comment).not_to be_valid
  end

  it "before_pointが101以上ならバリデーションが通らない" do
    comment = Comment.new(before_content: '失敗テスト', after_content: '失敗テスト', before_point: 101, after_point: 20)
    expect(comment).not_to be_valid
  end

  it "after_pointが0未満ならバリデーションが通らない" do
    comment = Comment.new(before_content: '失敗テスト', after_content: '失敗テスト', before_point: 101, after_point: -1)
    expect(comment).not_to be_valid
  end
end
