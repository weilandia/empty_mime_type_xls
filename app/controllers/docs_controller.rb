class DocsController < ApplicationController
  def index
    @docs = Doc.all
  end

  def create
    @doc = Doc.new
    @doc.attachment.attach(params[:doc][:attachment])
    @doc.save!

    redirect_back(fallback_location: root_path)
  end
end
