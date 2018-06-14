# checando e instalando as gems
bundle check || bundle install
# iniciando o servidor
bundle exec puma -C config/puma.rb