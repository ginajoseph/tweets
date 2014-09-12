class Clients < User
belongs_to :agent
scope :buyers, -> { where(type: 'Buyer') }
scope :sellers, -> { where(type: 'Seller') }
end