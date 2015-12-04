# coding: utf-8

class PagesRestController < RestApplicationController

   skip_before_filter :authorize, :only => [:get_page_by_ref]
   #skip_before_filter :authorize


   #PUT api/pages/:ref
   # {
   #     title: "page name",
   #     content : "some text"
   # }
   def update_page

     if params[:ref] == nil
       render json: {
                  :message => 'parameter ref is empty'
              },
              status: 400
       return
     end

     page = Page.find_by(reference: params[:ref], application_name: APPLICATION_NAME)

     if page == nil
       render json: {
                  :message => 'page not found'
              },
              status: 404
     else
       last_revision = page.revisions.last
       if last_revision == nil
         render json: {
                    :message => 'revision not found'
                },
                status: 404
       else
         page.update_attribute('title', params[:title])
         page.save
         last_revision.update_attribute('content', params[:content])
         last_revision.save
         render json: {
                    :message => 'page updated'
                },
                status: 200
       end
     end

   end

  #GET api/pages/
   def get_all_pages
     pages = Page.where(application_name: APPLICATION_NAME)
     render json: pages
   end

  #GET api/pages/:ref
  def get_page_by_ref

    if params[:ref] == nil
      render json: {
                 :message => 'parameter ref is empty'
             },
             status: 400
      return
    end

    page = Page.find_by(reference: params[:ref], application_name: APPLICATION_NAME)

    if page == nil
      render json: {
                 :message => 'page not found'
             },
             status: 404
    else
      last_revision = page.revisions.last

      if last_revision == nil
        render json: {
                   :message => 'revision not found'
               },
               status: 404
      else
        render json: {
                   :reference => page.reference,
                   :title => page.title,
                   :content => last_revision.content
               }
      end

    end

  end

end
