class Invitation < ApplicationRecord
  has_one :emitted_by, :class_name => "User"
end
