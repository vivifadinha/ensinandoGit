SELECT * FROM sis_hospitais.tb_medico AS med
inner join sis_hospitais.tb_atendimento AS atd ON med.id_medico = atd.id_medico
inner join sis_hospitais.tb_paciente AS pac ON pac.id_paciente = atd.id_paciente
inner join sis_hospitais.tb_telefone AS tel ON tel.id_paciente = pac.id_paciente
inner join sis_hospitais.tb_tipo_telefone AS ttl ON ttl.id_tipo_telefone = tel.id_tipo_telefone
WHERE ttl.txt_tipo_telefone = 'Telefone Pessoal';