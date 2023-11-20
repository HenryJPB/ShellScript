Bqto: 17 de Nov 2013 08:23

Ejecutado x Nestor Infante: 
    
    sudo docker run -d -p 5432:5434 --name adempiere.db --network adempiere_network -v adempiere_prod:/var/lib/postgresql/data -e POSTGRES_PASSWORD="#f5*%%45)" --restart unless-stopped postgres:14 postgres -c 'max_connections=1000'

    sudo docker exec -it adempiere.db.old psql -U adempiere -d DDH ( Ejemplo conectar al contenedor, ... )
    
-------
Remind:
-------
    ALTER DATABASE ddh RENAME TO "DDH";  

-------------------------------
Nestor dice este es el comando:
-------------------------------

    ----------------------------
    ( ADempiere en produccion ):
    ----------------------------
    sudo docker run -d -p 5432:5434 --name adempiere.db --network adempiere_network -v adempiere_prod:/var/lib/postgresql/data -e POSTGRES_PASSWORD="#f5*%%45)" --restart unless-stopped postgres:14
    
    ----------------------------------------------------------------------------------
    ( ADempiere-db-test - reutilizando el volumen creado inicialmente 'pgdata_test' ):
    ----------------------------------------------------------------------------------
    sudo docker run -d -p 5432:54323 --name adempiere-db-test --mount src=pgdata_test,dst=/var/lib/postgresql/data -e POSTGRES_PASSWORD="#f5*%%45)" --restart unless-stopped postgres:14
    
    
    sudo docker exec -it adempiere-db-test bash
    
    root@222ec0721950:/# su postgres

    postgres@222ec0721950:/$ \l
    
    CREATE USER adempiere WITH PASSWORD 'adempiereTest';
    
    ALTER ROLE adempiere WITH SUPERUSER;
    
    ALTER ROLE adempiere WITH CREATEROLE;
    
    \c postgres adempiere
    
    CREATE DATABASE "DDH";
    
   -----------------------------
   RECUPERAR DATOS DE UN BACKUP:
   -----------------------------
   .
   .
   cd BACKUP/Datos
   cat datos.sql | sudo docker exec -i adempiere-db-test psql -U adempiere -d DDH
   .
   .
   

   
   
    
    
    
