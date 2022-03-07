# == Schema Information
#
# Table name: listings
#
#  id            :bigint           not null, primary key
#  host_id       :bigint           not null
#  title         :string
#  about         :text
#  max_guests    :integer          default(1)
#  address_line1 :string
#  address_line2 :string
#  town          :string
#  county        :string
#  postcode      :string
#  country       :string
#  lat           :decimal(10, 6)
#  lng           :decimal(10, 6)
#  status        :integer          default(0)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Listing < ApplicationRecord
  validates :title, presence: true
  validates :max_guests, numericality: { greater_than: 0, less_than_or_equal_to: 100 }
  belongs_to :host, class_name: 'User'
  enum status: %i[draft published archived]
end
