class OfficalAccount < ActiveRecord::Base
  belongs_to :user
  has_many :auto_messages
end
