# FIAP - Faculdade de Informática e Administração Paulista

<p align="center">
<a href= "https://www.fiap.com.br/"><img src="assets/logo-fiap.png" alt="FIAP - Faculdade de Informática e Admnistração Paulista" border="0" width=40% height=40%></a>
</p>

<br>

# FertiPlan

## BMH

## 👨‍🎓 Integrantes: 
- <a href="https://www.linkedin.com/in/bruno-castro-dias/">Bruno Castro - RM558359</a>
- <a href="https://www.linkedin.com/in/hugomariano191628150/">Hugo Mariano - rm560688</a>
- <a href="https://www.linkedin.com/in/matheus-castro-63644b224/">Matheus Castro - RM559293</a> 


## 👩‍🏫 Professores:
### Tutor(a) 
- <a href="https://www.linkedin.com/in/lucas-gomes-moreira-15a8452a/">Lucas Gomesr</a>
### Coordenador(a)
- <a href="https://www.linkedin.com/in/profandregodoi/">Andre Godoi</a>


## 📜 Descrição

# Entidades e seus Atributos

## 1. Zona_Plantacao
- **`id_zona_plantacao`** (PK): Identificador único para cada zona de plantação. Relaciona-se a múltiplas leituras nas tabelas `Sensor_PH`, `Sensor_Nutrientes` e `Sensor_Umidade`. (Cardinalidade: 1:N)
- **`nome_zona`** (VARCHAR): Nome ou descrição da zona de plantação, exclusivo para cada zona. (Cardinalidade: 1:1)
- **`descricao`** (MEDIUMTEXT): Informações adicionais sobre a zona de plantação, como localização e características específicas. (Cardinalidade: 1:1)

## 2. Sensor_PH
- **`id_sensor_ph`** (PK): Identificador único para cada leitura do sensor de pH. (Cardinalidade: 1:1)
- **`valor_ph`** (FLOAT): Valor medido de pH pelo sensor. (Cardinalidade: 1:1)
- **`data_hora`** (DATETIME): Data e hora em que a leitura foi registrada. (Cardinalidade: 1:1)
- **`id_zona_plantacao`** (FK): Chave estrangeira que referencia `id_zona_plantacao` na tabela `Zona_Plantacao`. Cada leitura de pH pertence a uma única zona de plantação, mas uma zona pode ter várias leituras de pH associadas. (Cardinalidade: N:1)

## 3. Sensor_Nutrientes
- **`id_sensor_nutrientes`** (PK): Identificador único para cada leitura dos sensores de nutrientes. (Cardinalidade: 1:1)
- **`valor_potassio`** (DOUBLE): Valor da concentração de potássio medido pelo sensor. (Cardinalidade: 1:1)
- **`valor_fosforo`** (DOUBLE): Valor da concentração de fósforo medido pelo sensor. (Cardinalidade: 1:1)
- **`data_hora`** (DATETIME): Data e hora em que a leitura foi registrada. (Cardinalidade: 1:1)
- **`id_zona_plantacao`** (FK): Chave estrangeira que referencia `id_zona_plantacao` na tabela `Zona_Plantacao`. Cada leitura de nutrientes pertence a uma única zona de plantação, mas uma zona pode ter várias leituras de nutrientes associadas. (Cardinalidade: N:1)

## 4. Sensor_Umidade
- **`id_sensor_umidade`** (PK): Identificador único para cada leitura do sensor de umidade. (Cardinalidade: 1:1)
- **`valor_umidade`** (DOUBLE): Percentual de umidade medido pelo sensor. (Cardinalidade: 1:1)
- **`data_hora`** (DATETIME): Data e hora em que a leitura foi registrada. (Cardinalidade: 1:1)
- **`id_zona_plantacao`** (FK): Chave estrangeira que referencia `id_zona_plantacao` na tabela `Zona_Plantacao`. Cada leitura de umidade pertence a uma única zona de plantação, mas uma zona pode ter várias leituras de umidade associadas. (Cardinalidade: N:1)
## 📋 Licença

<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/agodoi/template">MODELO GIT FIAP</a> por <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://fiap.com.br">Fiap</a> está licenciado sobre <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution 4.0 International</a>.</p>
