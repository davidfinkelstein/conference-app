class Api::MeetingTopicsController < ApplicationController
    def create
    @meeting_topic = MeetingTopic.new(
      meeting_id: params[:meeting_id],
      topic_id: params[:topic_id]
      )

    if @meeting_topic.save
      render json: {message: 'Meeting topic created'}
    else
      render json: {errors: @meeting_topic.errors.full_messages}
    end
  end
end
