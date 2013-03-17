class InvolvedItemsController < ApplicationController
  # GET /involved_items
  # GET /involved_items.json
  def index
    @involved_items = InvolvedItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @involved_items }
    end
  end

  # GET /involved_items/1
  # GET /involved_items/1.json
  def show
    @involved_item = InvolvedItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @involved_item }
    end
  end

  # GET /involved_items/new
  # GET /involved_items/new.json
  def new
    @involved_item = InvolvedItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @involved_item }
    end
  end

  # GET /involved_items/1/edit
  def edit
    @involved_item = InvolvedItem.find(params[:id])
  end

  # POST /involved_items
  # POST /involved_items.json
  def create
    @involved_item = InvolvedItem.new(params[:involved_item])

    respond_to do |format|
      if @involved_item.save
        format.html { redirect_to @involved_item, notice: 'Involved item was successfully created.' }
        format.json { render json: @involved_item, status: :created, location: @involved_item }
      else
        format.html { render action: "new" }
        format.json { render json: @involved_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /involved_items/1
  # PUT /involved_items/1.json
  def update
    @involved_item = InvolvedItem.find(params[:id])

    respond_to do |format|
      if @involved_item.update_attributes(params[:involved_item])
        format.html { redirect_to @involved_item, notice: 'Involved item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @involved_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /involved_items/1
  # DELETE /involved_items/1.json
  def destroy
    @involved_item = InvolvedItem.find(params[:id])
    @involved_item.destroy

    respond_to do |format|
      format.html { redirect_to involved_items_url }
      format.json { head :no_content }
    end
  end
end
