<%-- 
    Document   : inscriptionIndividuelle2
    Created on : 23 d�c. 2020, 14:25:30
    Author     : user
--%>

<%@page import="dao.dataAccess"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="dbutil.JavaConnect"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="no-js" lang="">


<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Inscription Individuelle 2</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="favicon.ico">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/transitions.css">
    <link rel="stylesheet" href="css/prettyPhoto.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/pogoslider.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/color.css">
    <link rel="stylesheet" href="css/responsive.css">
    <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body>
    <%
        String formulaire_idx = request.getParameter("formulaire_id");
        String formulaire_id = (String) request.getAttribute("formulaire_id");

            if (formulaire_id == null) {
                formulaire_id = formulaire_idx;
            }
            
            String ix = request.getParameter("id");
            String idx = (String) request.getAttribute("id");
            String tpe = (String) request.getAttribute("tpe");
            if (idx == null) {
                idx = ix;
            }
            String sql = "SELECT * FROM loginadmin where Id=?";
            try {
                Connection con = new JavaConnect().createConnection();
                PreparedStatement pst;

                // String idx = "0";
                pst = con.prepareStatement(sql);
                pst.setString(1, ix);
                ResultSet rs = pst.executeQuery();

                while (rs.next()) {
                    System.out.println("hello 4");
                    String id = rs.getString(1);
                    String Prenom = rs.getString(2);
                    String nom = rs.getString(3);
                    String Civilite = rs.getString(4);
    %>

    <!--************************************
			Loader Start
	*************************************-->
    <div class="lds-roller">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
    <!--************************************
			Loader End
	*************************************-->
    <!--************************************
			Wrapper Start
	*************************************-->
    <div id="at-wrapper" class="at-wrapper">
        <!--************************************
				Header Start
		*************************************-->
        <header id="at-header" class="at-header at-headervthree">
            <div class="container-fluid">
                <div class="row">
                    <strong class="at-logo"><a href="index.html"><img src="images/logo2.png" alt="company logo here"></a></strong>
                    <div class="at-navigationarea">
                        <nav id="at-nav" class="at-nav">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#at-navigation" aria-expanded="false">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
                            </div>
                            <div id="at-navigation" class="collapse navbar-collapse at-navigation">
                              <ul>
                                    <li class="menu-item-has-children">
                                        <a href="index.html">Accueil</a>
                                    </li>
                                        <li class="menu-item-has-children">
                                            <a href="Principal.jsp?id=<%=ix%>">Menu Admin</a>
                                        </li>
                                    <li class="menu-item-has-children">
                                        <a href="connection.html">Se d�connecter</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                        <div class="at-contactsocial">
                            <span class="at-contactnumber">
								<i class="icon-telephone114"></i>
								<em>+00221 33 837 80 09</em>
							</span>
                            <ul class="at-socialicons">
                                <li class="at-facebook"><a href="https://www.facebook.com/badel"><i class="fa fa-facebook"></i></a></li>
                                <li class="at-twitter"><a href="https://www.twitter.com/badel"><i class="fa fa-twitter"></i></a></li>
                                <li class="at-instagram"><a href="https://www.instagram.com/badel"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!--************************************
				Header End
		*************************************-->
        <!--************************************
				Home Slider Start
		*************************************-->

        <!--************************************
				Home Slider End
		*************************************-->
        <!--************************************
				Main Start
		*************************************-->
        <main id="at-main" class="at-main at-haslayout">

            <div class="clearfix"></div>
            <section class="at-sectionspace at-haslayout">
                <div class="container">
                    <h1 style="text-align: center;">Inscription Individuelle 2 form = <%=formulaire_id%></h1>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="at-content">
                                <div class="at-contactusvone">
                                    <form class="at-formtheme at-formcontacus" action="ServInd2" method="post" >
                                     <!--   <fieldset>
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 pull-left">
                                                    <div class="form-group">
                                                        <select class="form-control" name="inscritPar" id="demo-category" onchange="changementType( this.value);">
                                                        <option value="">- Qui �tes vous ? -</option>
                                                        <option value="Demandeur">Je suis moi m�me le demandeur</option>
                                                        <option value="Animateur">Animateur BEL - MDL - CIEL</option>
                                                        <option value="Parent/Connaissance">Parent ou connaissance du demandeur</option>
                                                        <option value="Organisme">Un organisme d'appui au demandeur</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>  -->
                                        <div class="at-sectiontitleborder">
                                            <br/>
                                        <hr/>
                                            <h2><center>Veuillez remplir ce formulaire : <strong>�tape 2</strong> </center></h2>
                                         <hr/>
                                         <br/>
                                         <hr/>
                                            <h3><center>ORIENTATION PROFESSIONNELLE :<strong>OPTION INITIALE DEMANDEUR</strong> </center></h3>
                                            <hr/>
                                        </div> 
                                        <fieldset>
                                            <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <select class="form-control" name="categories" id="demo-category">
                                                        <option value="">- CATEGORIES : -</option>
                                                        <option value="Insertion � l'emploi">Insertion � l'emploi</option>
                                                        <option value="Insertion ou Reconversion par l'auto-emploi">Insertion ou Reconversion par l'auto-emploi</option>
                                                        <option value="Renforcement ou Extension Activit�">Renforcement ou Extension Activit�</option>
                                                        <option value="Migrants">Migrants</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset>
                                            <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                                <div class="form-group">
                                                    <select class="form-control" name="sous_categories" id="demo-category">
                                                        <option value="">- SOUS-CATEGORIES : -</option>
                                                        <option value="Recherche de Qualification Professionnelle">Recherche de Qualification Professionnelle</option>
                                                        <option value="Qualifi� � la recherche d'un emploi">Qualifi� � la recherche d'un emploi</option>
                                                        <option value="Primo demandeur auto emploi">Primo demandeur auto emploi</option>
                                                        <option value="D�flat�-Licenc�">D�flat�-Licenc�</option>
                                                        <option value="Reconversion Professionnelle">Reconversion Professionnelle</option>
                                                        <option value="Informelle/Formelle">Informelle/Formelle</option>
                                                        <option value="R�sident/Non-R�sident">R�sident/Non-R�sident</option>
                                                        <option value="Migrants en Pr�paration de son retour">Migrants en Pr�paration de son retour</option>
                                                        <option value="Migrants de retour">Migrants de retour</option>
                                                        <option value="Migrants Retourn�">Migrants Retourn�</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset>
                                        <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="parcours" id="demo-category">
                                                    <option value="">- PARCOURS : -</option>
                                                    <option value="parcours1">Parcours-1</option>
                                                    <option value="parcours2">Parcours-2</option>
                                                    <option value="parcours3">Parcours-3</option>
                                                    <option value="parcours4">Parcours-4</option>
                                                    <option value="parcours1_2">Parcours-1_2</option>
                                                    <option value="parcours1_3">Parcours-1_3</option>
                                                    <option value="parcours1_4">Parcours-1_4</option>
                                                    <option value="parcours2_3">Parcours-2_3</option>
                                                    <option value="parcours2_4">Parcours-2_4</option>
                                                    <option value="parcours3_4">Parcours-3_4</option>
                                                    <option value="parcours1_2_3">Parcours-1_2_3</option>
                                                    <option value="parcours1_2_4">Parcours-1_2_4</option>
                                                    <option value="parcours1_2_3_4">Parcours-1_2_3_4</option>
                                                    <option value="audit_org_financier">Audit organisationnel et financier</option>
                                                    <option value="contrat_accompagnement">Contrat d'accompagnement</option>
                                                    <option value="accomp_distant">Accompagnement distant</option>
                                                </select>
                                            </div>
                                        </div>  
                                        </fieldset>
                                        <fieldset>
                                        <div class="col-xs-12 col-sm-4 col-md-10 col-lg-10 pull-left">
                                            <div class="form-group">
                                                <select class="form-control" name="marqueurs" id="demo-category">
                                                    <option value="">- MARQUEURS : -</option>
                                                    <option value="D�finition et accompagnement du projet personnel">D�finition et accompagnement du projet personnel</option>
                                                    <option value="Accompagnement le recherche d'emploi/stage">Accompagnement le recherche d'emploi/stage</option>
                                                    <option value="Accompagnement de Groupe">Accompagnement de Groupe</option>
                                                    <option value="Accompagnement Individualis�">Accompagnement Individualis�</option>
                                                    <option value="D�finition et Accompagnement du projet personnel">D�finition et Accompagnement du projet personnel</option>
                                                    <option value="Accompagnements de Groupe et individualis�">Accompagnements de Groupe et individualis�</option>
                                                   </select>
                                            </div>
                                        </div> 
                                            <input type="hidden" value="<%=idx%>" name="id">  
                                            <input type="hidden" value="<%=formulaire_id%>" name="formulaire_id">
                                        </fieldset>                                      
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 pull-left">
                                                <center><button type="submit" name="type2" class="at-btn">ENREGISTRER & RETOURNER</button>&nbsp;<button type="submit" name="type1" class="at-btn">ENREGISTRER & POURSUIVRE...</button></center>
                                            </div>
                                    
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!--************************************
				Main End
		*************************************-->
        <!--************************************
				Footer Start
		*************************************-->
        <footer id="at-footer" class="at-footer at-haslayout">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="at-emailsubscribearea">
                            <p>Recevez nos derni�res informations</p>
                            <form class="at-formtheme at-formnewsletter">
                                <fieldset>
                                    <input type="email" name="email" class="form-control" placeholder="Votre adresse e-mail">
                                    <button class="at-btn" type="submit">Souscrire</button>
                                </fieldset>
                            </form>
                        </div>
                        <div class="at-threecolumns">
                            <div class="at-fcolumn">
                                <div class="at-widget at-widgettext">
                                    <strong class="at-logo"><a href="javascript:void(0);"><img src="images/logof.png" alt="image description"></a></strong>
                               <!--     <div class="at-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adi pisi cing elit, sed do eiusmod tempor Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, the consectetur.</p>
                                    </div> -->
                                    <ul class="at-socialicons">
                                        <li class="at-facebook"><a href="www.facebook.com/taataan"><i class="fa fa-facebook"></i></a></li>
                                        <li class="at-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li class="at-instagram"><a href="www.youtube.com/taataan"><i class="fa fa-youtube"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="at-fcolumn">
                                <div class="at-widget at-widgetusefullinks">
                                    <div class="at-fwidgettitle">
                                        <h3>Liens Utiles</h3>
                                    </div>
                                    <div class="at-widgetcontent">
                                        <ul>
                                            <li><a href="index.html">Accueil</a></li>
                                            <li><a href="javascript:void(0);">S'INSCRIRE</a></li>
                                            <li><a href="https://www.adel-invest.com">Adel-invest</a></li>
                                            <li><a href="https://www.taataan.sn">Taataan</a></li>
                                            <li><p>Email: contact@taataan.sn</p></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="at-fcolumn">
                                <div class="at-widget">
                                    <div class="at-fwidgettitle">
                                        <h3>Recent News</h3>
                                    </div>
                                    <div class="at-widgetcontent">
                                        <ul>
                                            <li>
                                            <!--    <p>Product Design &amp; Branding Innovative Brand Design Concepts</p> -->
                                                <time datetime="2018-01-12">January 28, 2018</time>
                                            </li>
                                            <li>
                                            <!--    <p>Product Design &amp; Branding Innovative Brand Design Concepts</p> -->
                                                <time datetime="2020-24-11">Novembre 24, 2020</time>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="at-copyright">
                            <p>Adresse: ZAC MBAO villa N�3 4i�me Etage Cit� Socidak 1 en face Brioche Dor�e, Rufisque Ouvert de 08H � 18H</p>
                            <p>Copyright @ 2020. <a href="javascript:void(0);">Badel</a> All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--************************************
				Footer End
		*************************************-->
                    <%
                    }
                    con.close();
                     System.out.println("Connection Closed");
                } catch (SQLException ex) {%>

            <main id="at-main" class="at-main at-haslayout">

                <div class="clearfix"></div>
                <section class="at-sectionspace at-haslayout">
                    <div class="container">
                        <h1 style="text-align: center;">Erreur id Conect1</h1>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="at-content">
                                    <div class="at-contactusvone">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </main>
            <%
                }
            %>
    </div>
    <!--************************************
			Wrapper End
	*************************************-->
    <script src="js/vendor/jquery-library.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcvAXp35fi4q7HXm7vcG9JMtzQbMzjRe8"></script>
    <script src="js/vendor/jquery-migrate.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/Chart.bundle.min.js"></script>
    <script src="js/isotope.pkgd.js"></script>
    <script src="js/prettyPhoto.js"></script>
    <script src="js/jquery.vide.js"></script>
    <script src="js/pogoslider.js"></script>
    <script src="js/countTo.js"></script>
    <script src="js/appear.js"></script>
    <script src="js/gmap3.js"></script>
    <script src="js/function.js"></script>
    <script>
        function changementType(type) {
            if (type == "autre") {
                document.getElementById("inscritParAutre").style = "display:block";
            } else {
                document.getElementById("inscritParAutre").style = "display:none";
            }
        }

        function changementType1(type) {
            if (type == "Non") {
                document.getElementById("niveau").style = "display:none";
            } else {
                document.getElementById("niveau").style = "display:block";
            }
        }
    </script>
</body>

</html>