class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable, :lockable, :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
      data = access_token.info
      user = User.where(email: data['email']).first
      

      unless user
          user = User.create(name: data['name'],
             email: data['email'],
             password: Devise.friendly_token[0,20]
          )
      end
      user.confirmed_at = Time.now
      user
  end

  has_one_attached :photo
end
