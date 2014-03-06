class StaticPageController < ApplicationController
  
  def home
    @idols = Idol.find(:all, :order => "count DESC")
  end
  
end
