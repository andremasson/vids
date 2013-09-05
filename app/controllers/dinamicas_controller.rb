class DinamicasController < ApplicationController
  layout "listing"
  
  # GET /dinamicas
  # GET /dinamicas.json
  def index
    @dinamicas = Dinamica.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dinamicas }
    end
  end

  # GET /dinamicas/1
  # GET /dinamicas/1.json
  def show
    @dinamica = Dinamica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dinamica }
    end
  end

  # GET /dinamicas/new
  # GET /dinamicas/new.json
  def new
    @dinamica = Dinamica.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dinamica }
    end
  end

  # GET /dinamicas/1/edit
  def edit
    @dinamica = Dinamica.find(params[:id])
  end

  # POST /dinamicas
  # POST /dinamicas.json
  def create
    @dinamica = Dinamica.new(params[:dinamica])

    respond_to do |format|
      if @dinamica.save
        format.html { redirect_to @dinamica, notice: 'Dinamica was successfully created.' }
        format.json { render json: @dinamica, status: :created, location: @dinamica }
      else
        format.html { render action: "new" }
        format.json { render json: @dinamica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dinamicas/1
  # PUT /dinamicas/1.json
  def update
    @dinamica = Dinamica.find(params[:id])

    respond_to do |format|
      if @dinamica.update_attributes(params[:dinamica])
        format.html { redirect_to @dinamica, notice: 'Dinamica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dinamica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinamicas/1
  # DELETE /dinamicas/1.json
  def destroy
    @dinamica = Dinamica.find(params[:id])
    @dinamica.destroy

    respond_to do |format|
      format.html { redirect_to dinamicas_url }
      format.json { head :no_content }
    end
  end
end
