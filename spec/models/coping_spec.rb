require 'rails_helper'

RSpec.describe Coping, type: :model do

  it "coping_repertoryが201文字以上ならバリデーションが通らない" do
    coping = Coping.new(coping_repertory: 'a*201')
    expect(coping).not_to be_valid
  end
end
