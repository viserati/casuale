class HomeController < ApplicationController

  before_action :common, :only => [:index, :team]

  def common
    @hero_name = Faker::Superhero.name # Random Superhero name
    @hero_power = Faker::Superhero.power # Random Superhero power
    @hero_prefix = Faker::Superhero.prefix # Random Superhero prefix
    @corp_title = Faker::Name.title
    @corp_power = Faker::Company.bs
    @corp_power = @corp_power.titleize

    @rand_num = rand(1..1000)
    @set_number = rand(1..4)
    @bg = rand(1..2)

    # Randomly pick our Avatar set
    if @set_number ==1
      @set = "set1"
    elsif @set_number ==2
      @set = "set2"
    elsif @set_number ==3
      @set = "set3"
    else
      @set = "set4"
    end

    # Randomly pick our Background
    if @background == 1
      @background = "bg1"
    else
      @background = "bg2"
    end

    @avatar = Faker::Avatar.image(@rand_num, "300x300", "png", @set, @background)
  end

  def index
    @name = "Xander Alexander"
  end

  def team

  end
end
