--SQL%FOUND
begin
     UPDATE DETAILS_COMMANDES
         SET PRIX_UNITAIRE = PRIX_UNITAIRE * 1.05
     WHERE NO_COMMANDE = 11077;
     if SQL%FOUND then  
         COMMIT;
     end if;
end;
/

--SQL%NOTFOUND 
begin
     DELETE DETAILS_COMMANDES WHERE NO_COMMANDE = 215003;
     if SQL%NOTFOUND then 
           dbms_output.put_line('Non trouv�');
     else              
           dbms_output.put_line('Trouv�');
     end if;
end;
/

--SQL%ROWCOUNT 
begin
     UPDATE DETAILS_COMMANDES
         SET PRIX_UNITAIRE = PRIX_UNITAIRE * 1.05
     WHERE NO_COMMANDE = 214999;
     if SQL%FOUND then
        dbms_output.put_line('Enregistrements modifi�s : '
                              ||SQL%ROWCOUNT);
        COMMIT;                      
     else
        dbms_output.put_line('Aucun enregistrement trouv�');
     end if;
end;
/
