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

INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('7', 'Positivo');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('8', 'Samsung');

//Samsung
//Notebook Samsung Essentials E30 Intel Core i3 4GB - 1TB 15,6” Full HD Windows 10 - 1799,00 
//Notebook Samsung Expert X30 Intel Core i5 8GB 1TB - 15,6” Windows 10 - 2249,00
//Notebook Samsung Expert X55 Intel Core i7 16GB - 1TB 128GB SSD 15,6” NVIDIA MX110 Windows 10 Home - 3599,00

//Acer
//Notebook Acer Aspire 3 A315-53-333H Intel Core i3 - 4GB 1TB 15,6” Windows 10 Home - 1709,00
//Notebook Acer Aspire 3 A315-41-R4RB AMD Ryzen 5 - 12GB 1TB 15,6” Windows 10 - 2159,00
//Notebook Acer Aspire 5 A515-78HE Intel Core i7-8565U 8ger RAM 8 GB HD 1 TB MX130 Tela 15.6'' Win 10 - 3399,00
