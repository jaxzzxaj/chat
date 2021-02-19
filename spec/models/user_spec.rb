require 'rails_helper'

RSpec.describe User, type: :model do
  descibe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    it 'nameとemail,passwordとpassword_confirmationが存在すれば登録できること' do
      expect(@user).to be valid
    end

    it 'nameが空では登録できないこと' do
      @user.name=''
      @user.valid?
      expect(@user.errors.full_messages).to include("Name cant be blank")
    end

    it 'emailが空では登録できないこと' do
      @user.email=''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email cant be blank")
    end

    it 'passwordが空では登録できないこと' do
      @user.password=''
      @user.valid
      expected(@user.errors.full_messages).to include("Password cant be blank")

    end
  end
end
