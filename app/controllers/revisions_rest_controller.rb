# coding: utf-8

class RevisionsRestController < RestApplicationController

   skip_before_filter :authorize

  #GET api/revisions/last/:ref
  def last_by_ref

    if (params[:ref] == nil)
      render json: {
                 :message => 'parameter ref is empty'
             },
             status: 400
    end

    page = Page.find_by(reference: params[:ref], application_name: APPLICATION_NAME)

    if (page == nil)
      render json: {
                 :message => 'page not found'
             },
             status: 404
    else
      last_revision = page.revisions.last

      if (last_revision == nil)
        render json: {
                   :message => 'revision not found'
               },
               status: 404
      else
        render json: {
                   :id => last_revision.id,
                   :content => last_revision.content
               }
      end

    end

  end

end
