# Opgave: Biblioteket

Opgaven tager udgangspunkt i den normaliserede version af databasen beskrevet i artiklen: [Dansk artikel om normalisering](../resources/DB_normalisering.pdf)

Dvs, at databasen på 3NF består af tabellerne:

- bog
- udlån
- låner
- postnummer

## Opret en database for biblioteket

1. Opret databasen i Workbench. Sæt primær- og fremmednøgler og auto increment, hvor det er relevant.
2. Generer et EER-diagram (reverse engineer)
3. Fyld noget testdata i tabellerne

## Lav følgende forespøgsler

0. Vis alle bøger sorteret efter udgivelsesår
1. Vis en oversigt over alle lånere og hvilke bøger de har lånt
2. Lav et view, som indholder alle tabellerne joinet sammen
3. Find det ældste udlån, som en given låner har foretaget. Altså hvornår lånte en given låner første gang en bog på biblioteket.
4. Vis hvor mange bøger hver låner er lånt.

## Brug databasen fra Java

1. Lav et simpelt Java-projekt i IntelliJ og lav en metode for hver af dine forespørgsler.