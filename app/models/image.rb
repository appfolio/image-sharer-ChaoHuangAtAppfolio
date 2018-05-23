class Image < ApplicationRecord
  validate :valid_url
  validates :url, uniqueness: true

  private

  require 'uri'

  def valid_url
    uri = URI.parse(url)
    if !uri&.host.nil?
      true
    else
      errors.add(:url, 'Invalid url.')
    end
  end
end
