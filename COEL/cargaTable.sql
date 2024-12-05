-- CARGA 
/*
SELECT * FROM alimentacao;
SELECT * FROM aplicacao;
SELECT * FROM aplicacaonavegacao;
SELECT * FROM categoria;
SELECT * FROM categoriavenda;
SELECT * FROM certificado;
SELECT * FROM concorrente;
SELECT * FROM foto;
SELECT * FROM funcao;
SELECT * FROM manual;
SELECT * FROM modeloantigo;
SELECT * FROM montagem;
SELECT * FROM produto;
SELECT * FROM usuario;
*/

USE COEL;




INSERT alimentacao (alimentacao)
        VALUES ('100 a 240Vca'),
                ('24 Vca/Vcc'),
                ('12 Vca/Vcc'),
                ('110 Vca'),
                ('220 Vca'),
                ('380 Vca'),
                ('440 Vca');

INSERT aplicacao (aplicacao) 
        VALUES ('Túnel de encolhimento'),
                ('Máquina de corte e solda'),
                ('Painéis e quadros elétricos'),
                ('Máquinas de Embalagem'),
                ('Fornos elétricos'),
                ('Freezers'),
                ('Proteção de motores'),
                ('Chopeiras');

INSERT AplicacaoNavegacao (aplicacao_navegacao)
        VALUES ('Controles para Autoclaves'),
                ('Controles para Panificação'),
                ('Controles para Máquina de embalagem'),
                ('Controle para Fornos'),
                ('Aquarismo'),
                ('Chocadeira');

INSERT categoria (categoria)
        VALUES ('Controle e Medição de Temperatura'),
                ('Acessórios'),
                ('Controle para Refrigeração'),
                ('Indicador digital'),
                ('Contador de Impulso'),
                ('Relés de Tempo'),
                ('Sensores'),
                ('Soluções Integradas'),
                ('Medição e Controle de Nível');

INSERT categoriavenda (categoria_venda)
        VALUES ('Automação'),
                ('Refrigeração');

INSERT certificado (certificado)
        VALUES ('Certificado ISO9000'),
                ('Certificado UL'),
                ('Certificado CE');

INSERT concorrente (codigo_concorrente, descricao_concorrente, empresa_concorrente, observacao_concorrente)
        VALUES ('TC900', 'Controlador para refrigeração com 3 saídas', 'Full Gauge', 'Possui opção de comunicação serial'),
                ('N1030', 'Controlador para aquecimento, PID, com 2 saídas', 'Novus', 'Possui borne extraível');

-- ajustar tabela de foto
INSERT foto (link_foto, nome_foto) 
        VALUES ('https://www.ascontecnologic.com/images/igallery/resized/1-100/2-34-800-600-80.jpg', 'Z31 frontal'),
                ('https://www.ascontecnologic.com/images/igallery/resized/1-100/km_red_0-19-800-600-80.jpg', 'KM frontal'),
				('https://www.coel.com.br/wp-content/uploads/2020/04/E34b_01.png.png', 'E34 frontal'),
                ('https://www.coel.com.br/wp-content/uploads/2020/04/E34b_03png.png', 'E34 vista superior');

INSERT funcao (funcao)
        VALUES ('Controlador para chocadeira'),
                ('Controlador para refrigeração'),
                ('Controlador de umidade e temperatura'),
                ('Controlador Diferencial de Temperatura'),
                ('Temporizador Multifunção'),
                ('Monitor de Tensão Monofásico'),
                ('Temporizador Digital'),
                ('Indicador de temperatura');

INSERT [Manual] (link_manua, manual_idioma, manual_tipo, nome_manual) 
        VALUES ('link manual 1', 'português', 'resumido', 'm_TLK48_IR_R0'),
                ('link manual 2', 'espanhol', 'completo', 'm_TLK48_R5');

-- ajustar tabela de modeloantigo
INSERT modeloantigo (descricao_modelo_antigo, modelo_antigo, observacao_modelo_antigo, id_foto)
        VALUES ('Temporizador analógico', 'AB', 'Montagem em trilho DIN ou parafuso', '1'),
				('Temporizador analógico2', 'AB2', 'Montagem em trilho DIN ou parafuso2', '2');

INSERT montagem (montagem)
        VALUES ('Porta de painel'),
                ('Trilho DIN'),
                ('Sobrepor');

