class MoviesController < ApplicationController

  def index
  end

  ########################
  # Create New
  # Directors
  def input_director
    @page_title = "Create new director"
    @type = "director"
    render("new_person.html.erb")
  end

  def create_director
    name = params[:name]
    dob = params[:dob]
    bio= params[:bio]
    pic = params[:pic]
    p = Director.new
    p.name = name
    p.bio = bio
    p.dob = dob
    p.image_url = pic
    p.save
    redirect_to("/directors")
  end

  # Actors
  def input_actor
    @page_title = "Create new actor"
    @type = "actor"
    render("new_person.html.erb")
  end

  def create_actor
    name = params[:name]
    dob = params[:dob]
    bio= params[:bio]
    pic = params[:pic]
    p = Actor.new
    p.name = name
    p.bio = bio
    p.dob = dob
    p.image_url = pic
    p.save
    redirect_to("/actors")
  end

  # Movies
  def input_movie
    @page_title = "Create new movie"
    @type = "movie"
    render("new_movie.html.erb")
  end

  def create_movie
    title = params[:title]
    year = params[:year]
    description= params[:description]
    duration= params[:duration]
    pic = params[:pic]
    p = Movie.new
    p.title = title
    p.description  = description
    p.year = year
    p.image_url = pic
    p.duration  = duration
    p.save
    redirect_to("/movies")
  end

  ########################
  # Read
  # Directors
  def get_directors
    @people = Director.all
    @page_title = "Directors"
    @type = "directors"
    render("people.html.erb")
  end

  def show_directors
    @person = Director.find(params[:id])
    @page_title = "View Director"
    @type = "directors"
    render("show_person.html.erb")
  end

  # Actors
  def get_actors
    @people = Actor.all
    @page_title = "Actors"
    @type = "actors"
    render("people.html.erb")
  end

  def show_actors
    @person = Actor.find(params[:id])
    @page_title = "View Actor"
    @type = "actors"
    render("show_person.html.erb")
  end

  # Movies
  def get_movies
    @movies = Movie.all
    @page_title = "Movies"
    @type = "movies"
    render("movies.html.erb")
  end

  def show_movies
    @movie = Movie.find(params[:id])
    @page_title = "Movies"
    @type = "movies"
    render("show_movie.html.erb")
  end

  ########################
  # Update
  # Directors
   def edit_director
    @person = Director.find(params[:id])
    @page_title = "Edit director"
    @type = "director"
    render("edit_person.html.erb")
  end

  def commit_director
    name = params[:name]
    dob = params[:dob]
    bio= params[:bio]
    pic = params[:pic]
    p = Director.find(params[:id])
    p.name = name
    p.bio = bio
    p.dob = dob
    p.image_url = pic
    p.save
    redirect_to("/directors")
  end

  # Actors
   def edit_actor
    @person = Actor.find(params[:id])
    @page_title = "Edit actor"
    @type = "actor"
    render("edit_person.html.erb")
  end

  def commit_actor
    name = params[:name]
    dob = params[:dob]
    bio= params[:bio]
    pic = params[:pic]
    p = Actor.find(params[:id])
    p.name = name
    p.bio = bio
    p.dob = dob
    p.image_url = pic
    p.save
    redirect_to("/actors")
  end

  # Movies
  def edit_movie
    @movie = Movie.find(params[:id])
    @page_title = "Edit movie"
    @type = "movie"
    render("edit_movie.html.erb")
  end

  def commit_movie
    title = params[:title]
    year = params[:year]
    description= params[:description]
    duration= params[:duration]
    pic = params[:pic]
    p = Movie.find(params[:id])
    p.title = title
    p.description  = description
    p.year = year
    p.image_url = pic
    p.duration  = duration
    p.save
    redirect_to("/movies")

  end

  ########################
  # Delete
  # Directors
  def destroy_directors
    Director.destroy(params[:id])
    redirect_to("/directors")
  end

  # Actors
  def destroy_actors
    Actor.destroy(params[:id])
    redirect_to("/actors")
  end

  # Movies
  def destroy_movies
    Movie.destroy(params[:id])
    redirect_to("/movies")
  end

end
