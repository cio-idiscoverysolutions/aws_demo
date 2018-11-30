view: random_calls {
  sql_table_name: dbo.RandomCalls ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: consent_before_bio {
    type: string
    sql: ${TABLE}.ConsentBeforeBio ;;
  }

  dimension: consent_without_bio {
    type: string
    sql: ${TABLE}.ConsentWithoutBio ;;
  }

  dimension: consentafterbio {
    type: string
    sql: ${TABLE}.consentafterbio ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Date ;;
  }

  dimension: fullname {
    type: string
    sql: ${TABLE}.fullname ;;
  }

  dimension_group: ids_date_loaded {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.IDS_DateLoaded ;;
  }

  dimension: ids_dlvry_id {
    type: number
    sql: ${TABLE}.IDS_DLVRY_ID ;;
  }

  dimension: ids_source_file {
    type: string
    sql: ${TABLE}.IDS_SourceFile ;;
  }

  dimension: ids_source_id {
    type: number
    sql: ${TABLE}.IDS_SourceID ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lat2 {
    type: number
    sql: ${TABLE}.lat2 ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }

  dimension: lon2 {
    type: number
    sql: ${TABLE}.lon2 ;;
  }

  dimension: no_bio {
    type: string
    sql: ${TABLE}.NoBio ;;
  }

  dimension: no_consent {
    type: string
    sql: ${TABLE}.NoConsent ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }

  dimension: phone1 {
    type: string
    sql: ${TABLE}.Phone1 ;;
  }

  dimension: phone1_donotuse {
    type: string
    sql: ${TABLE}.Phone1_Donotuse ;;
  }

  dimension: phone2 {
    type: string
    sql: ${TABLE}.Phone2 ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.postcode ;;
  }

  dimension: st {
    type: string
    sql: ${TABLE}.st ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  measure: count {
    type: count
    drill_fields: [fullname]
  }
}
