RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)
RailsAdmin.config do |config|
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)
end

config.model Article do
	edit do
		field :title, :string
		field :sdesc, :text
		field :author, :string
		field :body, :ck_editor
		field :fimage, :paperclip
	end
end
config.model Department do
  edit do
    field :dname, :string
    field :dlink, :string
    field :did, :integer
    field :body, :ck_editor
    field :dimage, :paperclip
  end
end
config.model Research do
  edit do
    field :rname, :string
    field :rlink, :string
    field :rauthor, :string
    field :rid, :integer
    field :rbody, :ck_editor
    field :rimage, :paperclip
  end
end
config.model Club do
  edit do
    field :cname, :string
    field :clink, :string
    field :cid, :integer
    field :cbody, :ck_editor
    field :cimage, :paperclip
  end
end
  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
