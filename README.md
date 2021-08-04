<h1>Bloco 02 - Generation Brasil</h1>
<p>Exercícios realizados no segundo bloco da Generation, relativos a back-end.</p>
<p>Este README está dividido de acordo com os tópicos específicos de estudo da Generation Brasil (MySQL e SpringBoot), com os enunciados propostos citados. Um não necessariamente exclui a utilização do outro, mas a categoria indica o foco. <strong>Clique no número da atividade para ver a resolução que eu bolei!</strong></p>

<div align="left">
	<p>Tecnologias:</p>
	<table>
			<tr>
                    <td><img width="60px" src="https://raw.githubusercontent.com/devicons/devicon/9f4f5cdb393299a81125eb5127929ea7bfe42889/icons/mysql/mysql-original-wordmark.svg" alt="MySQL"></td>
                    <td><img width="60px" src="https://raw.githubusercontent.com/devicons/devicon/9f4f5cdb393299a81125eb5127929ea7bfe42889/icons/spring/spring-original-wordmark.svg" alt="SpringBoot"></td>
                    <td><img width="60px" src="https://raw.githubusercontent.com/devicons/devicon/9f4f5cdb393299a81125eb5127929ea7bfe42889/icons/java/java-plain-wordmark.svg" alt="Java"></td>
			</tr>
	</table>
</div>
	
<div align="left">
    <h4>MySQL</h4>
	<p><a href="#mysql-lista01">Lista 01 [Introdução a banco de dados relacional]</a><br><a href="#mysql-lista02">Lista 02 [Banco de dados relacional: join]</a></p>
</div>
<div align="right">
    <h4>SpringBoot</h4>
	<p><a href="#spring-lista01">Lista Única [Introdução e desenvolvimento de aplicações com Spring]</a><br><em>exercícios desenvolvidos e aprofundados conforme o tempo e aprendizagem.</em></p>
</div>
<hr>
<div>
    <h2 id="mysql-lista01">MySQL: Lista 01 - Introdução a banco de dados relacional</h2>
    <ul>
        <li>
            <a href="https://github.com/anaolisilva/Bloco02-Generation/blob/main/Exercicios-MySQL/Lista01/Atividade01.sql">Atividade 01</a> - "Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
            trabalhará com as informações dos funcionaries desta empresa.<br>
            Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.<br>
            Popule esta tabela com até 5 dados; faça um select que retorne os funcionaries com o salário maior do que 2000; faça um select que retorne os funcionaries com o salário menor do que 2000; ao término atualize um dado desta tabela através de uma query de atualização."
        </li>
        <li>
            <a href="https://github.com/anaolisilva/Bloco02-Generation/blob/main/Exercicios-MySQL/Lista01/Atividade02.sql">Atividade 02</a> - "Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. <br>
            Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.<br>
            Popule esta tabela com até 8 dados; faça um select que retorne os produtos com o valor maior do que 500; faça um select que retorne os produtos com o valor menor do que 500; ao término atualize um dado desta tabela através de uma query de atualização."
        </li>
        <li>
            <a href="https://github.com/anaolisilva/Bloco02-Generation/blob/main/Exercicios-MySQL/Lista01/Atividade03.sql">Atividade 03</a> - "Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. <br>
            Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.<br>
            Popule esta tabela com até 8 dados; faça um select que retorne o/as estudantes com a nota maior do que 7; faça um select que retorne o/as estudantes com a nota menor do que 7; ao término atualize um dado desta tabela através de uma query de atualização."
        </li>
    </ul>
</div>
<hr>
<div>
    <h2 id="mysql-lista02">MySQL: Lista 02 - Banco de dados relacional: foco em join</h2>
    <ul>
        <li>
            <a href="https://github.com/anaolisilva/Bloco02-Generation/blob/main/Exercicios-MySQL/Lista02/Atividade01_GameOnline.sql">Atividade 01</a> - "Crie um banco de dados para um serviço de um game online, onde o sistema trabalhará com as informações dos personagens desse game. O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.<br>
            Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da classe para se trabalhar com o serviço desse game Online. <br> 
            Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online. <br> 
            Popule a tabela classe com até 5 dados; popule a tabela personagem com até 8 dados;  faça um select que retorne os personagens com o poder de ataque maior do que 2000; faça um select trazendo os personagens com poder de defesa entre 1000 e 2000; faça um select utilizando LIKE buscando os personagens com a letra C; faça um um select com Inner join entre tabela classe e personagem; faça um select onde traga todos os personagem de uma classe específica."
        </li>
        <li>
            <a href="https://github.com/anaolisilva/Bloco02-Generation/blob/main/Exercicios-MySQL/Lista02/Atividade02_PizzariaLegal.sql">Atividade 02</a> - "Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as informações dos produtos desta empresa. O sistema trabalhará com 2 tabelas: tb_pizza e tb_categoria. <br>
            Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria. <br>
            Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria. <br>
            - Popule esta tabela Categoria com até 5 dados; popule esta tabela pizza com até 8 dados; faça um select que retorne os Produtos com o valor maior do que 45 reais; faça um select trazendo os Produtos com valor entre 29 e 60 reais; faça um select utilizando LIKE buscando os Produtos com a letra C; faça um um select com Inner join entre tabela categoria e pizza; faça um select onde traga todos os Produtos de uma categoria específica."
        </li>
        <li>
            O restante das atividades são variações das descritas acima, utilizando outros exemplos (<a href="https://github.com/anaolisilva/Bloco02-Generation/blob/main/Exercicios-MySQL/Lista02/Atividade03_FarmaciaDoBem.sql">farmácia</a>, <a href="https://github.com/anaolisilva/Bloco02-Generation/blob/main/Exercicios-MySQL/Lista02/Atividade04_CasaDasPlantas.sql">mercearia</a>, <a href="https://github.com/anaolisilva/Bloco02-Generation/blob/main/Exercicios-MySQL/Lista02/Atividade05_Construcao.sql">loja de materiais de construção</a> e <a href="https://github.com/anaolisilva/Bloco02-Generation/blob/main/Exercicios-MySQL/Lista02/Atividade06_CursosOnline.sql">plataforma de cursos online</a>).
        </li>
    </ul>
</div>
<hr>
<div>
    <h2 id="spring-lista01">SpringBoot: Lista 01 - Introdução e desenvolvimento Spring</h2>
    <ul>
        <li>
            <a href="https://github.com/anaolisilva/Bloco02-Generation/tree/main/Spring-boot/lista02-LojaGames/src/main/java/br/generation/lista02/lojagames">Atividade 02</a> - "Banco de dados de uma loja de games simulado em Spring. Atividade desenvolvida ao longo de vários dias. Criação de Model, Repository, Controller, Service (com regra de negócios) e Security (auth simples: cadastro com login e senha), com três entidades diferentes (categoria, produto e usuário)."
        </li>
        <li>
            <a href="https://github.com/anaolisilva/Bloco02-Generation/tree/main/Spring-boot/lista03-Farmacia/src/main/java/br/generation/farmacia">Atividade 03</a> - "Simulando, em Spring, um banco de dados de uma farmácia. Criadas Model, Repository e Controller para entidades de categoria e produtos, e feito o relacionamento entre elas."
        </li>
    </ul>
</div>
