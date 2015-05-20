class Secret < ActiveRecord::Base
	belongs_to :sxoleio
	validates :title, presence: true, length: { maximum: 1000 }
	
	has_many :comments

	named_scope :sitemap, :select => 'slug, created_at, updated_at',
              :limit => 49999 # +1 for About page to make 50,000
end
