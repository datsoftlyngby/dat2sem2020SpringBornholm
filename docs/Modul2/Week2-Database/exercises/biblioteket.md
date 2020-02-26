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

## Lav følgende forespørgsler

0. Vis alle bøger sorteret efter udgivelsesår
1. Vis en oversigt over alle lånere og hvilke bøger de har lånt
2. Lav et view, som indholder alle tabellerne joinet sammen
3. Find det ældste udlån, som en given låner har foretaget. Altså hvornår lånte en given låner første gang en bog på biblioteket.
4. Vis hvor mange bøger hver låner har lånt.

## Brug databasen fra Java

1. Lav et simpelt Java-projekt i IntelliJ (maven-projekt uden arketype) og lav en metode for hver af dine forespørgsler (ovenfor). Brug en main metode til at teste dine mappers.
2. Lav en metode, som kan indsætte en låner
3. Lav en metode, som kan oprette et udlån af en bog
4. Lav en metode, som kan ændre navnet på en låner
5. Lav en metode, som kan sørge for at registrere at en bog er afleveret. Dvs, fjerne et udlån.


### Eksempel på connector

```Java
package DataMappers;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionConfiguration {

    public static Connection getConnection() {

        Connection connection = null;

        String url = "jdbc:mysql://localhost:3306/library?serverTimezone=CET&useSSL=false";
        String user = "library_user";
        String password = "1234";

        try {
            connection = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return connection;
    }

}
```   
   
   
### Eksempel på en datamapper
   
```Java
package DataMappers;

import Model.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BookMapper {

    public static ArrayList<Book> getAllDisciplines(){

        ArrayList<Book> disciplineList = new ArrayList<>();

        String sql = "select * from Book ";
        try (Connection con = ConnectionConfiguration.getConnection();
             PreparedStatement ps = con.prepareStatement(sql))  {
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String title = resultSet.getString("title");
                int year = resultSet.getInt("year");
                Book newBook = new Book(id, title, year);
                disciplineList.add(newBook);
            }
        } catch (SQLException e) {
            System.out.println("Fejl i connection til database");
            e.printStackTrace();
        }
        return disciplineList;
    }
}
```

### Eksempel på en test-klasse - og metode

```Java
import Model.Book;
import java.util.ArrayList;

public class Testrun {
    public static void main(String[] args) {
        ArrayList<Book> bookList = DataMappers.BookMapper.getAllDisciplines();
        for (Book b: bookList) {
            System.out.println(b.getYear() + ", " + b.getTitle());
        }
    }

}
```

### Eksempel på en pom-fil

```Java
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>dat2</groupId>
    <artifactId>javadb</artifactId>
    <version>1.0-SNAPSHOT</version>

    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <configuration>
                    <source>1.8</source>
                    <target>1.8</target>
                </configuration>
            </plugin>
        </plugins>
    </build>

    <dependencies>
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>8.0.19</version>
        </dependency>
    </dependencies>

</project>
```