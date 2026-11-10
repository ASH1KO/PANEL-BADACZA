const express = require("express");
const fs = require("fs");
const mysql = require("mysql2");

const port = 3000;
const app = express();

// Odczytywanie danych z formularzy
app.use(express.urlencoded({ extended: true }));

// Udostępnianie plików CSS i JS
app.use(express.static("./assets/"));

// Połączenie z bazą danych
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "foszczj_rekiny"
});

connection.connect((err) => {
    if (err) {
        console.log(err);
    } else {
        console.log("Połączono z bazą danych!");
    }
});

// STRONA GŁÓWNA
app.get("/", (req, res) => {
    let content = fs.readFileSync("./assets/strona.html").toString();

    content = content.replace("{{maincontent}}", "");

    res.send(content);
});

// STRONA KARUZELI
app.get("/karuzela", (req, res) => {
    let content = fs.readFileSync("./assets/karuzela.html").toString();

    res.send(content);
});

// POBIERANIE UŻYTKOWNIKÓW DO KARUZELI
app.post("/uruchom", (req, res) => {

    connection.query("SELECT * FROM u_uzytkownicy", (err, rows) => {

        if (err) {
            console.log(err);
            return res.status(500).send("Błąd bazy danych");
        }

        let wynik = "";

        rows.forEach((row, i) => {

            wynik += `
                <div class="carousel-item ${i === 0 ? 'active' : ''}">
                    <div class="p-4 text-white rounded">

                        <h3 class="text-center">
                            Użytkownik ${i + 1}
                        </h3>

                        <table class="table table-dark table-striped">

                            <tr>
                                <th>ID</th>
                                <td>${row.uzytkownik_id}</td>
                            </tr>

                            <tr>
                                <th>Login</th>
                                <td>${row.login}</td>
                            </tr>

                            <tr>
                                <th>Email</th>
                                <td>${row.email}</td>
                            </tr>

                            <tr>
                                <th>Rola</th>
                                <td>${row.rola}</td>
                            </tr>

                            <tr>
                                <th>Data utworzenia</th>
                                <td>${row.data_utworzenia}</td>
                            </tr>

                        </table>

                    </div>
                </div>
            `;

        });

        if (rows.length === 0) {
            return res.send("<p>Brak użytkowników w bazie.</p>");
        }

        res.send(wynik);

    });

});

// WYNIK FORMULARZA
app.post("/wynik", (req, res) => {

    let imie = req.body.imie;
    let nazwisko = req.body.nazwisko;
    let wiek = req.body.wiek;

    let content = fs.readFileSync("./assets/strona.html").toString();

    let wynik = `
        <div class="alert alert-success">
            <h3>Twoje dane:</h3>
            <p>Imię: ${imie}</p>
            <p>Nazwisko: ${nazwisko}</p>
            <p>Wiek: ${wiek}</p>
        </div>
    `;

    content = content.replace("{{maincontent}}", wynik);

    res.send(content);

});

// URUCHOMIENIE SERWERA
app.listen(port, () => {
    console.log("App ready on port " + port);
});