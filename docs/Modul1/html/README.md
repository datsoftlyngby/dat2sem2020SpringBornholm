# HTML, CSS
[Erhvervskompentancer og Læringsmål](admin.md)

HTML står for - Hypertext Markup Language - HTML er den mest basale måde at lave en hjemmeside på.

HTML og CSS de to kode-sprog som ligger bag enhver moderne hjemmeside. Det er altså HTML og CSS der sørger for at tekst, billeder, design osv. vises.

HTML-elementer består af tags. Et tag består af < og >. Det der står imellem < og > er tag-typen. 

Der findes altid et start tag <tagnavn> og et slut tag </tagnavn>. Imellem disse tags kan du skrive tekst eller andet data. Den tekst eller data du indsætter mellem start-tagget og slut-tagget, vil blive behandlet i henhold til hvad tagget betyder. 

F.eks. betyder `<h1>Overskrift</h1>`, at du kan skrive en overskrift (*heading*) mellem tags´ne.

### HTML Versioner

**Version**|**Year**
-----------|--------
HTML       |1991
HTML 2.0   |1995
HTML 3.2   |1997
HTML 4.01  |1999
XHTML      |2000
HTML5      |2014


## Editorer og WYSIWYG
Mange programmer/værktøjer kan bruges i web-udvikling med funktionalitet som *Syntax Highlighting, Autofuldførelse og Faneblade*. 

Nogle forsøger helt at erstatte håndskrivning af markup og stil med forskelligt held. Ideen er, at du som webudvikler ikke behøver at håndkode ret meget, men der kan nemt opstå problemer.

Mange begyndere benytter disse værktøjer, og når det kombineres med ringe viden om standarderne, går det ofte galt.

Generelt kan du bruge enhver teksteditor til at skrive HTML. F.eks. Notepad i Windows.

## Sideopsætning HTML
Her har du koden til sideopsætningen i et HTML dokumnet - altså der der skal stå i starten.

```HTML
<!DOCTYPE html>
<html>
  <head>
    <title>Sidetitel</title>
      <meta charset="utf-8" />
      <meta name="description" content="Beskrivelse af side" />
  </head>
  <body>
    <h1>Overskrift</h1>
    <p>Afsnit tekst</p>
  </body>
</html>
```

* `<!DOCTYPE html>` declaration defines this document to be HTML5
* `<html>` element is the root element of an HTML page
* `<head>` element contains meta information about the document
* `<title>` element specifies a title for the document
* `<body>` element contains the visible page content
* `<h1>` element defines a large heading
* `<p>` element defines a paragraph
  
Oversigt over sideelementer

![pagestructure](./image/html-5-page-structure.jpg)

## Start fil
Her er link til fil med grundstrukturen: [Link](./files/start.html)

## CSS
Når det kommer til mere avanceret formatering og layout på hjemmesider er det en fordel at bruger CSS - **Cascading Style Sheets**.
CSS gør det muligt at ændre hele layoutet på din hjemmeside ved at ændre i en enkelt fil.

Ønsker du f.eks. at ændre tekstfarven på samtlige links, kan det gøres ved at  ved at rette farven ét sted i CSS filen.
Er din side kun opbygget i HTML skal du rette farve-koden manuelt i samtlige filer på din hjemmeside. Består dit website af fem sider ville dette ikke være det store problem, men prøv så at forstil dig en hjemmeside med flere hundrede sider.

Med CSS er det altså muligt at styre hele designet fra en enkelt fil. Samtidig giver CSS en lang række grafiske muligheder som ikke er mulige at lave kun ved brug af HTML.

CSS er ligesom HTML opbygget af tags. Her er et eksempel på et CSS tag:

**`h1 {color:red;}`**

Den tekst der står i mellem start tagget `<div id=”tekst”>` og slut tagget `</div>` vil så blive formateret i henhold til det der er angivet i CSS filen.

