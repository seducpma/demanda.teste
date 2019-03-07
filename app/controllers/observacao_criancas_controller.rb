class ObservacaoCriancasController < ApplicationController
  # GET /observacao_criancas
  # GET /observacao_criancas.xml
  def index
    @observacao_criancas = ObservacaoCrianca.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @observacao_criancas }
    end
  end

  # GET /observacao_criancas/1
  # GET /observacao_criancas/1.xml
  def show
    @observacao_crianca = ObservacaoCrianca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @observacao_crianca }
    end
  end

  # GET /observacao_criancas/new
  # GET /observacao_criancas/new.xml
  def new
    @observacao_crianca = ObservacaoCrianca.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @observacao_crianca }
    end
  end

  # GET /observacao_criancas/1/edit
  def edit
    @observacao_crianca = ObservacaoCrianca.find(params[:id])
  end

  # POST /observacao_criancas
  # POST /observacao_criancas.xml
  def create
    @observacao_crianca = ObservacaoCrianca.new(params[:observacao_crianca])

    respond_to do |format|
      if @observacao_crianca.save
        flash[:notice] = 'ObservacaoCrianca was successfully created.'
        format.html { redirect_to(@observacao_crianca) }
        format.xml  { render :xml => @observacao_crianca, :status => :created, :location => @observacao_crianca }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @observacao_crianca.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /observacao_criancas/1
  # PUT /observacao_criancas/1.xml
  def update
    @observacao_crianca = ObservacaoCrianca.find(params[:id])

    respond_to do |format|
      if @observacao_crianca.update_attributes(params[:observacao_crianca])
        flash[:notice] = 'ObservacaoCrianca was successfully updated.'
        format.html { redirect_to(@observacao_crianca) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @observacao_crianca.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /observacao_criancas/1
  # DELETE /observacao_criancas/1.xml
  def destroy

    @observacao_crianca = ObservacaoCrianca.find(params[:id])
    @observacao_crianca.destroy

    respond_to do |format|
      format.html { redirect_to(home_path) }
      format.xml  { head :ok }
    end
  end
end
