# frozen_string_literal: true

class UpcomingEventsController < ApplicationController
  include Secured
  include ExistingUser

  def show
    @events = Event.order(:date)
  end
end
