class ReviewsController < ApplicationController
  before_action :find_event
  before_action :find_review, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.event_id = @event.id
    @review.user_id = current_user.id

    if @review.save
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @review.update(review_params)
      redirect_to event_path(@event)
    else
      render 'edit'
    end
  end

  def destroy
    @review.destroy
    redirect_to event_path(@event)
  end

  private

  def review_params
    params.require(:review).permit(:ratting, :comment)
  end

  def find_event
    @event = Event.find(params[:event_id])
  end

  def find_review
    @review = Review.find(params[:id])
  end
end
