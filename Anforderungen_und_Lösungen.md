# Optimierung der Lagerhauskonfiguration:

Um die Frage der Artikelspeicherung und potenziellen Lagerhauseliminierung anzugehen, wurden die SQL-Codes eins bis vier ausgeführt. Abfrage 2.1 wirft Licht auf die aktuellen Produktlagerorte und offenbart überschüssige Artikel. 

Obwohl Lagerhäuser als Nord, West, Ost und Süd gekennzeichnet sind, sind ihre genauen Standorte nicht spezifiziert. Es wird angenommen, dass sich diese Lagerhäuser in den USA befinden. Darüber hinaus wurden zwei neue Tabellen erstellt, um Bundesstaaten in vier relevante Regionen zu gruppieren, was die Verbindung von Kunden in den USA mit bestimmten Lagerhäusern erleichtert. Diese Beziehung kann in nachfolgenden Schritten genutzt werden, um die Transportdauer zu den Kunden zu minimieren. 

Abfrage 3.2 zeigt auf, dass insgesamt 15.910 Verkäufe in der Westregion und 19.934 Verkäufe in der Ostregion verzeichnet wurden, ohne Verkäufe in den Nord- und Südregionen. 

Abfrage 4 zeigt die Gesamtbestände in den Lagern an und zeigt, dass das Nordlager 131.688 Einheiten mit einer Lagerhauskapazität von 72% und das Südlager 79.380 Einheiten mit einer Lagerhauskapazität von 75% hat. Interessanterweise ist die Kosten für die Lagerbestandseliminierung im Südlager geringer als im Norden, was auf eine potenzielle Verteilung des Lagerbestands im Südlager auf die Lagerhäuser West und Ost hindeutet. Darüber hinaus kann die Optimierung der Transportdauer und -kosten durch die Nutzung der Beziehung zwischen Kunden und Lagern erreicht werden.

# Analyse der Bestands-Verkaufsbeziehung:

Abfrage 5 untersucht die Beziehung zwischen Verkaufszahlen und Bestandszahlen und ordnet die Liste nach Gesamtproduktverkäufen. Einige Produkte zeigen Engpässe im Bestand; zum Beispiel hat der 1968 Ford Mustang, das neuntprofitabelste Produkt mit 933 Bestellungen, nur 68 Einheiten im Bestand. Sofortige Produktion und priorisiertes Auffüllen werden empfohlen, um die Nachfrage zu decken. Die Bestandsniveaus für den 1997 BMW F650 ST und den 1928 Mercedes-Benz SSK sind äußerst niedrig und reichen nicht aus, um den Anforderungen gerecht zu werden.

# Identifizierung von unbeweglichen Artikeln und Kandidaten zur Entfernung:

Das Fehlen von Bestellungen für den '1985 Toyota Supra s18_3233', gepaart mit einem Bestand von 7.733 Einheiten, deutet auf eine mangelnde Nachfrage hin. Daher ist es ratsam, in Betracht zu ziehen, diesen Artikel aus dem Produktangebot zu entfernen. Darüber hinaus sind die Bestandsniveaus von 12 Artikeln kritisch und erfordern eine erhöhte Lagerhaltung, insbesondere bei unverkauften Artikeln, deren Menge nicht verringert werden sollte.
