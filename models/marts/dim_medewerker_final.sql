SELECT 
    dim_medewerker_final.*, 
    int_medewerker_dienstjaren.dienstjaren, 
    int_medewerker_werkstatus.werkstatus,
    int_medewerker_leeftijd.leeftijd, 
    int_medewerker_bijgewerkt.bijgewerkt_op
FROM {{ ref('stg_medewerker') }} AS dim_medewerker_final 
LEFT JOIN {{ ref('int_medewerker_dienstjaren') }}
    ON dim_medewerker_final.medewerkerid = int_medewerker_dienstjaren.medewerkerid
LEFT JOIN {{ ref('int_medewerker_werkstatus') }}
    ON dim_medewerker_final.medewerkerid = int_medewerker_werkstatus.medewerkerid 
LEFT JOIN {{ ref('int_medewerker_leeftijd') }}
    ON dim_medewerker_final.medewerkerid = int_medewerker_leeftijd.medewerkerid
LEFT JOIN {{ ref('int_medewerker_bijgewerkt') }}
    ON dim_medewerker_final.medewerkerid = int_medewerker_bijgewerkt.medewerkerid