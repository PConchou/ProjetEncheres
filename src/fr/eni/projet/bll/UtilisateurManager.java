package fr.eni.projet.bll;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import fr.eni.projet.bo.Utilisateur;
import fr.eni.projet.dal.DAOFactory;
import fr.eni.projet.dal.DAOUtilisateur;

/**
 * 
 * @author ablanchet2021
 *
 */

public class UtilisateurManager {

	private static DAOUtilisateur daoUtilisateur = (DAOUtilisateur) DAOFactory.getUtilisateurDAO();

	public static Utilisateur selectByPseudo(String pseudo) {
		return daoUtilisateur.selectByPseudo(pseudo);

	}
	public static List<Utilisateur> sellectAll(){
		return daoUtilisateur.selectAll();
	}

	public static void insert(Utilisateur u) {
		daoUtilisateur.insert(u);
	}

	public static boolean controleInscription(Utilisateur u, String confirmation_mot_de_passe,HttpServletRequest request) {
		
		// TODO check nom, prenom, ville, motDePasse
		
		List<Utilisateur> utilisateurs = daoUtilisateur.selectAll();
		String messageErreur = "";
		boolean result = false;
		boolean motDePasseOk = false;
		boolean confirmationMotDePasseOk = false;
		boolean pseudoOk = false;
		boolean nomOk = false;
		boolean prenomOk = false;
		boolean telephoneOk = false;
		boolean emailOk = false;
		boolean villeOk = false;

		//-------------check pseudo
		
		//verifie s'il y a des caracteres speciaux dans pseudo
		boolean noSpecialChars = false;
		char[] charsPseudo = u.getPseudo().toCharArray();
		for(char c : charsPseudo) {
			if(c>=48 && c<=57 || c>=65 && c<=90 || c>=97 && c<=122 ) {
				noSpecialChars=true;
			} else {
				noSpecialChars=false;
				break;
			}
		}
		
		// teste toutes les conditions
		if(!noSpecialChars) {
			messageErreur="Le pseudo ne doit pas avoir des caractères spéciaux.";
		} else if(daoUtilisateur.selectByPseudo(u.getPseudo())!=null) {
			messageErreur="Pseudo déjà utilisé.";
		} else if (u.getPseudo().contains(" ")) {
			messageErreur="Le pseudo ne doit pas avoir des espaces.";
		} else if (u.getPseudo().length()<5 || u.getPseudo().isEmpty()) {
			messageErreur="Le pseudo doit avoir au moins 5 caracteres";
		} else if (u.getPseudo().length()>20) {
			messageErreur="Le pseudo doit avoir au maximum 20 caracteres";
		} else {
			pseudoOk=true;
		}


		// -------------------- check confirmation mot de passe
		
		if(!u.getMotDePasse().equals(confirmation_mot_de_passe)) {
			messageErreur="Confimation de mot de passe incorrecte.";
		} else {
			confirmationMotDePasseOk=true;
		}

		// -------------------- check e-mail
		
		//TODO créer méthode selectByEmail
		
		for (Utilisateur ut : utilisateurs) {
			if(ut.getEmail().equals(u.getEmail())) {
				System.out.println("email déjà utilisé");
				return false;
			}
		}

		// ------------------- check telephone
		
		//TODO créer méthode selectByTelephone
		
		if(u.getTelephone()!=null) {
			for (Utilisateur ut : utilisateurs) {
				if(ut.getTelephone().equals(u.getTelephone())) {
					System.out.println("telephone déjà utilisé");
					return false;
				}
			}	
		}


		// verifier si toutes les conditions sont remplies
		if(motDePasseOk && confirmationMotDePasseOk  && pseudoOk && nomOk && prenomOk && telephoneOk && emailOk && villeOk) {
			result=true;
			messageErreur="Verificaton réussite.";
		}

		// renvoyer le message d'erreur à la JSP
		request.setAttribute("messageErreur", messageErreur);

		return result;
	}






}
