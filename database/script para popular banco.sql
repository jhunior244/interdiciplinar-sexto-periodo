﻿INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('1', 'Dell');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('2', 'HP');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('3', 'Lenovo');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('4', 'Apple');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('5', 'Acer');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('6', 'LG');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('7', 'Samsung');
INSERT INTO `aisoftware_db`.`marca_kit` (`id`, `nome`) VALUES ('8', 'Positivo');

INSERT INTO `aisoftware_db`.`marca_item` (`id`, `nome`) VALUES ('1', 'Asus');
INSERT INTO `aisoftware_db`.`marca_item` (`id`, `nome`) VALUES ('2', 'AMD');
INSERT INTO `aisoftware_db`.`marca_item` (`id`, `nome`) VALUES ('3', 'Intel');
INSERT INTO `aisoftware_db`.`marca_item` (`id`, `nome`) VALUES ('4', 'Kingston');
INSERT INTO `aisoftware_db`.`marca_item` (`id`, `nome`) VALUES ('5', 'Gigabyte');

INSERT INTO `aisoftware_db`.`tipo_kit` (`id`, `nome`) VALUES ('1', 'Computador');
INSERT INTO `aisoftware_db`.`tipo_kit` (`id`, `nome`) VALUES ('2', 'Notebook');

INSERT INTO `aisoftware_db`.`modelo_kit` (`nome`) VALUES ('Inspiron INS-5490-A30S');
INSERT INTO `aisoftware_db`.`modelo_kit` (`nome`) VALUES ('Essentials E30');
INSERT INTO `aisoftware_db`.`modelo_kit` (`nome`) VALUES ('Expert X30');
INSERT INTO `aisoftware_db`.`modelo_kit` (`nome`) VALUES ('Expert X55');
INSERT INTO `aisoftware_db`.`modelo_kit` (`nome`) VALUES ('Aspire 3 A315-53-333H');
INSERT INTO `aisoftware_db`.`modelo_kit` (`nome`) VALUES ('Aspire 3 A315-41-R4RB');
INSERT INTO `aisoftware_db`.`modelo_kit` (`nome`) VALUES ('Aspire 5 A515-78HE');
INSERT INTO `aisoftware_db`.`modelo_kit` (`nome`) VALUES ('LG 15Z980');
INSERT INTO `aisoftware_db`.`modelo_kit` (`nome`) VALUES ('Notebook Positivo Q464B');
INSERT INTO `aisoftware_db`.`modelo_kit` (`nome`) VALUES ('Notebook Positivo C4500C'); 
INSERT INTO `aisoftware_db`.`modelo_kit` (`nome`) VALUES ('Notebook Positivo Q432A');

INSERT INTO `aisoftware_db`.`kit` (`preco`, `titulo`, `marca_kit_id`, `modelo_kit_id`, `tipo_kit_id`) VALUES ('4600', 'Computador All in One Dell', '1', '1', '1');
INSERT INTO `aisoftware_db`.`kit` (`preco`, `titulo`, `marca_kit_id`, `modelo_kit_id`, `tipo_kit_id`) VALUES ('1799', 'Notebook Samsung Essentials', '7', '2', '2');
INSERT INTO `aisoftware_db`.`kit` (`preco`, `titulo`, `marca_kit_id`, `modelo_kit_id`, `tipo_kit_id`) VALUES ('2249', 'Notebook Samsung Expert', '7', '3', '2');
INSERT INTO `aisoftware_db`.`kit` (`preco`, `titulo`, `marca_kit_id`, `modelo_kit_id`, `tipo_kit_id`) VALUES ('3599', 'Notebook Samsung Expert', '7', '4', '2');
INSERT INTO `aisoftware_db`.`kit` (`preco`, `titulo`, `marca_kit_id`, `modelo_kit_id`, `tipo_kit_id`) VALUES ('3599', 'Notebook Acer Aspire 3', '5', '5', '2');
INSERT INTO `aisoftware_db`.`kit` (`preco`, `titulo`, `marca_kit_id`, `modelo_kit_id`, `tipo_kit_id`) VALUES ('1709', 'Notebook Acer Aspire 3 A315-41-R4RB', '5', '6', '2');
INSERT INTO `aisoftware_db`.`kit` (`preco`, `titulo`, `marca_kit_id`, `modelo_kit_id`, `tipo_kit_id`) VALUES ('3399', 'Notebook Acer Aspire 5 A15-78HE', '6', '7', '2');
INSERT INTO `aisoftware_db`.`kit` (`preco`, `titulo`, `marca_kit_id`, `modelo_kit_id`, `tipo_kit_id`) VALUES ('5499', 'Notebook LG 15Z980', '6', '8', '2');
INSERT INTO `aisoftware_db`.`kit` (`preco`, `titulo`, `marca_kit_id`, `modelo_kit_id`, `tipo_kit_id`) VALUES ('1044', 'Notebook Positivo Q464B', '8', '9', '2');
INSERT INTO `aisoftware_db`.`kit` (`preco`, `titulo`, `marca_kit_id`, `modelo_kit_id`, `tipo_kit_id`) VALUES ('1079', 'Notebook Positivo C4500C', '8', '10', '2');
INSERT INTO `aisoftware_db`.`kit` (`preco`, `titulo`, `marca_kit_id`, `modelo_kit_id`, `tipo_kit_id`) VALUES ('1029', 'Notebook Positivo Q432A', '8', '11', '2');


