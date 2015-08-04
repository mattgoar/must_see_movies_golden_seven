Rails.application.routes.draw do

  get("/", { :controller => "movies", :action => "index" })

  ########################
  # Create New
  # Directors
  get("/directors/new_form",     { :controller => "movies", :action => "input_director" })
  get("/directors/create_director",  { :controller => "movies", :action => "create_director" })

  # Actors
  get("/actors/new_form",         { :controller => "movies", :action => "input_actor" })
  get("/actors/create_actor",     { :controller => "movies", :action => "create_actor" })

  # Movies
  get("/movies/new_form",         { :controller => "movies", :action => "input_movie" })
  get("/movies/create_movie",     { :controller => "movies", :action => "create_movie" })

  ########################
  # Update
  # Directors
  get("/directors/edit_form/:id",         { :controller => "movies", :action => "edit_director" })
  get("/directors/edit_director/:id",     { :controller => "movies", :action => "commit_director" })

  # Actors
  get("/actors/edit_form/:id",      { :controller => "movies", :action => "edit_actor" })
  get("/actors/edit_actor/:id",     { :controller => "movies", :action => "commit_actor" })

  # Movies
  get("/movies/edit_form/:id",      { :controller => "movies", :action => "edit_movie" })
  get("/movies/edit_movie/:id",     { :controller => "movies", :action => "commit_movie" })

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
  # Delete
  # Directors
  get("/delete_directors/:id", { :controller => "movies", :action => "destroy_directors" })

  # Actors
  get("/delete_actors/:id", { :controller => "movies", :action => "destroy_actors" })

  # Movies
  get("/delete_movies/:id", { :controller => "movies", :action => "destroy_movies" })

  end
