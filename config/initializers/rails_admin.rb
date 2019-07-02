RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.model 'Mantencionave' do
    label "Mantención avería" 
    label_plural "Mantención Averías"
  end

  config.model 'Sector' do
    label "Sector" 
    label_plural "Sectores"
  end

  config.model 'User' do
    label "Usuario" 
    label_plural "Usuarios"
  end
  config.model 'Mantencioncorrectiva' do
    label "Mantención Correctiva" 
    label_plural "Mantención C"
  end


  config.model 'Mantenciondesviacion' do
    label "Mantención Desvicacion" 
    label_plural "Mantención D"
  end


  config.model 'Operecionesaveri' do
    label "Operación avería " 
    label_plural "Operación Averías "
  end

  config.model 'Operacioncontroldete' do
    label "Operación control" 
    label_plural "Operaciones C/D "
  end

  config.model 'Operadesviaprodu' do
    label "Operacione desviacion producción" 
    label_plural "Operaciones D/P "
  end



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
