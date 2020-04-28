# Integrationstest - database
Denne note beskriver hvorledes vi kan teste vores data mapper klasser. Hele systemet afhænger af, at databasen fungerer korrekt, så det er vigtigt at tjekke at Java koden og databasen spiller sammen som forventet. Desuden vil det være rart at kunne udvikle datasource laget uafhængigt af de andre lag i systemet.


### Hvad er en integrationstest?
Der er ingen klar definition på hvad en integrationstest er, men vi kan vende den om, og sige, at det er *ikke* en unit test hvis (inspireret af Michael Feathers: *Working Effectively With Legacy Code*):

* den kommunikerer med databasen
* den kommunikerer over netværket
* den rører filsystemet
* den ikke kan køre samtidig med enhver af dine andre unit tests
* du har brug for at gøre specielle ting ved miljøet for at køre testen.

### Principper for integrationstest med database
Normalt starter mapper metoder med at bede om en databaseforbindelse. Forbindelsen specificerer, hvilken database, der skal anvendes.

Idéen er at lave en TEST database (så vi ikke tester direkte på produktionsdatabasen), og give mapper'en en forbindelse til testdatabasen, som kan anvendes under test.  

Dette involverer tre trin:

1. Opret en testdatabase
2. Gør det muligt for mapper'en at bruge en anden forbindelse (vha. Dependency Injection). 
3. Skriv test metoder

## Eksempelkode
[Login projekt](https://github.com/raakostOnCph/Projektskabelon) indeholder tests som tester en `UserMapper` klasse.

### Opret en testdatabase
Vi har brug for en kopi af produktionsdatabasen uden data. Dvs, kun med tabelstrukturerne. Når man kører sine tests, starter hver unit- og integrationstest med at der fyldes friske data i testdatabasen, så vi ved hvilke rækker, der findes.

Vi vil bruge *user login* som eksempel. Databaseskemaet hedder `useradmin`, og vi vil kalde testkopien for `useradmin_test`. Testdatabasen oprettes i eksemplet på samme MySQLServer (localhost).

For hver gang en klasse skal testes, fjernes tabellerne i `useradmin_test` i @Before og der indsættes test-data. Obs! bemærk at store og små bogstaver i tabel-navne har betydning:

```java
    @Before
    public void beforeEachTest(){
        try ( Statement stmt = testConnection.createStatement()) {
            stmt.execute( "drop table if exists users" );
            stmt.execute( "CREATE TABLE `users` LIKE useradmin.users;" );
            stmt.execute("INSERT INTO users VALUES " +
                    "(1,'jens@somewhere.com','jensen','customer')," +
                    "(2,'ken@somewhere.com','kensen','customer')," +
                    "(3,'robin@somewhere.com','batman','employee')," +
                    "(4,'someone@nowhere.com','sesam','customer');");
        } catch ( SQLException ex ) {
            System.out.println( "Could not open connection to database: " + ex.getMessage() );
        }
    }
```

### Lad mapper anvende en anden databaseforbindelse 
I [Login projekt](https://github.com/raakostOnCph/Projektskabelon) start koden, er connection-klassen forberedt på, at man evt. kan skifte connection ved test. Det kan gøres via setter-metoden `setConnection`:

```java
public static void setConnection(Connection con){
	singleton = con;
}
```

I vores integrationstests kan vi oprette en ny connection, som forbinder til testdatabasen.
Når mapper'en beder om forbindelse via get-metode `Connection con = Connector.connection();` vil den få en reference til testdatabasen.

### Initial test setup
Der er en speciel metodeannotation kaldet `@BeforeClass` som kan bruges i JUnit4. Den metode køres før en klasse testes. Her bruger vi metoden til at lave vores connection.

Som sædvanlig skal vi passe på ikke at oprette en ny forbindelse ved hvert kald, så vi implementerer singleton designmønstret for at sikre os vi kun har én åben forbindelse.

```java
public class UserMapperTest {
    
	private static Connection testConnection;
    private static String USER = "root";
    private static String USERPW = "root";
    private static String DBNAME = "useradmin_test?serverTimezone=CET&useSSL=false";
    private static String HOST = "localhost";

    @BeforeClass
    public static void  setUp() {
        try {
            // avoid making a new connection for each test
            if ( testConnection == null ) {
                String url = String.format( "jdbc:mysql://%s:3306/%s", HOST, DBNAME );
                Class.forName( "com.mysql.cj.jdbc.Driver" );

                testConnection = DriverManager.getConnection( url, USER, USERPW );
                // Make mappers use test 
                Connector.setConnection( testConnection );
            } }
         catch ( ClassNotFoundException | SQLException ex ) {
             testConnection = null;
             System.out.println("Could not open connection to database: " + ex.getMessage());
         }
    }
```

Vi tillader os at bruge root, som bruger, da vi kører på localhost.
