class Message < ActiveRecord::Base

  validates :message, :poster_name, presence: true

end
