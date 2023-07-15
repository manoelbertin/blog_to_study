class HomeController < ApplicationController
  def index
    #@name = ' Alibaba'

    @devs = [
      {name: 'xiita', dev: 'ruby'},
      {name: 'cacau', dev: 'rusty'},
      {name: 'betinho', dev: 'python'}
    ]
    #render html: '<h1> Olá Mundo! <h1>'.html_safe
  end
end
