<%@page import="java.util.List"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="dev.sgp.entite.Departement"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="fr">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-tofit=no">
    <!-- Bootstrap CSS -->
    <!--  <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-4.4.1-dist/css/bootstrap.css"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>SGP - Accueil</title>
</head>

<body>
    <nav class="navbar navbar-expand-sm navbar-light bg-light">
        <a class="navbar-brand" href="index.html">
            <img src="logo.jpg" width="70" height="70" class="d-inline-block align-middle" alt="LOGO">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">Collaborateurs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="stats.html">Statistiques<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="activities.html">Activities</a>
                </li>
            </ul>
        </div>
    </nav>
    <header></header>
    <main class="container-xl">
        <div class="row mt-3">
            <div class="col-4 offset-8">
                <a href="<%=request.getContextPath()%>/collaborateurs/nouveau">
                    <button class="btn btn-outline-primary">Ajouter un nouvel collaborateur</button>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <h1>Les collaborateurs</h1>
            </div>
        </div>
        <form>
            <div class="row">
                <div class="col-12 col-md-4">
                    <label for="champ_recherche">Rechercher un nom ou un prénom qui commence par: </label>
                </div>
                <div class="col-8 col-md-3">
                    <input type="text" id="champ_recherche" name="terme_recherche" required >
                </div>
                <div class="col-4 col-md-2">
                    <input type="submit" name="Rechercher" value="Rechercher" class="btn btn-outline-primary">
                </div>
                <div class="col-12 col-md-3">
                    <div class="row form-group form-check form-check-inline">
                        <div class="col-2">
                            <input id="voir_collab_chkbox" type="checkbox" name="voir_collab" class="form-control form-check-input">
                        </div>
                        <div class="col-10">
                            <label for="voir_collab_chkbox" class="form-check-label">Voir les collaborateurs désactivés</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-4">Filtrer par département:</div>
                <div class="col-3">
                <select>
                	<option>Tous</option>
                <% List<Departement> listeDepartements = (List<Departement>)request.getAttribute("listeDepartements"); 
                	for(Departement dpt : listeDepartements){  %>
                	<option><%= dpt.getNom() %></option>                      
                <% } %>
                </select>
                </div>
            </div>
        </form>
        <article>
            <div class="row">
            	<% List<Collaborateur> listeCollaborateurs = (List<Collaborateur>)request.getAttribute("listeCollaborateurs"); 
                    	for(Collaborateur collab : listeCollaborateurs){ %>
                <div class="col-12 col-lg-6 col-xl-4 mt-3">
                    <div class="card">
                        <div class="card-header">
                            <%= collab.getNom()+" "+collab.getPrenom() %>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                    <div class="col-12 col-md-4 text-center">
                                        <img alt="PHOTO" src="person.png" width="95px" height="120px" class="border">
                                    </div>
                                    <div class="col-12 col-md-8">
                                            <div class="row mt-1">
                                                <div class="col-7">Fonction</div>
                                                <div class="col-5">xxxxxxxx</div>
                                            </div>
                                            <div class="row mt-1">
                                                <div class="col-7">Département</div>
                                                <div class="col-5"><%= collab.getAdresse() %></div>
                                            </div>
                                            <div class="row mt-1">
                                                <div class="col-7">Email</div>
                                                <div class="col-5"><%= collab.getEmailPro() %></div>
                                            </div>
                                            <div class="row mt-1">
                                                <div class="col-7">Téléphone</div>
                                                <div class="col-5"></div>
                                            </div>
                                            <div class="row mt-2">
                                                <div class="col-5 offset-7">
                                                    <a href="editer.html">
                                                        <button class="btn btn-outline-primary">Editer</button>
                                                    </a>
                                                </div>
                                            </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
              <% } %>
             </div>
        </article>
    </main>
    <footer></footer>

    <!-- TODO -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-
J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>

</html>
