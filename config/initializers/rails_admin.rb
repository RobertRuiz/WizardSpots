RailsAdmin.config do |config|

  ### Popular gems integration

  config.authenticate_with do
    authenticate_or_request_with_http_basic('WizardSpot Admin') do |username, password|
      username == ENV['ADMIN_USER'] && password == ENV['ADMIN_PASSWORD']
    end
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
