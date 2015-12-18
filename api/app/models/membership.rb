class Membership < ActiveRecord::Base
  belongs_to :member, inverse_of :memberships
  belongs_to :team, inverse_of :memberships
end
