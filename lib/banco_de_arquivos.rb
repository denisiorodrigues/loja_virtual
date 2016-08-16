require 'yaml'
class BancoDeArquivos
	def salvar(livro)
		File.open("livros.yml", "a")  do |arquivo| #tipo 'a' somente leitura e insere o texto no final do arquivo
			arquivo.puts YAML.dump(livro)
			arquivo.puts ""
		end
	end

	def carrega
		$/ = "\n\n"
		File.open("livros.yml", "r").map do |livro_serializado|
			YAML.load(livro_serializado)
		end
	end
end