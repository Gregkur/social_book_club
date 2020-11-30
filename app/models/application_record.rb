class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  include PgSearch::Model
  pg_search_scope :search,
    against: [ :title, :description, :author, :genre ],
    using: {
      tsearch: { prefix: true }
    }
end
