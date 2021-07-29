------------------------------------------------------------------------------
--                                                                          --
--                         A SIGMANIFICIENT PROGRAM                         --
--                                                                          --
--                             PRIME CALCULATOR                             --
--                                                                          --
------------------------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO ;
use Ada.Text_IO, Ada.Integer_Text_IO ;

procedure Main is

   count_prime : Integer ;
   counter : Integer ;
   wanted : Integer ;
   iteration : Integer ;
   testing : Integer ;
   is_prime : Boolean ;

   answer : Character ;
begin
   loop
      Put("Calculateur de nombre premiers") ;
      New_line(2) ;
      Put("Entrez 'p' pour calculer des premiers") ;
      New_Line(1);
      Put("Entrez 'q' pour quitter") ;
      New_Line(2) ;
      Put(">> ") ;

      Get(answer) ;
      Skip_line ;
      if answer = 'p' then
         Put("Entrez le nombre de premiers voulu : ");
         Get(wanted) ;
         Skip_line ;
         iteration := 0 ;
         count_prime := 0 ;
         counter := 1 ;

         if wanted > 0 then
            Put("2");
            New_Line(1);
            if wanted > 1 then
               Put("3");
               New_Line(1);
            end if ;

            if wanted > 2 then
               count_prime := 2;
               loop
                  if counter = 1 then
                     counter := 0 ;
                     iteration := iteration + 1 ;
                     testing := ( 6 * iteration ) - 1 ;
                  else
                     counter := 1 ;
                     testing := ( 6 * iteration ) + 1 ;
                  end if ;

                  is_prime := True ;

                  for i in 2..(testing-1) loop

                     if (testing rem i = 0) then
                        is_prime := False ;
                     end if ;

                  end loop;

                  if is_prime = True then
                     Put(testing);
                     New_Line(1);
                     count_prime := count_prime + 1 ;
                  end if ;

                  exit when count_prime = wanted;
               end loop ;
            end if;

            Put("Ended") ;

         else
            Put("Vous devez mettre un nombre positif ._.");
         end if ;

      end if ;

      New_Line(3);
      exit when answer = 'q' ;
   end loop ;
end Main ;
-- Long life to prime ! --
