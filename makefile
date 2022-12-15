.SILENT:

CLASSES=Classes/
OBJS=Classes/Modele.o
CO=g++ -I $(CLASSES) -D DEBUG
PROGRAMS=Test1

Test1:	Test1.cpp $(CLASSES)Modele.o
	# g++ Test1.cpp Classes/Modele.o -I Classes/ -o Test1
	$(CO) $(OBJS) Test1.cpp -o Test1
	echo "Création de Test1"

Classe/Modele.o:	$(CLASSES)Modele.h $(CLASSES)Modele.cpp
	# g++ Classes/Modele.cpp -c -o Classes/Modele.o
	$(CO) $(CLASSES)Modele.cpp -c -o $(CLASSES)Modele.o
	echo "Création de Modele.o"


clean:
	rm $(CLASSES)*.0

clobber:
	clean
	rm -f $(PROGRAMS)