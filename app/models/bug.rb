class Bug < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy

    enum status: {
        pending: 'pending', 
        started: 'started',
        fixed: 'fixed'
      }
end
