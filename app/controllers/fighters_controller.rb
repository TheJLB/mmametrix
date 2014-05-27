class FightersController < ApplicationController

  def index
    if params[:query].present?
      @fighter = Fighter.search(params[:query])
    else
      @fighter = Fighter.paginate(:page => params[:page], :per_page => 20)
    end
  end

  def list
  end

  def show
    @fighter = Fighter.find(params[:id])
  end

  def create
    @fighter = Fighter.new(params[:id])
    if @fighter.save
      redirect_to :action => 'edit'
    else
      @fighters = Fighter.find(:all)
      render :action => 'new'
    end
  end

  def edit
    @fighter = Fighter.find(params[:id])
  end

  def new
   @Fighters = Fighter.new(params[:id])

    #@fighter.save
    #redirect_to @fighters
  end

  def destroy
    @fighter = Fighter.find(params[:id])
    @fighter.destroy

    redirect_to fighters_path
  end
end