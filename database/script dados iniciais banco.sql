INSERT INTO `aisoftware_db`.`marca_kit` (`nome`) VALUES ('Dell');
INSERT INTO `aisoftware_db`.`marca_kit` (`nome`) VALUES ('HP');
INSERT INTO `aisoftware_db`.`marca_kit` (`nome`) VALUES ('Lenovo');
INSERT INTO `aisoftware_db`.`marca_kit` (`nome`) VALUES ('Apple');
INSERT INTO `aisoftware_db`.`marca_kit` (`nome`) VALUES ('Acer');
INSERT INTO `aisoftware_db`.`marca_kit` (`nome`) VALUES ('LG');

INSERT INTO `aisoftware_db`.`marca_item` (`nome`) VALUES ('Asus');
INSERT INTO `aisoftware_db`.`marca_item` (`nome`) VALUES ('AMD');
INSERT INTO `aisoftware_db`.`marca_item` (`nome`) VALUES ('Intel');
INSERT INTO `aisoftware_db`.`marca_item` (`nome`) VALUES ('Kingston');
INSERT INTO `aisoftware_db`.`marca_item` (`nome`) VALUES ('Gigabyte');

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

