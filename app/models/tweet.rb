class Tweet < ApplicationRecord
    validates :message, length: { maximum: 140 }
end
