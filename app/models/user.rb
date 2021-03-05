class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable :trackable, :confirmable, :lockable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_commit :send_welcome_email, on: :create

  def send_welcome_email
    MailJob.set(wait: 5.second).perform_later(id)
  end
end
