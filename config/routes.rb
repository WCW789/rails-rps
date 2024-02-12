Rails.application.routes.draw do
  get("/", { :controller => "pages", :action => "home" })

  post("/rock", { :controller => "games", :action => "play_rock" })
  get("/rock", { :controller => "games", :action => "play_rock" })

  post("/scissors", { :controller => "games", :action => "play_scissors" })
  get("/scissors", { :controller => "games", :action => "play_scissors" })

  post("/paper", { :controller => "games", :action => "play_paper" })
  get("/paper", { :controller => "games", :action => "play_paper" })
end
