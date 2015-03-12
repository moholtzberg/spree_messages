class Spree::Message < ActiveRecord::Base
  self.table_name = "messages"
  # self.primary_key = "email"
  attr_accessor :is_human
  # attr_accessor :user, :email, :message
  belongs_to :user, :class_name => Spree.user_class.to_s, :foreign_key => :email, :primary_key => :email
  belongs_to :order, :class_name => Spree::Order
  validates :name, presence: true
  validates :email, presence: true
  # validates :is_human, presence: true
end