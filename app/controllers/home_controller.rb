class HomeController < ApplicationController

  before_action :common, :only => [:index, :team]

  def common
    @hero_name = Faker::Superhero.name # Random Superhero name
    @hero_power = Faker::Superhero.power # Random Superhero power
    @hero_prefix = Faker::Superhero.prefix # Random Superhero prefix
  end

  def index
    @name = "Xander Alexander"
  end

  def team

  end
end
