# frozen_string_literal: true

class Ability
  include CanCan::Ability

   def initialize(user)
     user ||= User.new
     can [:index, :show, :new, :create], Movie
     can [:edit, :update, :destroy], Movie, user_id: user.id
   end
end
