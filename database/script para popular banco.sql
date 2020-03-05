INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('1', 'Dell');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('2', 'HP');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('3', 'Lenovo');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('4', 'Apple');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('5', 'Acer');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('6', 'LG');

INSERT INTO `aisoftware_db`.`marca_item` (`id`, `nome`) VALUES ('1', 'Asus');
INSERT INTO `aisoftware_db`.`marca_item` (`id`, `nome`) VALUES ('2', 'AMD');
INSERT INTO `aisoftware_db`.`marca_item` (`id`, `nome`) VALUES ('3', 'Intel');
INSERT INTO `aisoftware_db`.`marca_item` (`id`, `nome`) VALUES ('4', 'Kingston');
INSERT INTO `aisoftware_db`.`marca_item` (`id`, `nome`) VALUES ('5', 'Gigabyte');

INSERT INTO `aisoftware_db`.`modelo_kit` (`nome`) VALUES ('Inspiron INS-5490-A30S');

INSERT INTO `aisoftware_db`.`kit` (`preco`, `titulo`, `marca_kit_id`, `modelo_kit_id`, `tipo_kit_id`) VALUES ('4600', 'Computador All in One Dell', '1', '1', '1');

INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Inspiron INS-5490-A30S', '../../../assets/imagens/computador/dell/foto-1.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Inspiron INS-5490-A30S', '../../../assets/imagens/computador/dell/foto-2.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Inspiron INS-5490-A30S', '../../../assets/imagens/computador/dell/foto-3.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Inspiron INS-5490-A30S', '../../../assets/imagens/computador/dell/foto-4.jpg');

INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('1', '1');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('1', '2');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('1', '3');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('1', '4');

INSERT INTO `aisoftware_db`.`tipo_kit` (`id`, `nome`) VALUES ('1', 'Computador');
INSERT INTO `aisoftware_db`.`tipo_kit` (`id`, `nome`) VALUES ('2', 'Notebook');

