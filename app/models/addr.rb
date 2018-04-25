class Addr < ApplicationRecord
  belongs_to :orderable, polymorphic: true
end
