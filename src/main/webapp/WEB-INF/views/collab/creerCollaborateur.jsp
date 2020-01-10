<!doctype html>
<html lang="fr">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-tofit=no">
    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-4.4.1-dist/css/bootstrapmin.css"> -->
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
        <div class="row">
            <div class="col-12">
                <h1>Nouveau collaborateur</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-sm-10 mx-auto">
                <form id="formNouveau" class="needs-validation" action="/sgp/collaborateurs/nouveau" method="POST" novalidate>
                    <div class="form-row">
                        <div class="col-4">
                            <label for="nom" class="col-form-label">Nom</label>
                        </div>
                        <div class="col-8">
                            <input type="text" id="nom" name="nom" class="form-control mt-3" required >
                            <div class="invalid-feedback">
                                Le nom est obligatoire
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-4">
                            <label for="prenom" class="col-form-label">Prenom</label>
                        </div>
                        <div class="col-8">
                            <input type="text" id="prenom" name="prenom" class="form-control mt-3" required >
                            <div class="invalid-feedback">
                                Le prénom est obligatoire
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-4">
                            <label for="date_naiss" class="col-form-label">Date de naissance</label>
                        </div>
                        <div class="col-8">
                            <input type="date" id="date_naiss" name="date_naiss" class="form-control mt-3" required >
                            <div class="invalid-feedback">
                                La date de naissance est obligatoire
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-4">
                            <label for="adresse" class="col-form-label">Adresse</label>
                        </div>
                        <div class="col-8">
                            <textarea id="adresse" name="adresse" class="form-control mt-3" required ></textarea>
                            <div class="invalid-feedback">
                                L'adresse est obligatoire
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-4">
                            <label for="numss" class="col-form-label">Numéro de sécurité sociale</label>
                        </div>
                        <div class="col-8">
                            <input type="text" id="numss" name="numss" class="form-control mt-3" required >
                            <!-- pattern="^[12][0-9]{2}[0-1][0-9](2[AB]|[0-9]{2})[0-9]{3}[0-9]{3}[0-9]{2}$" -->
                            <div class="invalid-feedback">
                                Le numéro de sécurité social est obligatoire
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-2 offset-10">
                            <input type="submit" name="creer" value="Créer" class="btn btn-outline-primary mt-3" data-toggle="modal" data-target="#creer_modal">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="creer_modal" tabindex="-1" role="dialog" aria-labelledby="creer_modal_label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                    <h5 class="modal-title" id="creer_modal_label">Création d'un collaborateur</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Annuler">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col">Vous êtes sur le point de créer un nouvel collaborateur :</div>
                            </div>
                            <div class="row mt-1">
                                <div class="col">Nom</div>
                                <div class="col">xxxxxxxx</div>
                            </div>
                            <div class="row mt-1">
                                <div class="col">Prénom</div>
                                <div class="col">xxxxxxxx</div>
                            </div>
                            <div class="row mt-1">
                                <div class="col">Date de naissance</div>
                                <div class="col">xxxxxxxx</div>
                            </div>
                            <div class="row mt-1">
                                <div class="col">Adresse</div>
                                <div class="col">xxxxxxxx</div>
                            </div>
                            <div class="row mt-1">
                                <div class="col">Numéro de sécurité de sociale</div>
                                <div class="col">xxxxxxxx</div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                    <button type="button" class="btn btn-outline-primary" onclick="$('#formNouveau').submit();">Confirmer</button>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer></footer>
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function() {
          'use strict';
          window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
              form.addEventListener('submit', function(event) {
                if (form.checkValidity() === false) {
                  event.preventDefault();
                  event.stopPropagation();
                }
                form.classList.add('was-validated');
              }, false);
            });
          }, false);
        })();
    </script>
    <!-- TODO -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-
J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script type="text/javascript" href="<%=request.getContextPath()%>/bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>
</body>

</html>