UPDATE `aisoftware_db`.`kit` SET `data_validade_promocao` = sysdate(), `esta_na_promocao` = 1 WHERE (`id` = '1');
UPDATE `aisoftware_db`.`kit` SET `data_validade_promocao` = sysdate(), `esta_na_promocao` = 1 WHERE (`id` = '2');
UPDATE `aisoftware_db`.`kit` SET `data_validade_promocao` = sysdate(), `esta_na_promocao` = 1 WHERE (`id` = '3');
UPDATE `aisoftware_db`.`kit` SET `data_validade_promocao` = sysdate(), `esta_na_promocao` = 1 WHERE (`id` = '4');

UPDATE `aisoftware_db`.`kit` SET `data_validade_promocao` = '2020-03-30 21:47:09' WHERE (`id` = '1');
UPDATE `aisoftware_db`.`kit` SET `data_validade_promocao` = '2020-03-30 21:47:09' WHERE (`id` = '2');
UPDATE `aisoftware_db`.`kit` SET `data_validade_promocao` = '2020-03-30 21:47:09' WHERE (`id` = '3');
UPDATE `aisoftware_db`.`kit` SET `data_validade_promocao` = '2020-03-30 21:47:09' WHERE (`id` = '4');



INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Inspiron INS-5490-A30S', '../../../assets/imagens/computador/dell/Inspiron INS-5490-A30S/foto-1.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Inspiron INS-5490-A30S', '../../../assets/imagens/computador/dell/Inspiron INS-5490-A30S/foto-2.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Inspiron INS-5490-A30S', '../../../assets/imagens/computador/dell/Inspiron INS-5490-A30S/foto-3.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Inspiron INS-5490-A30S', '../../../assets/imagens/computador/dell/Inspiron INS-5490-A30S/foto-4.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('e30', '../../../assets/imagens/notebook/samsung/e30/foto-1.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('e30', '../../../assets/imagens/notebook/samsung/e30/foto-2.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('e30', '../../../assets/imagens/notebook/samsung/e30/foto-3.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('x30', '../../../assets/imagens/notebook/samsung/x30/foto-1.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('x30', '../../../assets/imagens/notebook/samsung/x30/foto-2.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('x30', '../../../assets/imagens/notebook/samsung/x30/foto-3.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('x55', '../../../assets/imagens/notebook/samsung/x55/foto-1.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('x55', '../../../assets/imagens/notebook/samsung/x55/foto-2.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('x55', '../../../assets/imagens/notebook/samsung/x55/foto-3.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('a315', '../../../assets/imagens/notebook/acer/a315/foto-1.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('a315', '../../../assets/imagens/notebook/acer/a315/foto-2.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('a315', '../../../assets/imagens/notebook/acer/a315/foto-3.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('a315-41', '../../../assets/imagens/notebook/acer/a315-41/foto-1.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('a315-41', '../../../assets/imagens/notebook/acer/a315-41/foto-2.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('a315-41', '../../../assets/imagens/notebook/acer/a315-41/foto-3.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('a515', '../../../assets/imagens/notebook/acer/a515/foto-1.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('a515', '../../../assets/imagens/notebook/acer/a515/foto-2.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('a515', '../../../assets/imagens/notebook/acer/a515/foto-3.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('LG 15Z980', '../../../assets/imagens/notebook/lg/LG 15Z980/foto-1.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('LG 15Z980', '../../../assets/imagens/notebook/lg/LG 15Z980/foto-2.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('LG 15Z980', '../../../assets/imagens/notebook/lg/LG 15Z980/foto-3.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Q464B', '../../../assets/imagens/notebook/positivo/Q464B/foto-1.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Q464B', '../../../assets/imagens/notebook/positivo/Q464B/foto-2.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Q464B', '../../../assets/imagens/notebook/positivo/Q464B/foto-3.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('C4500C', '../../../assets/imagens/notebook/positivo/C4500C/foto-1.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('C4500C', '../../../assets/imagens/notebook/positivo/C4500C/foto-2.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('C4500C', '../../../assets/imagens/notebook/positivo/C4500C/foto-3.jpg'); 
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Q432A', '../../../assets/imagens/notebook/positivo/Q432A/foto-1.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Q432A', '../../../assets/imagens/notebook/positivo/Q432A/foto-2.jpg');
INSERT INTO `aisoftware_db`.`imagem` (`alt`, `caminho`) VALUES ('Q432A', '../../../assets/imagens/notebook/positivo/Q432A/foto-3.jpg');


INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('1', '1');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('1', '2');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('1', '3');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('1', '4');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('2', '5');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('2', '6');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('2', '7');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('3', '8');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('3', '9');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('3', '10');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('4', '11');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('4', '12');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('4', '13');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('5', '14');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('5', '15');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('5', '16');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('6', '17');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('6', '18');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('6', '19');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('7', '20');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('7', '21');
INSERT INTO kit_lista_imagem(`kit_id`, `lista_imagem_id`) VALUES ('7', '22');






//Samsung
//Notebook Samsung Essentials E30 Intel Core i3 4GB - 1TB 15,6” Full HD Windows 10 - 1799,00 
//Notebook Samsung Expert X30 Intel Core i5 8GB 1TB - 15,6” Windows 10 - 2249,00
//Notebook Samsung Expert X55 Intel Core i7 16GB - 1TB 128GB SSD 15,6” NVIDIA MX110 Windows 10 Home - 3599,00

//Acer
//Notebook Acer Aspire 3 A315-53-333H Intel Core i3 - 4GB 1TB 15,6” Windows 10 Home - 1709,00
//Notebook Acer Aspire 3 A315-41-R4RB AMD Ryzen 5 - 12GB 1TB 15,6” Windows 10 - 2159,00
//Notebook Acer Aspire 5 A515-78HE Intel Core i7-8565U 8ger RAM 8 GB HD 1 TB MX130 Tela 15.6'' Win 10 - 3399,00

//Dell
//Notebook Dell Inspiron i15-3583-A30P Intel Core i7 - 8GB 2TB 15,6” HD Placa de Vídeo 2GB - 2969,10
//Notebook Dell Inspiron i15-3584-D10P Intel Core i3 - 4GB 1TB 15,6” Ubuntu Linux - 1709,91
//Notebook Dell Inspiron 7000 i15-7580-A20S Intel - Core i7 8GB 1TB 15,6” Full HD Placa Nvidia 2gb

//HP
//Notebook HP 14-CB012WM Cel 1.6GHZ/ 4GB/ 32GB/ 14.0” - 1800
//Notebook HP Probook 450-G5 i5 2.5GHZ/ 8GB/ 256GB/ 15.6” - 2500
//Notebook HP 14-hp-bw011 Cel 2.0/ 8GB/ 500GB/ 14.0” - 2000


//Apple
//Apple MacBook Pro i7 2.6Ghz 16GB RAM 256GB SSD 15.4 Pol. Touch Bar - R$12.458,90
//MacBook Air Apple Core i5 8GB 128GB SSD Tela 13.3” MacOS Sierra MQD32BZ/A - R$4.799,00
//Macbook Apple Macbook Air Intel Core i5 8GB de RAM SSD 128 GB 13,3" 

//Lenovo
//Notebook Lenovo Ideapad S145-15IWL Intel Core i5 - 8GB 1TB 15,6” Windows 10 - 2249
//Notebook Lenovo IdeaPad 330S i7-8550U 8GB 1TB Windows 10 Tela 14 - 3.999,00
//Notebook Lenovo 2 em 1 ideapad C340 i7-8565U 8GB 256GB SSD Windows 10 14” FHD IPS 81RL0003BR Prata - 4199,00

//LG
//Notebook LG 14U380 Intel Celeron 4GB HD 500GB W10R$ 1.599,00
//Notebook lg 14p intel n4100 4gb hd500gb w10 brancoR$ 1.883,63
//Notebook LG Intel® Core™ i7 8GB 256GB SSD 15Z980 5.499,00

//Positivo
//Notebook Positivo Duo Q432A Quad Core 4GB 32GB 11.6” Windows 10 Home - R$1.029,00
//Notebook Positivo Motion C4500C Intel Dual Core - 4GB 500GB 14” Windows 10 Home - R$1.079,80
//Notebook Positivo Quad Core 4GB 64GB SSD Tela 14” Windows 10 Motion Plus Q464B - R$1.044,05











