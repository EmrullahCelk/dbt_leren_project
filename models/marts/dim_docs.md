{% docs dim_medewerker_final %}
Deze dimensionele tabel bevat verrijkte medewerkersgegevens, inclusief zowel brongegevens als afgeleide kenmerken zoals dienstjaren, werkstatus en leeftijd.
Deze tabel is bedoeld voor rapportagedoeleinden en vormt een eindpunt in de datamodellering.

| Kolomnaam                         | Beschrijving                                                                 |
|----------------------------------|------------------------------------------------------------------------------|
| medewerkerid                     | Unieke ID van de medewerker. Wordt gebruikt als sleutel in het hele model. |
| naam                             | Volledige naam van de medewerker.                                           |
| geslacht                         | Geslacht van de medewerker ('M' of 'V').                                    |
| geboortedatum                    | Geboortedatum van de medewerker.                                            |
| Datum_in_dienst__ivm_dienstjaren_| Startdatum van het dienstverband, gebruikt voor berekening van dienstjaren.|
| datumuitdienst                   | Datum waarop de medewerker uit dienst is gegaan.                            |
| dienstjaren                      | Aantal jaren dat de medewerker in dienst is geweest.                        |
| werkstatus                       | Status van de medewerker (zoals 'heden' of 'niet in dienst').              |
| leeftijd                         | Leeftijd van de medewerker in jaren, gebaseerd op geboortedatum.           |
| bijgewerkt_op                    | Datum waarop deze gegevens zijn bijgewerkt of geladen in het model.        |

{% enddocs %}