Der er mange "egneskaber" du kan tilføje i CSS, f.eks.

```HTML
h1 {
    color:red;
    font-size:32px;
    font-family:Verdana;
    font-weight:bold;
    line-height:30px;
    letter-spacing:10px;
    text-transform: uppercase;
   }
```


### Style Sheet
CSS "koden" kan være placeret to forskellige steder:

* **Inline** - *CSS koden er placeret direkte i HTML filen ved at bruge et style attribute element*
* **Internal** - *CSS koden er placeret i <head> sektionen i HTML dokumentet, indefor et `<style>` element
* **External** - *CSS koden er placret i en selvstændig fil - "minccs.css"

I de fleste tilfælde vil det være den bedste løsning at have *CSS* placeret i en ekstern fil 

### Inline
CSS bruges på et enkelt HTML element. Det gøres ved at bruge `<style>` element.

Et eksempel kunne være at ændre <h1> til Blå tekst

```
    <h1 style="color:blue;">Dette er en BLÅ overskrift</h1>
```

### Internal
Internal bruges til at definere CSS for en enkelt HTML side.
CSS koden skal placeres i <head> sektionen, i `<style>` elementet.

**Eksempel:**
```
<!DOCTYPE html>
<html>
    <head>
        <style>
        body {background-color: blue;}
        h1   {color: blue;}
        p    {color: red;}
        </style>
    </head>
    <body>
        <h1>Dette er en overskrift</h1>
        <p>Dette er et afsnit.</p>
    </body>
</html>
```

### External
En eksternal CSS file, gør det nemt at ændre "designet" for mange HTML sider. Da det kun er et sted du skal ændre.
Du skal oprette et *link* til den eksteren CSS fil i <head> sektionen af din HTML fil:

**Eksempel:**

```
<!DOCTYPE html>
<html>
    <head>
      <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <h1>Dette er en overskrift</h1>
        <p>Dette er et afsnit.</p>
    </body>
</html>
```

Din eksterne *CSS* må **ikke** indeholde HTML kode.
Den skal gemmes som filtypen *.css*.

**Eksempel på en CSS fil:**

```
  body {
    background-color: powderblue;
  }
  h1 {
    color: blue;
  }
  p {
    color: red;
  }
```

CSS filen kan være placeret sammen sted som din HTML filer eller den kan være placeret et helt andet sted.

- `<link rel="stylesheet" href="styles.css">`
- `<link rel="stylesheet" href="/html/styles.css">`
- `<link rel="stylesheet" href="https://www.w3schools.com/html/styles.css">`


## Tomcat
Her finder du en vejledning til upload af HTML og CSS filer til din Tomcat server på Digital Ocean. Vi får først brug for dette om to uger, når vi har fået oprettet en virtuel maskine hos Digital Ocean.

[Tomcat HTML vejledning](tomcat.md)

# Opgaver
[Opgaver til denne uge](./opgaver/README.md)

# Links
Disse links er til opslag efter specifikke emner og tags:

- [https://www.w3.org](https://www.w3.org)
- [https://www.w3schools.com/html/](https://www.w3schools.com/html/)
- [http://html.net](http://html.net)
- [https://tympanus.net/codrops/css_reference/](https://tympanus.net/codrops/css_reference/)

# LinkedIn Learning - videoer
Disse videoer skal opfattes som referencevideoer. De er lange, men er gode hvis I har specifikke ting I ønsker at blive bedre til. I behøver med andre ord ikke at se dem fra en ende af.

- [HTML and CSS](https://www.linkedin.com/learning/html-essential-training/html-and-css?u=57077785)
- [HTML & CSS: Creating Forms](https://www.linkedin.com/learning/html-css-creating-forms/welcome?u=57077785)
- [CSS 1](https://www.linkedin.com/learning/css-essential-training-1/welcome?u=57077785)
- [CSS 2](https://www.linkedin.com/learning/css-essential-training-2-2/welcome?u=57077785)
