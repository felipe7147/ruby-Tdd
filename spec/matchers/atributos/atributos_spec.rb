require 'pessoa'

describe 'Atributos' do 
	it 'have_attributes' do 
		pessoa = Pessoa.new
		pessoa.nome = "Felipe"
		pessoa.idade = 25

		expect(pessoa).to have_attributes(nome: a_string_starting_with("F"), idade:(a_value >= 25))
	end
end