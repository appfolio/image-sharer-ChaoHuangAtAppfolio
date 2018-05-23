class Image < ApplicationRecord
  validate :valid_url
  validates :url, uniqueness: true
  private

  def valid_url
    domain = url.split('.')
    if domain.length < 2
      errors.add(:url, 'Invalid url, valid url should have a dot and not empty')
    elsif /(?:[A-Z]{2}|com)/.match(domain[-1]).nil?
      # present? blank? nil? empty?
      errors.add(:url, 'Invalid url, valid url should end up with 2 capital letter or com')
    end
  end

end
