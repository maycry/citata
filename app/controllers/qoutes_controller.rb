class QoutesController < ApplicationController
  http_basic_authenticate_with :name => "maycry", :password => "inferno", :except => "show"
  # GET /qoutes
  # GET /qoutes.json
  def index
    @qoutes = Qoute.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qoutes }
    end
  end

  # GET /qoutes/1
  # GET /qoutes/1.json
  def show
    @qoute = Qoute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.js 
      format.json { render json: @qoute }
    end
  end

  # GET /qoutes/new
  # GET /qoutes/new.json
  def new
    @qoute = Qoute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qoute }
    end
  end

  # GET /qoutes/1/edit
  def edit
    @qoute = Qoute.find(params[:id])
  end

  # POST /qoutes
  # POST /qoutes.json
  def create
    @qoute = Qoute.new(params[:qoute])

    respond_to do |format|
      if @qoute.save
        format.html { redirect_to @qoute, notice: 'Qoute was successfully created.' }
        format.json { render json: @qoute, status: :created, location: @qoute }
      else
        format.html { render action: "new" }
        format.json { render json: @qoute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qoutes/1
  # PUT /qoutes/1.json
  def update
    @qoute = Qoute.find(params[:id])

    respond_to do |format|
      if @qoute.update_attributes(params[:qoute])
        format.html { redirect_to @qoute, notice: 'Qoute was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @qoute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qoutes/1
  # DELETE /qoutes/1.json
  def destroy
    @qoute = Qoute.find(params[:id])
    @qoute.destroy

    respond_to do |format|
      format.html { redirect_to qoutes_url }
      format.json { head :ok }
    end
  end
end
