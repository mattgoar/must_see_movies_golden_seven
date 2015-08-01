class MoviesController < ApplicationController

  def index
  end

  ########################
  # Create New
  # Directors

  # Actors

  # Movies

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

  # Actors

  # Movies

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
