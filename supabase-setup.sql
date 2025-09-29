-- Schema per la tabella schedules
CREATE TABLE schedules (
    id BIGSERIAL PRIMARY KEY,
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
    week_key TEXT NOT NULL,
    data JSONB NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE(user_id, week_key)
);

-- Abilita Row Level Security
ALTER TABLE schedules ENABLE ROW LEVEL SECURITY;

-- Policy per permettere agli utenti di vedere solo i propri dati
CREATE POLICY "Users can only see their own schedules" ON schedules
    FOR ALL USING (auth.uid() = user_id);

-- Policy per permettere agli utenti di inserire i propri dati
CREATE POLICY "Users can insert their own schedules" ON schedules
    FOR INSERT WITH CHECK (auth.uid() = user_id);

-- Policy per permettere agli utenti di aggiornare i propri dati
CREATE POLICY "Users can update their own schedules" ON schedules
    FOR UPDATE USING (auth.uid() = user_id);

-- Policy per permettere agli utenti di eliminare i propri dati
CREATE POLICY "Users can delete their own schedules" ON schedules
    FOR DELETE USING (auth.uid() = user_id);

-- Indice per migliorare le performance
CREATE INDEX idx_schedules_user_week ON schedules(user_id, week_key);
