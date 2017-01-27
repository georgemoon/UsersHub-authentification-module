
SET search_path = utilisateurs, pg_catalog;
INSERT INTO utilisateurs.bib_droits (id_droit, nom_droit, desc_droit) VALUES (5, 'validateur', 'Il valide bien sur');
INSERT INTO utilisateurs.bib_droits (id_droit, nom_droit, desc_droit) VALUES (4, 'modérateur', 'Peu utilisé');
INSERT INTO utilisateurs.bib_droits (id_droit, nom_droit, desc_droit) VALUES (0, 'aucun', 'aucun droit.');
INSERT INTO utilisateurs.bib_droits (id_droit, nom_droit, desc_droit) VALUES (1, 'utilisateur', 'Ne peut que consulter');
INSERT INTO utilisateurs.bib_droits (id_droit, nom_droit, desc_droit) VALUES (2, 'rédacteur', 'Il possède des droit d''écriture pour créer des enregistrements');
INSERT INTO utilisateurs.bib_droits (id_droit, nom_droit, desc_droit) VALUES (6, 'administrateur', 'Il a tous les droits');
INSERT INTO utilisateurs.bib_droits (id_droit, nom_droit, desc_droit) VALUES (3, 'référent', 'utilisateur ayant des droits complémentaires au rédacteur (par exemple exporter des données ou autre)');

INSERT INTO utilisateurs.bib_organismes (nom_organisme, adresse_organisme, cp_organisme, ville_organisme, tel_organisme, fax_organisme, email_organisme, id_organisme) VALUES ('PNF', NULL, NULL, 'Montpellier', NULL, NULL, NULL, 1);
INSERT INTO utilisateurs.bib_organismes (nom_organisme, adresse_organisme, cp_organisme, ville_organisme, tel_organisme, fax_organisme, email_organisme, id_organisme) VALUES ('Ma structure', 'qq part', '00001', 'ICI', '04 00 10 20 30', '', '', 2);
INSERT INTO utilisateurs.bib_organismes (nom_organisme, adresse_organisme, cp_organisme, ville_organisme, tel_organisme, fax_organisme, email_organisme, id_organisme) VALUES ('Autre', '', '', '', '', '', '', 99);

