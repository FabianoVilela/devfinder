Dado "possui {int} portfólio(s) cadastrado(s)" do |count|
  create_list(:portfolio, count, user_id: @user.id)
end
 
Quando "acessa a lista de portfólios" do
  visit portfolios_path
end
 
Então "{int} portfólio(s) listado(s)" do |count|
  expect(page).to have_css(".portfolio", count: count)
end
 
Então "volta para a página de login" do
  expect(page).to have_current_path("/users/sign_in")
end