-- ajustar tabela de produto
INSERT produto (descricao_completa, descricao_reduzida, link_codigo_pedido, link_dimensoes, link_esquema_ligacao, link_exemplo_ligacao, link_site, link_tabela_alarmes, link_tabela_parametros, modelo, status, id_alimentacao, id_aplicacao, id_aplicacao_navegacao, id_categoria, id_categoria_venda, id_certificado, id_concorrente, id_foto, id_funcao, id_manual, id_modelo_antigo, id_montagem)
		VALUES ('descricao_completa1', 'descricao_reduzida1', 'link_codigo_pedido1', 'link_dimensoes1', 'link_esquema_ligacao1', 'link_exemplo_ligacao1', 'link_site1', 'link_tabela_alarmes1', 'link_tabela_parametros1', 'modelo1', 'status1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
                ('descricao_completa2', 'descricao_reduzida2', 'link_codigo_pedido2', 'link_dimensoes2', 'link_esquema_ligacao2', 'link_exemplo_ligacao2', 'link_site2', 'link_tabela_alarmes2', 'link_tabela_parametros2', 'modelo2', 'status2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2');


/* 
INSERT foto (foto) 
        VALUES ('https://www.coel.com.br/wp-content/uploads/2020/04/E34b_01.png.png'),
                ('https://www.coel.com.br/wp-content/uploads/2020/04/E34b_02.png.png'),
                ('https://www.coel.com.br/wp-content/uploads/2020/04/E34b_03png.png'),
                ('https://www.coel.com.br/wp-content/uploads/2020/04/E34b_02-1.png-1.png');

INSERT manual (link_manua, manual_idioma, manual_tipo, nome_manual) 
        VALUES ('https://www.coel.com.br/wp-content/uploads/2020/04/m_E34B_IR_rev0.pdf', 'português', 'resumido', 'm_E34B_IR_rev0'),
                ('https://www.coel.com.br/wp-content/uploads/2020/04/m_E34B_rev0.pdf', 'português', 'completo', 'm_E34B_rev0');

INSERT produto (descricao_completa,
                descricao_reduzida, 
                link_codigo_pedido, 
                link_dimensoes, 
                link_esquema_ligacao, 
                link_exemplo_ligacao, 
                link_site, 
                link_tabela_alarmes, 
                link_tabela_parametros, 
                modelo, 
                status, 
                id_alimentacao, id_aplicacao, id_aplicacao_navegacao, id_categoria, id_categoria_venda, id_certificado, id_concorrente, id_foto, id_funcao, id_manual, id_modelo_antigo, id_montagem)
	VALUES ('Tendo como diferenciais o design moderno e fácil programação, o modelo E34B é um controlador digital desenvolvido para aplicação em expositores e freezer disponível com display vermelho ou azul (opcional). Possui controle de temperatura ON/OFF e controle de degelo em intervalos de tempo, por temperatura ou período de tempo de funcionamento contínuo do compressor através da parada do compressor, aquecimento elétrico ou a gás quente por inversão de ciclo. O instrumento tem funções especiais para otimização do degelo e funções para economia de energia utilizada pelo sistema controlado.
Possui até 4 saídas de relé, até 3 entradas configuráveis para sondas de temperatura NTC. A entrada 3 pode ser configurada como entrada digital. Também pode ser equipado com um buzzer interno para sinalização acústica de alarmes.
As 4 saídas podem ser usadas para controlar o compressor, o degelo, os ventiladores do evaporador e um dispositivo auxiliar (Luz, Resistência para dreno ou Alarme)
As 3 entradas de sonda de temperatura podem ser usadas para controlar a temperatura ambiente, medir a temperatura do evaporador e medir uma temperatura auxiliar, por exemplo: temperatura do produto, temperatura do condensador. 
A entrada digital pode ser configurada para executar várias funções tais como abertura de porta, selecionar o set point de controle de temperatura, sinalização de alarme externo. 
A programação dos parâmetros pode ser feita utilizando a chave de programação A01 conectada a porta TTL, disponível na lateral do controlador, ou via NFC com a base AFC1, para a versão equipada com esse recurso.
As conexões elétricas estão disponíveis em três versões: terminais fixos (padrão), terminais extraíveis ou terminais faston.
Adicionalmente, possui cinco sets points (ECO, Turbo, SP1, SP2 e SP3) e teclado multifunção para modo eco, modo turbo, degelo e iluminação.', 'Tendo como diferenciais o design moderno e fácil programação, o modelo E34B é um controlador digital desenvolvido para aplicação em expositores e freezer disponível com display vermelho ou azul (opcional).
Possui até 4 saídas de relé, até 3 entradas configuráveis para sondas de temperatura NTC.', 
                '34', 
                'https://www.coel.com.br/wp-content/uploads/2016/10/Y39-HRRR-VERMELHO-S02.jpg', 
                'link_esquema_ligacao1', 
                'link_exemplo_ligacao1', 
                'https://www.coel.com.br/?lang=pt-br&s=e34', 
                'link_tabela_alarmes1', 
                'link_tabela_parametros1', 
                'modelo1', 
                'status1', 
                '1', '1', '1', '1', '1', '1', '1', '1', '3', '3', '1', '1');
 */

/*
***ERRADO, Tabela antiga ***INSERT produto (id_categoria, id_equivalencia, id_historico, id_ligacoes, id_parametros, alimentacao, caracteristicas, categoria_venda, certificado, codigo_pedido, descricao_completa, descricao_reduzida, fabricante, funcao, modelo, montagem, status, tag) 
        VALUES ('2', '2', '2', '2', '2','24 Vca/Vcc', 'controle PID', 'Aquecimento', 'Certificado CE', '333', 'legal de mais', 'legal', 'AsconTecnologic', 'Controle de temperatura', 'KM3', 'Porta de painel', 'ativo', 'forno'),
               ('1', '1', '1', '1', '1', '100 a 240 Vca', 'controle on-off com degelo', 'Refrigeração', 'Certificado UL', '222', 'bom de mais', 'bom', 'Coel', 'Controle de temperatura', 'Z31', 'Porta de painel', 'ativo', 'freezer');
*/


/*
--Comando DROP remove a tabela do banco--
DROP TABLE produto
DROP TABLE historico
DROP TABLE categoria
DROP TABLE aplicacao
DROP TABLE caracteristicas
DROP TABLE equivalencia
DROP TABLE ligacoes
DROP TABLE manual
DROP TABLE parametros
DROP TABLE usuario

--Comando DELETE remove as linhas tabela--
DELETE produto
DELETE aplicacao
DELETE caracteristicas
DELETE categoria
DELETE equivalencia
DELETE historico
DELETE ligacoes
DELETE manual
DELETE parametros
DELETE usuario
*/
/*
delete FROM produto
where id_produto = 6;

SELECT * FROM produto;
*/