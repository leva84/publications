# frozen_string_literal: true

class PublicationCardsController < ApplicationController
  before_action :set_publication_card, only: %i[show edit update destroy]

  # GET /publication_cards or /publication_cards.json
  def index
    @publication_cards = PublicationCard.all
  end

  # GET /publication_cards/1 or /publication_cards/1.json
  def show; end

  # GET /publication_cards/new
  def new
    @publication_card = PublicationCard.new
  end

  # GET /publication_cards/1/edit
  def edit; end

  # POST /publication_cards or /publication_cards.json
  def create
    @publication_card = PublicationCard.new(publication_card_params)

    respond_to do |format|
      if @publication_card.save
        format.html do
          redirect_to publication_card_url(@publication_card), notice: 'Publication card was successfully created.'
        end
        format.json { render :show, status: :created, location: @publication_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @publication_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publication_cards/1 or /publication_cards/1.json
  def update
    respond_to do |format|
      if @publication_card.update(publication_card_params)
        format.html do
          redirect_to publication_card_url(@publication_card), notice: 'Publication card was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @publication_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @publication_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publication_cards/1 or /publication_cards/1.json
  def destroy
    @publication_card.destroy

    respond_to do |format|
      format.html { redirect_to publication_cards_url, notice: 'Publication card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_publication_card
    @publication_card = PublicationCard.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def publication_card_params
    params.require(:publication_card).permit(:url, :interval, :count, :title, :text, :status)
  end
end
