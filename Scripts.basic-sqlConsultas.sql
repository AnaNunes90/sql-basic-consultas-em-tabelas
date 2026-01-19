SELECT 
	pet.nome AS pet,
	pet.especie,
	clie.nome AS dono,
	clie.telefone
FROM pets AS pet
INNER JOIN clientes clie ON pet.cliente_id = clie.id;

--DT_AGENDAMENTO, STATUS, NOME_PET, DESCRICÇÃO DO SERVIÇI, PREÇO_DO_SERVIÇO

SELECT * FROM clientes c    

limit 1

SELECT 
	c.nome,
	c.telefone,
	agen.data_agendamento,
	agen.status,
	pet.nome,
	serv.descricao,
	serv.preco
FROM agendamentos agen
join pets AS pet ON agen.pet_id = pet.id
join servicos AS serv ON agen.servico_id = serv.id
join clientes c ON pet.cliente_id = c.id;

-- FAZER clientes que têm ou não pets
-- Total por venda (id venda, nome cliente e o total)

SELECT 
	ven.id AS id_venda,
	c.nome AS nome_cliente,
	SUM(itv.quantidade * itv.preco_unitario) AS total

FROM vendas ven
inner join clientes c ON ven.cliente_id = c.id 
inner join itens_venda itv ON ven.id = itv.venda_id 
group by ven.id, c.nome
order by total desc 


	
	