INSERT INTO utilisateurs.bib_unites (nom_unite, adresse_unite, cp_unite, ville_unite, tel_unite, fax_unite, email_unite, id_unite) VALUES ('Virtuel', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO utilisateurs.bib_unites (nom_unite, adresse_unite, cp_unite, ville_unite, tel_unite, fax_unite, email_unite, id_unite) VALUES ('personnels partis', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO utilisateurs.bib_unites (nom_unite, adresse_unite, cp_unite, ville_unite, tel_unite, fax_unite, email_unite, id_unite) VALUES ('Stagiaires', NULL, NULL, '', '', NULL, NULL, 3);
INSERT INTO utilisateurs.bib_unites (nom_unite, adresse_unite, cp_unite, ville_unite, tel_unite, fax_unite, email_unite, id_unite) VALUES ('Secretariat général', '', '', '', '', NULL, NULL, 4);
INSERT INTO utilisateurs.bib_unites (nom_unite, adresse_unite, cp_unite, ville_unite, tel_unite, fax_unite, email_unite, id_unite) VALUES ('Service scientifique', '', '', '', '', NULL, NULL, 5);
INSERT INTO utilisateurs.bib_unites (nom_unite, adresse_unite, cp_unite, ville_unite, tel_unite, fax_unite, email_unite, id_unite) VALUES ('Service SI', '', '', '', '', NULL, NULL, 6);
INSERT INTO utilisateurs.bib_unites (nom_unite, adresse_unite, cp_unite, ville_unite, tel_unite, fax_unite, email_unite, id_unite) VALUES ('Service Communication', '', '', '', '', NULL, NULL, 7);
INSERT INTO utilisateurs.bib_unites (nom_unite, adresse_unite, cp_unite, ville_unite, tel_unite, fax_unite, email_unite, id_unite) VALUES ('Conseil scientifique', '', '', '', NULL, NULL, NULL, 8);
INSERT INTO utilisateurs.bib_unites (nom_unite, adresse_unite, cp_unite, ville_unite, tel_unite, fax_unite, email_unite, id_unite) VALUES ('Conseil d''administration', '', '', '', NULL, NULL, NULL, 9);
INSERT INTO utilisateurs.bib_unites (nom_unite, adresse_unite, cp_unite, ville_unite, tel_unite, fax_unite, email_unite, id_unite) VALUES ('Partenaire fournisseur', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO utilisateurs.bib_unites (nom_unite, adresse_unite, cp_unite, ville_unite, tel_unite, fax_unite, email_unite, id_unite) VALUES ('Autres', NULL, NULL, NULL, NULL, NULL, NULL, 99);

INSERT INTO utilisateurs.t_applications (id_application, nom_application, desc_application) VALUES (1, 'application utilisateurs', 'application permettant d''administrer les utilisateurs.');
INSERT INTO utilisateurs.t_applications (id_application, nom_application, desc_application) VALUES (2, 'Taxhub', 'application permettant d''administrer la liste des taxons.');
INSERT INTO utilisateurs.t_applications (id_application, nom_application, desc_application) VALUES (14, 'application GeoNature', 'Application permettant la consultation et la gestion des relevés faune et flore.');

INSERT INTO utilisateurs.t_roles (groupe, id_role, identifiant, nom_role, prenom_role, desc_role, pass, email, organisme, id_unite, pn, session_appli, date_insert, date_update, id_organisme, remarques) VALUES (true, 20002, NULL, 'grp_en_poste', NULL, 'Tous les agents en poste', NULL, NULL, 'monpn', 99, true, NULL, NULL, NULL, NULL,'groupe test');
INSERT INTO utilisateurs.t_roles (groupe, id_role, identifiant, nom_role, prenom_role, desc_role, pass, email, organisme, id_unite, pn, session_appli, date_insert, date_update, id_organisme, remarques) VALUES (false, 1, 'admin', 'Administrateur', 'test', NULL, '21232f297a57a5a743894a0e4a801fc3', '', 'Parc national des Ecrins', 1, true, NULL, NULL, NULL, 99,'utilisateur test à modifier ou supprimer');
INSERT INTO utilisateurs.t_roles (groupe, id_role, identifiant, nom_role, prenom_role, desc_role, pass, email, organisme, id_unite, pn, session_appli, date_insert, date_update, id_organisme, remarques) VALUES (false, 3, 'partenaire', 'Partenaire', 'test', NULL, '5bd40a8524882d75f3083903f2c912fc', '', 'Autre', 99, true, NULL, NULL, NULL, 99,'utilisateur test à modifier ou supprimer');
INSERT INTO utilisateurs.t_roles (groupe, id_role, identifiant, nom_role, prenom_role, desc_role, pass, email, organisme, id_unite, pn, session_appli, date_insert, date_update, id_organisme, remarques) VALUES (false, 2, 'agent', 'Agent', 'test', NULL, 'b33aed8f3134996703dc39f9a7c95783', '', 'Parc national des Ecrins', 1, true, NULL, NULL, NULL, 99,'utilisateur test à modifier ou supprimer');

INSERT INTO utilisateurs.cor_role_droit_application (id_role, id_droit, id_application) VALUES (1, 6, 1);
INSERT INTO utilisateurs.cor_role_droit_application (id_role, id_droit, id_application) VALUES (1, 6, 2);
INSERT INTO utilisateurs.cor_role_droit_application (id_role, id_droit, id_application) VALUES (1, 6, 14);
INSERT INTO utilisateurs.cor_role_droit_application (id_role, id_droit, id_application) VALUES (20002, 3, 14);
INSERT INTO utilisateurs.cor_role_droit_application (id_role, id_droit, id_application) VALUES (2, 2, 14);
INSERT INTO utilisateurs.cor_role_droit_application (id_role, id_droit, id_application) VALUES (3, 1, 14);

