class CardsController < ApplicationController
  # GET /cards
  # GET /cards.json
  def index
    @cards = Card.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @cards }
    end
  end

  def admin2345k23g5jh23ffgd31g23d4j234
    @cards = Card.all
    respond_to do |format|
      format.html # admin2345k23g5jh23ffgd31g23d4j234.html.erb
      format.json { render :json => @cards }
    end
  end

  def sent
    @cards = Card.all # and now it's a get method.
    CardMailer.card_email(@cards).deliver
    respond_to do |format|
      format.html # sent.html.erb
      format.json { render :json => @cards }
    end
  end

  def view
    @card = Card.find(params[:id])

    respond_to do |format|
      format.html # view.html.erb
      format.json { render :json => @card }
    end
  end

  # GET /cards/1
  # GET /cards/1.json
  def show
    @card = Card.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @card }
    end
  end

  # GET /cards/new
  # GET /cards/new.json
  def new
    @card = Card.new
    @backgrounds = Background.all
    @designs = Design.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @card }
    end
  end

  # GET /cards/1/edit
  def edit
    @card = Card.find(params[:id])
    @backgrounds = Background.all
    @designs = Design.all
    respond_to do |format|
      format.html # edit.html.erb
      format.json { render :json => @card }
    end
  end

  # POST /cards
  # POST /cards.json
  def create
    @card = Card.new(params[:card])
    @backgrounds = Background.all
    @designs = Design.all

    respond_to do |format|
      if @card.save
        format.html { redirect_to @card}
        format.json { render :json => @card, :status => :created, :location => @card }
      else
        format.html { render :action => "new" }
        format.json { render :json => @card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cards/1
  # PUT /cards/1.json
  def update
    @card = Card.find(params[:id])
    @backgrounds = Background.all
    @designs = Design.all

    respond_to do |format|
      if @card.update_attributes(params[:card])
        format.html { redirect_to @card}
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    respond_to do |format|
      format.html { redirect_to cards_url }
      format.json { head :no_content }
    end
  end
end
