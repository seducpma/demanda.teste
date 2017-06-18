class VagaCriancasController < ApplicationController
  # GET /observacao_criancas
  # GET /observacao_criancas.xml
  def index
    @vaga_criancas = VagaCrianca.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vaga_criancas }
    end
  end

  # GET /observacao_criancas/1
  # GET /observacao_criancas/1.xml
  def show
    @vaga_crianca = VagaCrianca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vaga_crianca }
    end
  end

  # GET /observacao_criancas/new
  # GET /observacao_criancas/new.xml
  def new
    @vaga_crianca = VagaCrianca.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vaga_crianca }
    end
  end

  # GET /observacao_criancas/1/edit
  def edit
    @vaga_crianca = VagaCrianca.find(params[:id])
  end

  # POST /observacao_criancas
  # POST /observacao_criancas.xml
  def create
    @vaga_crianca = ObservacaoCrianca.new(params[:vaga_crianca])

    respond_to do |format|
      if @vaga_crianca.save
        flash[:notice] = 'ObservacaoCrianca was successfully created.'
        format.html { redirect_to(@vaga_crianca) }
        format.xml  { render :xml => @vaga_crianca, :status => :created, :location => @vaga_crianca }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vaga_crianca.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /observacao_criancas/1
  # PUT /observacao_criancas/1.xml
  def update
    @vaga_crianca = VagaCrianca.find(params[:id])

    respond_to do |format|
      if @vaga_crianca.update_attributes(params[:vaga_crianca])
        flash[:notice] = 'ObservacaoCrianca was successfully updated.'
        format.html { redirect_to(@vaga_crianca) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vaga_crianca.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /observacao_criancas/1
  # DELETE /observacao_criancas/1.xml
  def destroy
    @vaga_crianca = VagaCrianca.find(params[:id])
    @vaga_crianca.destroy

    respond_to do |format|
      format.html { redirect_to(vaga_criancas_url) }
      format.xml  { head :ok }
    end
  end
end
