DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuario -- NOT AFTER!
FOR EACH ROW
BEGIN
-- DELETAR TODAS ENTRADAS DESSE USUÁRIO EM FOLLOW 
DELETE FROM SpotifyClone.follow WHERE usuario_id = OLD.id; 
-- DELETAR TODAS ENTRADAS DESSE USUÁRIO EM REPRODUCTIONS
DELETE FROM SpotifyClone.reproductions WHERE usuario_id = OLD.id;
END; $$
DELIMITER ;

-- TRANSPARENCIA: OLHEI PR DO SIDNEY RAMOS PARA ARRUMAR O BEFORE