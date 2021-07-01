package fr.eni.projet.bo;

//import java.util.List;


import fr.eni.projet.dal.DAO;
import fr.eni.projet.dal.DAOFactory;

public class TestBO {
 public static void main(String[] args) {
	//String insert="INSERT INTO UTILISATEURS (pseudo, nom, prenom, email, rue, code_postal, ville, mot_de_passe, credit, administrateur) VALUES (?,?,?,?,?,?,?,?,?,?);";
	
	Utilisateur u = new Utilisateur("piu", "uiku", "cvbcvn", "blabla@gmail.com", "rua analice", "31098", "toulouse", "passwo", 0, false);
	
	DAO<Utilisateur> manager = DAOFactory.getUtilisateurDAO(); 
	
	//Utilisateur u = new Utilisateur();
	manager.insert(u);
	
	System.out.println(u.getNom()+" "+u.getNoUtilisateur());
	
	
	
	//List<Utilisateur> uts = manager.selectAll();
	
	//for(Utilisateur ut : uts) {
	//	System.out.println(ut.getNom()+" "+ut.getNoUtilisateur());
	//}
	
	
	
}
}
