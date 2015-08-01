Rails.application.routes.draw do

  get("/", { :controller => "movies", :action => "index" })

  ########################
  # Create New
  # Directors

  # Actors

  # Movies

  ########################
  # Read
  # Directors
  get("/directors",           { :controller => "movies", :action => "get_directors" })
  get("/directors/:id",       { :controller => "movies", :action => "show_directors" })

  # Actors
  get("/actors",           { :controller => "movies", :action => "get_actors" })
  get("/actors/:id",       { :controller => "movies", :action => "show_actors" })

  # Movies
  get("/movies",           { :controller => "movies", :action => "get_movies" })
  get("/movies/:id",       { :controller => "movies", :action => "show_movies" })

  ########################
  # Update
  # Directors

  # Actors

  # Movies

  ########################
  # Delete
  # Directors
  get("/delete_directors/:id", { :controller => "movies", :action => "destroy_directors" })

  # Actors
  get("/delete_actors/:id", { :controller => "movies", :action => "destroy_actors" })

  # Movies
  get("/delete_movies/:id", { :controller => "movies", :action => "destroy_movies" })



  end
