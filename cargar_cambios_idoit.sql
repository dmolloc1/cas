USE idoit_data;
INSERT INTO isys_obj
(isys_obj__isys_obj_type__id,isys_obj__owner_id,isys_obj__title,isys_obj__description,isys_obj__created,isys_obj__created_by,isys_obj__updated,isys_obj__updated_by,isys_obj__status)
SELECT 36,1,'LAB2-CHG-001 | Documento único','Requisito RF-002 / RN-01. Estado: Aprobado. Responsable: Análisis y desarrollo. Motivo: evitar duplicidad de estudiantes. Cierre: rechazar documentos repetidos y conservar el mensaje.',NOW(),'admin',NOW(),'admin',1
WHERE NOT EXISTS (SELECT 1 FROM isys_obj WHERE isys_obj__title='LAB2-CHG-001 | Documento único');
INSERT INTO isys_obj
(isys_obj__isys_obj_type__id,isys_obj__owner_id,isys_obj__title,isys_obj__description,isys_obj__created,isys_obj__created_by,isys_obj__updated,isys_obj__updated_by,isys_obj__status)
SELECT 36,1,'LAB2-CHG-002 | Exceso de vacantes','Requisito RF-018 / RN-04. Estado: En revisión. Responsable: Dirección académica. Motivo: resolver excepciones con control. Cierre: exigir motivo, usuario y autorización.',NOW(),'admin',NOW(),'admin',1
WHERE NOT EXISTS (SELECT 1 FROM isys_obj WHERE isys_obj__title='LAB2-CHG-002 | Exceso de vacantes');
INSERT INTO isys_obj
(isys_obj__isys_obj_type__id,isys_obj__owner_id,isys_obj__title,isys_obj__description,isys_obj__created,isys_obj__created_by,isys_obj__updated,isys_obj__updated_by,isys_obj__status)
SELECT 36,1,'LAB2-CHG-003 | Bloqueo de cuenta','Requisito RF-031 / RNF-005. Estado: En desarrollo. Responsable: Administradora. Motivo: reforzar seguridad de cuentas. Cierre: bloquear al quinto intento y auditar el evento.',NOW(),'admin',NOW(),'admin',1
WHERE NOT EXISTS (SELECT 1 FROM isys_obj WHERE isys_obj__title='LAB2-CHG-003 | Bloqueo de cuenta');
INSERT INTO isys_obj
(isys_obj__isys_obj_type__id,isys_obj__owner_id,isys_obj__title,isys_obj__description,isys_obj__created,isys_obj__created_by,isys_obj__updated,isys_obj__updated_by,isys_obj__status)
SELECT 36,1,'LAB2-CHG-004 | Filtros de reportes','Requisito RF-035. Estado: En pruebas. Responsable: Dirección académica. Motivo: revisar periodos específicos. Cierre: filtrar e imprimir sin alterar datos.',NOW(),'admin',NOW(),'admin',1
WHERE NOT EXISTS (SELECT 1 FROM isys_obj WHERE isys_obj__title='LAB2-CHG-004 | Filtros de reportes');
INSERT INTO isys_obj
(isys_obj__isys_obj_type__id,isys_obj__owner_id,isys_obj__title,isys_obj__description,isys_obj__created,isys_obj__created_by,isys_obj__updated,isys_obj__updated_by,isys_obj__status)
SELECT 36,1,'LAB2-CHG-005 | Auditoría ampliada','Requisito RF-036 / RNF-014. Estado: Implementado. Responsable: Administradora. Motivo: demostrar quién modificó información. Cierre: historial consultable con operación, usuario, fecha y registro.',NOW(),'admin',NOW(),'admin',1
WHERE NOT EXISTS (SELECT 1 FROM isys_obj WHERE isys_obj__title='LAB2-CHG-005 | Auditoría ampliada');
SELECT isys_obj__id,isys_obj__title,isys_obj__description FROM isys_obj WHERE isys_obj__title LIKE 'LAB2-CHG-%' ORDER BY isys_obj__title;
