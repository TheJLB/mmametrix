class RefereesController < ApplicationController
  def index
    if params[:query].present?
      @referee = Referee.search(params[:query])
    else
      @referee = Referee.paginate(:page => params[:page], :per_page => 20)
    end
  end

  def show
    @referee = Referee.find(params[:id])
  end

  def create
    @referee = Referee.new(params[:id])
    if @referee.save
      redirect_to :action => 'edit'
    else
      @referees = Referee.find(:all)
      render :action => 'new'
    end
  end

  def new
   @refereess = Referee.new(params[:id])

    #@judge.save
    #redirect_to @judges
  end

  def edit
    @referee = Referee.find(params[:id])
  end

  def update
    @referee = Referee.find(params[:id])

    if @referee.update_attributes(referee_params)    
      redirect_to :action => 'show', :id => @referee
      
      flash[:notice] = "Referee updated."
    else
      @referees = Referee.find(:all)
      render :action => :edit
    end
  end

  def destroy
    @referee = Referee.find(params[:id])
    @referee.destroy
    redirect_to referees_path
  end

  def list
  end

  private
    def referee_params
      params.require(:referee).permit(:name, :fights, :avg_fight_time, :ko_tko, :submission, :decision )
    end

end