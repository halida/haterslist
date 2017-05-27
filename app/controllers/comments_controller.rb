class CommentsController < ApplicationController
  # load_and_authorize_resource param_method: :resource_params
  before_action :load_parent

  def new
    @comment = @parent.comment_threads.build(resource_params)
    render_form
  end

  def edit
    @comment = @parent.comment_threads.find(params[:id])
    render_form
  end

  def create
    @comment = @parent.comment_threads.build(resource_params)
    @comment.user = get_user
    if @comment.save
      redirect_to @parent
    else
      render_form
    end
  end

  def update
    @comment = @parent.comment_threads.find(params[:id])
    if @comment.update(resource_params)
      redirect_to @parent
    else
      render_form
    end
  end

  def destroy
    @comment.destroy
    render nothing: true
  end

  private

  def load_parent
    if params[:item_id]
      @parent = Item.find(params[:item_id])
    else
      render text: "unknown parent: #{params}"
      false
    end
  end

  def resource_params
    params.require(:comment).permit(:body, :parent_id)
  end

  def render_form
    render partial: 'form', layout: nil, locals: {parent: @parent, comment: @comment}
  end    

end
