class HomeController < ApplicationController
  def index
    
    if params[:id] == ""
      @nothing = "Please enter a symbol."
    elsif
      if params[:id]
        begin
          @stock = StockQuote::Stock.quote(params[:id])
        rescue 
          @error = "Does not exist"
        end
      end
    end
    
  end

  
  def about
  end
end
