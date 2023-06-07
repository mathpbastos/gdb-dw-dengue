CREATE TABLE IF NOT EXISTS `sinan_dengue`.FATO_HOSPITALIZACAO (
    qtd_hospitalizacao INTEGER NOT NULL,
    id_unidade INTEGER NOT NULL,
    id_sintomas INTEGER NOT NULL,
    id_tempo INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS `sinan_dengue`.DIM_SINTOMAS_MONITORADOS(
    id_sintomas INTEGER NOT NULL,
    febre CHAR(1) NOT NULL,
    mialgia CHAR(1) NOT NULL,
    cefaleia CHAR(1) NOT NULL,
    enxatema CHAR(1) NOT NULL,
    vomito CHAR(1) NOT NULL,
    nausea CHAR(1) NOT NULL
);

CREATE TABLE IF NOT EXISTS `sinan_dengue`.DIM_TEMPO(
    id_tempo INTEGER NOT NULL,
    ano INTEGER NOT NULL,
    mes INTEGER NOT NULL,
    trimestre INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS `sinan_dengue`.DIM_HOSPITAL(
    id_unidade INTEGER NOT NULL,
    id_municipio CHAR(6) NOT NULL,
    id_regiona CHAR(6) NOT NULL,
    campo CHAR(2) NOT NULL
);