class DocumentController < ApplicationController
  before_action :set_document, only: [ :show]
  def create
    # byebug
    @document = Document.create!(document_params)
    redirect_to document_path
  end

  def show
  end

  def index
    @documents = Document.all
  end
  

  private

  def document_params
    params.require(:document).permit(:file, :name)
  end
  def set_document 
    @document = Document.find(params[:id])
  end
end
