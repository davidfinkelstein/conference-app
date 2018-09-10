class Api::MeetingsController < ApplicationController

  def index
    @meetings = Meeting.all
    render 'index.json.jbuilder'
  end

  def create
    @meeting = Meeting.new(
      title: params[:title],
      agenda: params[:agenda],
      time: params[:time],
      location: params[:location]
    )
    if params[:remote]
      @meeting.remote = params[:remote]
    end
    
    if @meeting.save
      render 'create.json.jbuilder'
    else 
      render json: {errors: @meeting.errors.full_messages}, status: :unprocessable_entity
    end
  end
  
  def show
    @meeting = Meeting.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @meeting = Meeting.find(params[:id])

    @meeting.title = params[:title] || @meeting.title
    @meeting.agenda = params[:agenda] || @meeting.agenda
    @meeting.time = params[:time] || @meeting.time
    @meeting.location = params[:location] || @meeting.location
    @meeting.remote = params[:remote] || @meeting.remote

    if @meeting.save
      render 'update.json.jbuilder'
    else 
      render json: {errors: @meeting.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy 
    @meeting = Meeting.find(params[:id])
    @meeting.destroy

    render json: {message: "Meeting Deleted"}
  end
end