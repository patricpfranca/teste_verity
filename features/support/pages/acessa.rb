class Acessa
  include Capybara::DSL

  def acessa
    visit '/'
  end
end