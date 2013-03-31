class Record < ActiveRecord::Base
  belongs_to :user
  attr_accessible :memo, :weight#, :user_id#, :user
end
