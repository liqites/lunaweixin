class OfficalAccount < ActiveRecord::Base
  belongs_to :user
  
  has_many :auto_messages
  has_many :subscribe_auto_messages
  has_many :answer_auto_messages
end
