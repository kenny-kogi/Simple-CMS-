class DemoController < ApplicationController
  def index
  end

  def hello
    #Used to redirect to a route through the help of the routes
    #redirect_to(:controller => "demo", :action => "index")
    
    #instantiating the instance variable
    @array = [1, 2, 3, 4, 5]

    #instatiating variables with the params
    @page = params["page"]
    @id = params["id"]

  end

  def about
    render("demo/about_us")


  end


  def contact
   
    if ["us", "ca"].include?(params[:country])
      @phone = "0713578884"
    elsif params[:country] == "uk"
      @phone = "0712746494"
    else
      @phone = "0746740369"
    end
    render("demo/contact_us")
  end
end
