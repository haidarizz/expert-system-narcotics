(defrule Ask
    =>
    (printout t crlf "do you want to check the type of narcotics related to you? (Y/N)" crlf)
    (bind ?answer (read))
        (if (eq ?answer Y)
            then (printout t crlf "mention the symptoms" crlf)
        )
        (if (eq ?answer N)
            then (printout t crlf "then go out fo this expert system" crlf)
        )
)

(defrule morphine
    (narcotic_is morphine)
    =>
    (printout t "From the symptoms you mentioned, it is possible that you are addicted to morphine" crlf)
)

(defrule is_it_morphine
    (symptom awareness_decreasing)
    (symptom confusion)
    (symptom sweating)
    (symptom faint)
    (symptom heart_pounding)
    (symptom mood_swing)
    (symptom nervous)
    =>
    (assert (narcotic_is morphine))
)

(defrule heroin
    (narcotic_is heroin)
    =>
    (printout t "From the symptoms you mentioned, it is possible that you are addicted to heroin" crlf)
)

(defrule is_it_heroin
    (symptom slowed_pulse)
    (symptom decreased_blood_pressure)
    (symptom weakened_muscles)
    (symptom pupils_shrink)
    (symptom lost_confidence)
    (symptom sleep_often)
    (symptom speech_disorder)
    (symptom difficulty_defecating)
    =>
    (assert (narcotic_is heroin))
)

(defrule marijuana
    (narcotic_is marijuana)
    =>
    (printout t "From the symptoms you mentioned, it is possible that you are addicted to marijuana" crlf)
)

(defrule is_it_marijuana
    (symptom faster_pulse)
    (symptom faster_heart_rate)
    (symptom dry_throat)
    (symptom forgetful)
    (symptom aggressive)
    (symptom sleep_disorders)
    (symptom nervous)
    (symptom sweating)
    (symptom often_fantasize)
    =>
    (assert (narcotic_is marijuana))
)

(defrule cocaine
    (narcotic_is cocaine)
    =>
    (printout t "From the symptoms you mentioned, it is possible that you are addicted to cocaine" crlf)
)

(defrule is_it_cocaine
    (symptom overjoyed)
    (symptom nervous)
    (symptom lost_weight)
    (symptom skin_problems)
    (symptom breathing_problems)
    (symptom convulsions)
    (symptom emphysema)
    (symptom visual_disturbances)
    (symptom confusion)
    =>
    (assert (narcotic_is cocaine))
)

(defrule LSD
    (narcotic_is LSD)
    =>
    (printout t "From the symptoms you mentioned, it is possible that you are addicted to LSD" crlf)
)

(defrule is_it_LSD
    (symptom hallucination)
    (symptom paranoid)
    (symptom faster_heart_rate)
    (symptom increased_blood_pressure)
    (symptom pupils_dilated)
    (symptom depression)
    (symptom fever)
    =>
    (assert (narcotic_is LSD))
)

(defrule opium
    (narcotic_is opium)
    =>
    (printout t "From the symptoms you mentioned, it is possible that you are addicted to opium" crlf)
)

(defrule is_it_opium
    (symptom hyperactive)
    (symptom dizzy)
    (symptom increased_lust)
    (symptom skin_problems)
    (symptom mouth_problems)
    =>
    (assert (narcotic_is opium))
)