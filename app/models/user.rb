class User < ApplicationRecord
  has_one_attached :avatar, service: :amazon
  # despite of  config/environments/development setings
  # config.active_storage.service = :local
  # we also force service via service as upper code
end
