# coding: utf-8

class FeedbackMailsController < ApplicationController

  skip_before_filter :authorize, :only => [:new, :create]

  # GET /feedback_mails
  # GET /feedback_mails.xml
  def index
    @feedback_mails = FeedbackMail.find_all_by_application_name APPLICATION_NAME

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feedback_mails }
    end
  end

  # GET /feedback_mails/1
  # GET /feedback_mails/1.xml
  def show
    @feedback_mail = FeedbackMail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feedback_mail }
    end
  end

  # GET /feedback_mails/new
  # GET /feedback_mails/new.xml
  def new
    @feedback_mail = FeedbackMail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feedback_mail }
    end
  end

  # POST /feedback_mails
  # POST /feedback_mails.xml
  def create
    @feedback_mail = FeedbackMail.new(params[:feedback_mail])

    respond_to do |format|
      if @feedback_mail.save
      FeedbackMails.send_mail_now(@feedback_mail.email, @feedback_mail.name, @feedback_mail.phone, @feedback_mail.message).deliver
        format.html { redirect_to("/contacts", :notice => 'Сообщение отправлено') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # DELETE /feedback_mails/1
  # DELETE /feedback_mails/1.xml
  def destroy
    @feedback_mail = FeedbackMail.find(params[:id])
    @feedback_mail.destroy

    respond_to do |format|
      format.html { redirect_to(feedback_mails_url) }
      format.xml  { head :ok }
    end
  end


end
