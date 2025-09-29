# 🚀 Guida al Deployment

## Opzione 1: GitHub Pages (Hosting Gratuito)

### Passo 1: Creare repository GitHub
1. Vai su [GitHub.com](https://github.com) e crea un nuovo repository
2. Clona questo codice nel repository
3. Esegui questi comandi:

```bash
git add .
git commit -m "First commit"
git branch -M main
git remote add origin https://github.com/TUOUSERNAME/TUOREPOSITORY.git
git push -u origin main
```

### Passo 2: Attivare GitHub Pages
1. Vai nelle Settings del repository
2. Scorri fino a "Pages"
3. Seleziona "GitHub Actions" come source
4. Il sito sarà disponibile su: `https://TUOUSERNAME.github.io/TUOREPOSITORY`

## Opzione 2: Database Online con Supabase

### Passo 1: Creare account Supabase
1. Vai su [supabase.com](https://supabase.com)
2. Crea un account gratuito
3. Crea un nuovo progetto

### Passo 2: Configurare Database
1. Vai in "SQL Editor" su Supabase
2. Copia e incolla il contenuto di `supabase-setup.sql`
3. Esegui la query per creare la tabella

### Passo 3: Configurare l'applicazione
1. Vai su "Settings" > "API" nel tuo progetto Supabase
2. Copia "Project URL" e "anon public" key
3. Nel file `index.html`, sostituisci:
   ```javascript
   const SUPABASE_URL = 'LA-TUA-PROJECT-URL';
   const SUPABASE_ANON_KEY = 'LA-TUA-ANON-KEY';
   ```

### Passo 4: Configurare Authentication
1. Vai su "Authentication" > "Settings" su Supabase
2. Disabilita "Enable email confirmations" per test (opzionale)
3. Configura l'email template se necessario

## Alternative Hosting Gratuito

### Netlify
1. Vai su [netlify.com](https://netlify.com)
2. Collega il tuo repository GitHub
3. Deploy automatico ad ogni push

### Vercel
1. Vai su [vercel.com](https://vercel.com)
2. Importa il repository GitHub
3. Deploy automatico

### Firebase Hosting
1. Installa Firebase CLI: `npm install -g firebase-tools`
2. `firebase login`
3. `firebase init hosting`
4. `firebase deploy`

## Funzionalità Disponibili

✅ **Storage Locale**: I dati vengono salvati nel browser
✅ **Database Online**: Con Supabase, i dati sono sincronizzati online
✅ **Multi-utente**: Ogni utente ha i suoi dati privati
✅ **Backup automatico**: Salvataggio sia locale che online
✅ **Hosting gratuito**: Su GitHub Pages, Netlify, o Vercel
✅ **Esportazione CSV**: Per backup esterni

## Limiti Gratuiti

### GitHub Pages
- ✅ Hosting illimitato
- ✅ HTTPS automatico
- ✅ Custom domain supportato
- ⚠️ Solo siti statici

### Supabase Free Tier
- ✅ 50MB database
- ✅ 500MB bandwidth/mese
- ✅ 50,000 monthly active users
- ✅ Autenticazione inclusa

### Netlify Free
- ✅ 100GB bandwidth/mese
- ✅ 300 build minutes/mese
- ✅ HTTPS automatico

## Supporto

Se hai problemi:
1. Controlla la console del browser per errori
2. Verifica le credenziali Supabase
3. Assicurati che GitHub Pages sia attivo
4. Controlla che il database sia configurato correttamente
