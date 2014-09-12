class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable

  scope :agents, -> { where(type: 'Agent') }
  scope :clients, -> { where(type: 'Seller') }
  scope :clients, -> { where(type: 'Buyer') }

  delegate :buyers, :sellers, to: :clients

  class << self
    def types
      %w(Agent Buyer Seller)
    end
  end
end
