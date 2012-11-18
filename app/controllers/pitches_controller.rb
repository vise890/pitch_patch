class PitchesController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]

  # GET /pitches
  # GET /pitches.json
  def index
    @pitches = Pitch.public.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pitches }
    end
  end

  # GET /pitches/1
  # GET /pitches/1.json
  def show
    @pitch = Pitch.find(params[:id])
    @participation_request = @pitch.participation_requests.build

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pitch }
    end
  end

  # GET /pitches/new
  # GET /pitches/new.json
  def new
    @pitch = current_user.pitches.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pitch }
    end
  end

  # GET /pitches/1/edit
  def edit
    @pitch = current_user.pitches.find(params[:id])
  end

  # POST /pitches
  # POST /pitches.json
  def create
    @pitch = current_user.pitches.build(params[:pitch])

    respond_to do |format|
      if @pitch.save
        format.html { redirect_to @pitch, notice: 'Pitch was successfully created.' }
        format.json { render json: @pitch, status: :created, location: @pitch }
      else
        format.html { render action: "new" }
        format.json { render json: @pitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pitches/1
  # PUT /pitches/1.json
  def update
    @pitch = current_user.pitches.find(params[:id])

    respond_to do |format|
      if @pitch.update_attributes(params[:pitch])
        @pitch.participation_requests.each do |pr|
          PitchMailer.update(@pitch, pr.email).deliver
        end
        format.html { redirect_to @pitch, notice: 'Pitch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pitch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pitches/1
  # DELETE /pitches/1.json
  def destroy
    @pitch = current_user.pitches.find(params[:id])
    @pitch.destroy

    respond_to do |format|
      format.html { redirect_to pitches_url }
      format.json { head :no_content }
    end
  end
end
