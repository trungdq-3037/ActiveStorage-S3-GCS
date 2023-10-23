class Cloud < ApplicationRecord
    has_one_attached :file, service: :google
end
