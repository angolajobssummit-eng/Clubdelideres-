# Club Global de Líderes

Plataforma do clube: candidatura a membro, anuidades, cartão digital com QR, eventos com inscrições e bilhetes, entrada por QR, oportunidades de negócio entre membros, notícias, benefícios e área de administração.

- Site estático (HTML, CSS e JavaScript), publicado no Vercel.
- Base de dados, contas e ficheiros no Supabase (projecto partilhado com a AACPD): as tabelas do clube ficam no schema `cgl` e os ficheiros nos buckets `cgl-publico` e `cgl-comprovativos`. `schema.sql` cria tudo. O schema `cgl` tem de estar exposto na API (Settings → API → Exposed schemas).
- Tornar-se administrador: criar conta no site e correr no SQL Editor
  `update cgl.perfis set papel = 'admin' where id = (select id from auth.users where email = 'o-seu-email');`
