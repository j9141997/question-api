# frozen_string_literal: true

class Account < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  before_create :generate_uuid

  def generate_uuid
    self.id = loop do
      uuid = SecureRandom.uuid
      break uuid unless self.class.exists?(id: uuid)
    end
  end

end
