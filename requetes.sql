 1 )    SELECT * FROM clients;

 2 )    SELECT * FROM clients WHERE  ville ='Catemu'; 

 3 )    SELECT * FROM commandes WHERE id_client = 5;

 4 )    SELECT details_commande.code_article,articles.marque, articles.type, articles.prix_unitaire FROM details_commande JOIN articles ON details_commande.code_article=articles.code_article WHERE numero_commande = 9;

 5 )    SELECT * FROM articles where code_article = 'HPW';

 6 )    SELECT * FROM articles where marque = 'Dell';

 7 )    SELECT * FROM articles where marque = 'Dell' AND type ='catre mère';

 8 )    SELECT * FROM articles where stock = 0;

 9 )    SELECT * FROM articles where marque ='Dell' AND type ='processeur' AND prix_unitaire>50 AND prix_unitaire<100; 

 10 )   SELECT  numero_commande FROM commandes JOIN clients ON commandes.id_client=clients.id WHERE type_livraison='PST' AND id_client='2';

 11 )   SELECT numero_commande FROM commandes where date_commande BETWEEN '2010-04-01' AND '2015-01-01';