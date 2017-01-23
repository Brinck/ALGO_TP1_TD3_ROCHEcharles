{ALGORITHME
BUT : Dessiner un triangle dont les contours sont des X et l interieur rempli de O
ENTREE : Aucune
SORTIE : Le triangle entoure de X et rempli de O

CONST
        MAX<-8

Type
        Tab=Tableau[1..MAX,1..MAX] DE string

procedure RempliTabCarac (var TabTriangle:Tab; i,j:ENTIER)
        //Remplissage du tableau de caracteres
        debut
              POUR i DE 1 A MAX FAIRE
                        POUR j DE 1 A MAX FAIRE
                                SI (i=1) OU (i=j) OU (j=MAX) ALORS
                                        TabTriangle[i,j]<-('X')
                                SINON
                                        TabTriangle[i,j]<-('O')
                                        FINSI
                                FINPOUR
                        FINPOUR
        fin }
  {
procedure RempliTabVide (var TabTriangle:Tab; i,j:ENTIER)
        //Remplissage du tableau de vide
        debut
                POUR i DE 1 A MAX FAIRE
                        POUR j DE 1 A MAX FAIRE
                                SI (TabTriangle[i,j]<>'X') ET (TabTriangle[i,j]<>'O') ALORS
                                        TabTriangle[i,j]<-(' ')
                                FINSI
                        FINPOUR
                FINPOUR
        fin }
 {
procedure AffTab (var TabTriangle:Tab; i,j:ENTIER)
        //Affichage du tableau
        debut
                POUR i DE 1 A MAX FAIRE
                        POUR j DE 1 A MAX FAIRE
                                ECRIRE(TabTriangle[i,j])
                        FINPOUR
                        ECRIRE
                FINPOUR
        FIN }
{
var
        i,j:ENTIER // coordonnees des cases du tableau
        TabTriangle:Tab //Tableau contenant le triangle


DEBUT
        ECRIRE('Programme : triangle de X et O')

        //Remplissage du tableau de caracteres
        RempliTabCarac(TabTriangle,i,j)

        //Remplissage du tableau de vide
        RempliTabVide(TabTriangle,i,j)

        //Affichage du tableau
        AffTab(TabTriangle,i,j)
FIN}

program Triangle_Char (output);

uses crt;

const
        MAX=8;

Type
        Tab=Array[1..MAX,1..MAX] of string;

procedure RempliTabCarac (var TabTriangle:Tab; i,j:integer);
        //Remplissage du tableau de caracteres
        begin
              FOR i:=1 TO MAX DO
                        begin
                        FOR j:=1 TO MAX DO
                                begin
                                IF (i=1) OR (i=j) OR (j=MAX) THEN
                                        begin
                                        TabTriangle[i,j]:=('X');
                                        end
                                ELSE
                                        begin
                                        TabTriangle[i,j]:=('O');
                                        end;
                                end;
                        end;
        end;

procedure RempliTabVide (var TabTriangle:Tab; i,j:integer);
        //Remplissage du tableau de vide
        begin
                FOR i:=1 TO MAX DO
                        begin
                        FOR j:=1 TO MAX DO
                                begin
                                IF (TabTriangle[i,j]<>'X') AND (TabTriangle[i,j]<>'O') THEN
                                        begin
                                        TabTriangle[i,j]:=(' ');
                                        end;
                                end;
                        end;
        end;

procedure AffTab (var TabTriangle:Tab; i,j:integer);
        //Affichage du tableau
        begin
                FOR i:=1 TO MAX DO
                        begin
                        FOR j:=1 TO MAX DO
                                begin
                                write(TabTriangle[i,j]);
                                end;
                        writeln;
                        end;
        end;

var
        i,j:integer; // coordonnees des cases du tableau
        TabTriangle:Tab; //Tableau contenant le triangle


BEGIN
        clrscr;
        writeln('Programme : triangle de X et O');

        //Remplissage du tableau de caracteres
        RempliTabCarac(TabTriangle,i,j);

        //Remplissage du tableau de vide
        RempliTabVide(TabTriangle,i,j);

        //Affichage du tableau
        AffTab(TabTriangle,i,j);

        readln;
END.