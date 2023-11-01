# O_Faxineiro_Implacavel

<h2>Objetivo:</h2>
  <p>A atividade "O Faxineiro Implacável" propõe uma série de tarefas com o objetivo de ensinar e praticar conceitos avançados de manipulação de bancos de dados, especialmente  conceitos de normalização de dados em banco de dados, o que envolve a organização eficiente das informações e a criação de relacionamentos entre as tabelas para evitar redundâncias e garantir a integridade dos dados. Também promove a prática de comandos SQL, como CREATE TABLE, ALTER TABLE e INSERT INTO, além de reforçar a importância da leitura e revisão do código.<p>
<h2>Descrição:</h2>
"Quando uma mancha indesejada aparece, ele não mede esforços para removê-la, mesmo que isso signifique desafiar as leis dos dados."
Hoje é dia de limpar as estantes, organizar livros e evoluir um pouco mais. 
A ideia dessa atividade é aprender a lidar com erros, ler (e reler) muito o próprio código e não deixar o desânimo bater.

<h2>Etapas:</h2>
<p>•	Criação do banco de dados "Biblioteca": Essa etapa consiste em criar um novo banco de dados chamado "Biblioteca". Isso proporciona um espaço organizado para armazenar as informações sobre os livros.</p>
<p>•	Criação da tabela "Livros": Nessa etapa, uma tabela chamada "Livros" está sendo criada com diversas colunas para armazenar informações sobre os livros, como título, autor, editora, ano de publicação, etc.</p>
<p>•	Adição da regra AUTO_INCREMENT para a chave primária: Isso significa que o campo de identificação dos livros (livros_id) será gerado automaticamente e aumentará em um a cada novo livro adicionado.</p>
<p>•	Criação de tabelas para "Autores" e "Editoras": Essas tabelas serão utilizadas para armazenar informações específicas sobre autores e editoras, respectivamente. Elas devem ter chaves primárias para garantir a unicidade dos registros.</p>
<p>•	Eliminação das colunas 'autor' e 'editora' da tabela 'Livros': Com a normalização dos dados, as informações sobre autor e editora serão armazenadas em tabelas separadas, então as colunas correspondentes na tabela "Livros" devem ser removidas.</p>
<p>•	Adição das colunas 'autor_id' e 'editora_id' na tabela 'Livros': Essas serão chaves estrangeiras, referenciando os IDs dos autores e editoras nas tabelas correspondentes.</p>
<p>•	Transferência dos valores dos autores e editoras para as novas tabelas: Os dados sobre autores e editoras do script inicial devem ser inseridos nas novas tabelas criadas para esse fim.</p>
<p>•	Reestruturação do script de inserção de livros: O script inicial para inserir novos livros na biblioteca deve ser modificado para levar em conta as mudanças feitas na estrutura do banco de dados. Agora, os campos de autor e editora devem referenciar os IDs correspondentes nas tabelas de autores e editoras.</p>


















