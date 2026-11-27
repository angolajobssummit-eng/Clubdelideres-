-- Dados actuais do clube (para instalar numa base de dados nova, depois de schema.sql)
set search_path = cgl, public;
update definicoes set valor = valor || '{"whatsapp":"+244 922 812 224","instrucoes":"Peça os dados bancários pelo WhatsApp +244 922 812 224. Depois de pagar, anexe o comprovativo na sua área de membro ou envie-o pelo WhatsApp. O clube confirma o pagamento em até 48 horas."}'::jsonb where chave = 'pagamento';
update definicoes set valor = valor || '{"telefone":"+244 922 812 224"}'::jsonb where chave = 'site';
insert into definicoes (chave, valor) values ('limite', '{"max":100,"ate":"2028-11-26"}'::jsonb) on conflict (chave) do update set valor = excluded.valor;
delete from direccao;
insert into direccao (nome, cargo, orgao, organizacao, foto, ordem) values
 ('David Moma', 'Fundador · Director Nacional de Projectos, Comunicação, Marketing e Parcerias Estratégicas', 'Fundador', 'Luadeira Digital Angola', 'img/david-moma.jpg', 1),
 ('Dra. Laurinda Macedo', 'Presidente da Assembleia Geral', 'Mesa da Assembleia Geral', '', '', 10),
 ('Francisca Savimbi', 'Secretária da Assembleia Geral', 'Mesa da Assembleia Geral', '', '', 11),
 ('Victorina Cuanga', 'Presidente do Conselho Fiscal', 'Conselho Fiscal', '', '', 20),
 ('Lídia Amões', 'Vogal do Conselho Fiscal', 'Conselho Fiscal', '', '', 21),
 ('Beatriz Alexandre Silva', 'Presidente da Direcção', 'Direcção', '', '', 30),
 ('Indira Soares', 'Vice-Presidente para Assuntos Estratégicos e Projectos', 'Direcção', '', '', 31),
 ('Natacha Massano', 'Vice-Presidente para o Sector Económico e Social', 'Direcção', '', '', 32),
 ('Lígia Fraga', 'Secretária-Geral', 'Direcção', '', '', 33);
