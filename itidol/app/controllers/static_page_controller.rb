class StaticPageController < ApplicationController
  
  def home
    @idols = Idol.all
    
  end

  
end
