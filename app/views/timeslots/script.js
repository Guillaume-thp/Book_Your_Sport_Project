function change_valeur() {
    select = document.getElementById("sport");
    choice = select.selectedIndex // Récupération de l'index du <option> choisi

    valeur_cherchee = select.options[choice].value; // Récupération du texte du <option> d'index "choice"