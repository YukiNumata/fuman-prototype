class UsersController < ApplicationController
  has_many :likes
  has_many :dislikes
end
