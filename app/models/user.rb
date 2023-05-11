class User < ApplicationRecord
    has_many :addresses, dependent: :destroy
    accepts_nested_attributes_for :addresses, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true
end
