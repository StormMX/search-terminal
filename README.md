# SearchTerminal

- **Autore:** StormMX
- **Versione:** 1.0  

## Descrizione

**SearchTerminal.bat** è uno script Batch interattivo che consente di:

- cercare in modo ricorsivo file con una specifica estensione e una data stringa nel nome;
- eseguire più ricerche consecutive fino all’uscita esplicita dallo script.

Nato per offrire un’alternativa locale alla funzione “Cerca” di Windows che spesso reindirizza a risultati online (Bing), è particolarmente utile in ambienti aziendali con restrizioni all’installazione di software di terze parti.

## Requisiti

- Sistema operativo Windows (testato su Windows 10).
- Permessi di lettura nelle cartelle oggetto di ricerca.

## Installazione e avvio

### Clonare il repository

Per iniziare, clonare il repository con il seguente comando da terminale:

```bash
git clone https://github.com/StormMX/search-terminal.git
```

Oppure scaricare lo zip e decomprimerlo.  

### Avviare CMD

Avviare un terminale CMD e posizionarsi nella directory con il comando:

```cmd
cd <directory_clone_repository>
```

Eseguire lo script digitando:

```cmd
SearchTerminal.bat
```

## Funzionamento

### Script

Una volta avviato verrà mostrato:

```cmd
SearchTerminal

Start

Directory disponibili:
[0] C:\
[1] C:\Users\<user>\Downloads
[2] C:\Users\<user>\Desktop
[3] Fornisci percorso in cui effettuare la ricerca

[*] Scegliere un opzione:

```

- Scegliere 0–2 per le directory standard, oppure 3 per un percorso custom.

- Se si seleziona 3, inserire un percorso completo (es. `D:\` o `C:\Test\`).

Successivamente:

- Inserire l’estensione da ricercare (es. `pdf`, `docx` o `xlsx`); se inserito `*`, vengono selezionte tutte le estensioni.

- Inserire il titolo (o parte di esso); se vuoto, restituisce tutti i file dell’estensione scelta.

I risultati verrano mostrati in elenco, completo di percorso, come segue:

```cmd
<path>\file_1.pdf
...
<path>\file_n.pdf
```

### Interruzione

Al termine verrà chiesto:

```cmd
Vuoi effettuare un'altra ricerca? [S/N]:
```

- Rispondere `S` per una nuova ricerca.

- Rispondere `N` (o altro tasto a scelta) per uscire.

È inoltre possibile interrompere l’esecuzione con `Ctrl+C` o chiudendo la finestra del terminale.

## Note

Questa è una prima versione dello script, sviluppata per favorire la semplicità del sistema.

Attenzione a non includere caratteri speciali nel percorso personalizzato.

Non è prevista validazione avanzata dell’input; valori errati possono causare malfunzionamenti.

Per segnalare bug o suggerire miglioramenti, utilizzare il sistema di Issues del repository GitHub.

## Licenza

Questo progetto è rilasciato sotto licenza MIT.

Per i dettagli, consultare il file LICENSE.md.
