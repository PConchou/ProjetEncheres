package fr.eni.projet.dal;

import java.sql.SQLException;
import java.util.List;

import fr.eni.projet.bo.Enchere;

 
public interface DAOEnchere extends DAO<Enchere>{

	public void insert(Enchere t);
	
	public void delete (Enchere t);
	
	public void update(Enchere t);
	
	public List<Enchere> selectAll() throws SQLException;
	

	public Enchere selectById(int id);
}
