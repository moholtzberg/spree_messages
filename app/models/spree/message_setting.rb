class Spree::MessageSetting < ActiveRecord::Base
  self.table_name = "message_settings"
  # self.primary_key = "email"
  # attr_accessor :user, :email, :message
  belongs_to :store, :class_name => Spree::Store, :foreign_key => :store_id
end