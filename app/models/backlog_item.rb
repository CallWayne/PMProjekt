class BacklogItem < ApplicationRecord
  enum ranking: [ :high, :medium, :low ]
end
