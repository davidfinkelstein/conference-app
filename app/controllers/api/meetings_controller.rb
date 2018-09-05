class Api::MeetingsController < ApplicationController

  def index
    @meetings = Meeting.all
    render 'index.json.jbuilder'
  end

  def create
    @meeting = Meeting.create(
      title: params[:title],
      agenda: params[:agenda],
      time: params[:time]
      )
    render 'create.json.jbuilder'
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

    @meeting.save

    render 'update.json.jbuilder'
  end

  def destroy 
    @meeting = Meeting.find(params[:id])
    @meeting.destroy

    render json: {message: "Meeting Deleted"}
  end


end
