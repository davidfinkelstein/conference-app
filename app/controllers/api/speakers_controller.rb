class Api::SpeakersController < ApplicationController


  def index
    # @speakers = Speaker.all
    @speakers = Speaker.all.order(:age => :asc)
    render 'index.json.jbuilder'
  end

  def create 
    @speaker = Speaker.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      age: params[:age],
      gender: params[:gender]
      )
    render 'create.json.jbuilder'
  end

  def show
    @speaker = Speaker.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @speaker = Speaker.find(params[:id])

    @speaker.first_name = params[:first_name] || @speaker.first_name
    @speaker.last_name = params[:last_name] || @speaker.last_name
    @speaker.email = params[:email] || @speaker.email
    @speaker.age = params[:age] || @speaker.age
    @speaker.gender = params[:gender] || @speaker.gender

    @speaker.save

    render 'update.json.jbuilder'
  end

  def destroy
    @speaker = Speaker.find(params[:id])
    @speaker.destroy

    render json: {message: "Speaker Deleted"}
  end

  # def first_speaker
  #   @speaker = Speaker.find_by(id: 1)
  #   render 'speaker.json.jbuilder'
  # end

  # def last_speaker
  #   @speaker = Speaker.find_by(id: 6)
  #   render 'speaker.json.jbuilder'
  # end

  # def speaker
  #   @speaker = Speaker.find_by(id: params[:id])
  #   render 'speaker.json.jbuilder'
  # end

  # def first_name
  #   @speaker = Speaker.find_by(first_name: params[:first_name])
    # render 'speaker.json.jbuilder'
  # end
end

