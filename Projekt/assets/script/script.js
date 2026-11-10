document.addEventListener("DOMContentLoaded", () => {

    let btn_test = document.getElementById("test");
    let miejsce = document.getElementById("miejsceNaKaruzele");

    btn_test.addEventListener("click", async () => {

        // Pobieramy fragment HTML z pliku
        const html = await fetch("/subpages/karuzela");

        // Wstawiamy go na stronę główną
        const zawartosc = await html.text();

        miejsce.innerHTML = zawartosc;

        // Pobieramy użytkowników z bazy
        const res = await fetch("/uruchom", {
            method: "POST"
        });

        const dane = await res.text();

        document.getElementById("carouselInner").innerHTML = dane;

    });

});