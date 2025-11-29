# 🔍 Minecraft Account Analyzer (PowerShell)

Questo script PowerShell permette di analizzare i file `usernamecache.json` e `usercache.json` presenti nella cartella `.minecraft` per visualizzare eventuali altri account Minecraft utilizzati nel client.

Questo script è stato realizzato dal server discord SS LEARN IT (https://discord.gg/UET6TdxFUk).

## 🔍 Funzionalità

- Controlla se esiste la cartella `.minecraft` nel percorso predefinito `%appdata%`.
- Legge il contenuto di `usernamecache.json` (se esistente) ed estrae i nomi utente presenti.
- Legge il contenuto di `usercache.json` (se esistente) ed estrae i nomi utente registrati.
- Mostra a schermo una lista di account trovati nei rispettivi file.

# 📂 File analizzati

- `usernamecache.json` – contiene la cronologia dei nomi utente utilizzati.
- `usercache.json` – contiene gli account associati a UUID e nomi.

## ▶️ Utilizzo

1. Apri PowerShell (amministratore).
2. Copia e incolla lo script nel terminale oppure salvalo in un file, ad esempio `accaunt-analyzer.ps1`.
3. Esegui lo script:
`.\accaunt-analyzer.ps1`

Oppure puoi semplicemente eseguire lo script tramite un comando senza scaricare il file:

1. Apri PowerShell (amministratore).
2. `iex (iwr -useb "https://raw.githubusercontent.com/Bombamadarona/Minecraft-Account-Analyzer/refs/heads/main/accaunt-analyzer.ps1")`

## 📎 Note aggiuntive

- Lo script non modifica alcun file, esegue solo una lettura.

- Utile per effettuare controlli alts.
