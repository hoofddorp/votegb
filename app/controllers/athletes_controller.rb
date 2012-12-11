class AthletesController < ApplicationController
  # GET /athletes
  # GET /athletes.json
  def index
    @athletes = Athlete.all
    #@arr=[]
    #    @athletes.each do |athlete|
    #      @reviews = athlete.reviews
    #      if @reviews.count !=0
    #        @reviews.each do |review|
    #          if review.performance_rating != nil
    #           @arr<< review.performance_rating
    #          end
    #          if @arr.count  != 0
    #           @avg= ((@arr.inject(:+))/@arr.count).round(1)
    #          end
    #        end
    #      end
    #    end
    @total_votes
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @athletes }
    end
  end

  # GET /athletes/1
  # GET /athletes/1.json
  def show
    @athlete = Athlete.find(params[:id])
    @reviews = @athlete.reviews
    @arr=[]
    if @reviews.count !=0
    @reviews.each do |review|
          if review.performance_rating != nil
            @arr<< review.performance_rating
          end
        end
          if @arr.count  != 0
              @avg= ((@arr.inject(:+))/@arr.count).round(1)
          end
    end
    #@user = User.find(params[:id])
    #@user.vote_for(@athlete)
    
    #vote = Vote.new(:vote => true)
    #@athlete.votes    << vote
    ##user.votes << vote
    #allVotes = @athlete.votes

    #positiveVoteCount = @athlete.votes_for
    
    @total_votes = @athlete.votes_for

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @athlete }
    end
  end

  def vote_up
    begin
      @athlete = Athlete.find(params[:id])
      current_user.vote_for(@athlete)
      @total_votes = @athlete.votes_for
      redirect_to @athlete
      flash[:sucess] = "Thanks for voting!"
    rescue ActiveRecord::RecordInvalid
      redirect_to @athlete
      flash[:error] = "You have already voted!"
    end
    #render :js =>  "alert('You may vote for as many different athletes as you like.');"
  end

  # GET /athletes/new
  # GET /athletes/new.json
  def new
    @athlete = Athlete.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @athlete }
    end
  end

  # GET /athletes/1/edit
  def edit
    @athlete = Athlete.find(params[:id])
  end

  # POST /athletes
  # POST /athletes.json
  def create
    @athlete = Athlete.new(params[:athlete])

    respond_to do |format|
      if @athlete.save
        format.html { redirect_to @athlete, notice: 'Athlete was successfully created.' }
        format.json { render json: @athlete, status: :created, location: @athlete }
      else
        format.html { render action: "new" }
        format.json { render json: @athlete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /athletes/1
  # PUT /athletes/1.json
  def update
    @athlete = Athlete.find(params[:id])

    respond_to do |format|
      if @athlete.update_attributes(params[:athlete])
        format.html { redirect_to @athlete, notice: 'Athlete was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @athlete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /athletes/1
  # DELETE /athletes/1.json
  def destroy
    @athlete = Athlete.find(params[:id])
    @athlete.destroy

    respond_to do |format|
      format.html { redirect_to athletes_url }
      format.json { head :no_content }
    end
  end
end
