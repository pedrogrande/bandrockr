class Link < ActiveRecord::Base
  belongs_to :band
  belongs_to :member
end
