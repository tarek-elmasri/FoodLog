class ArchivesController < ApplicationController
  before_action :set_entries_by_day
  def index
    
  end

  def show
    @day = params[:day_select]
    
    @day_entries = @entries[@day]
  end



private
  def set_entries_by_day
    @entries = Entry.all.group_by(&:day)
  end

end


