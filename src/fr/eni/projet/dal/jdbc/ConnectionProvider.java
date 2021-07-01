package fr.eni.projet.dal.jdbc;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * Exploitation du pool de connexion param�tr� dans meta inf - context
 * m�thode retourne connection
 * @author ablanchet2021
 *
 */

abstract class ConnectionProvider {
	private static DataSource dataSource;
	private static Connection cnx;
	
	/**
	 * Au chargement de la classe, la DataSource est recherchée dans l'arbre JNDI
	 */
	static
	{
		Context context;
		try {
			context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/pool_cnx");
			
		} catch (NamingException e) {
			e.printStackTrace();
			throw new RuntimeException("Impossible d'accéder à la base de données");
		}
	}
	
	/**
	 * Cette méthode retourne une connection opérationnelle issue du pool de connexion
	 * vers la base de données. 
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException
	{
		cnx=dataSource.getConnection();
		return cnx;
	}
}