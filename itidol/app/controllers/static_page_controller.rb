class StaticPageController < ApplicationController
  
  def home
      
    @idols = Idol.find(:all, :order => "count DESC")

    if @idols.length > 0
      @random_motto = @idols.sample.motto
    end
      
  end
  
end
