view: accidents {
  derived_table: {
    sql: SELECT * FROM `lookerdata.faa.accidents`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: investigation_type {
    type: string
    sql: ${TABLE}.investigation_type ;;
  }

  dimension: accident_number {
    type: string
    sql: ${TABLE}.accident_number ;;
  }

  dimension_group: event_date {
    type: time
    sql: ${TABLE}.event_date ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: airport_code {
    type: string
    sql: ${TABLE}.airport_code ;;
  }

  dimension: airport_name {
    type: string
    sql: ${TABLE}.airport_name ;;
  }

  dimension: injury_severity {
    type: string
    sql: ${TABLE}.injury_severity ;;
  }

  dimension: aircraft_damage {
    type: string
    sql: ${TABLE}.aircraft_damage ;;
  }

  dimension: aircraft_category {
    type: string
    sql: ${TABLE}.aircraft_category ;;
  }

  dimension: registration_number {
    type: string
    sql: ${TABLE}.registration_number ;;
  }

  dimension: make {
    type: string
    sql: ${TABLE}.make ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: amateur_built {
    type: string
    sql: ${TABLE}.amateur_built ;;
  }

  dimension: number_of_engines {
    type: string
    sql: ${TABLE}.number_of_engines ;;
  }

  dimension: engine_type {
    type: string
    sql: ${TABLE}.engine_type ;;
  }

  dimension: far_description {
    type: string
    sql: ${TABLE}.far_description ;;
  }

  dimension: schedule {
    type: string
    sql: ${TABLE}.schedule ;;
  }

  dimension: purpose_of_flight {
    type: string
    sql: ${TABLE}.purpose_of_flight ;;
  }

  dimension: air_carrier {
    type: string
    sql: ${TABLE}.air_carrier ;;
  }

  dimension: number_of_fatalities {
    type: string
    sql: ${TABLE}.number_of_fatalities ;;
  }

  dimension: number_of_serious_injuries {
    type: string
    sql: ${TABLE}.number_of_serious_injuries ;;
  }

  dimension: number_of_minor_injuries {
    type: string
    sql: ${TABLE}.number_of_minor_injuries ;;
  }

  dimension: number_of_uninjured {
    type: string
    sql: ${TABLE}.number_of_uninjured ;;
  }

  dimension: weather_condition {
    type: string
    sql: ${TABLE}.weather_condition ;;
  }

  dimension: broad_phase_of_flight {
    type: string
    sql: ${TABLE}.broad_phase_of_flight ;;
  }

  dimension: report_status {
    type: string
    sql: ${TABLE}.report_status ;;
  }

  dimension_group: publication_date {
    type: time
    sql: ${TABLE}.publication_date ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  set: detail {
    fields: [
      event_id,
      investigation_type,
      accident_number,
      event_date_time,
      location,
      country,
      latitude,
      longitude,
      airport_code,
      airport_name,
      injury_severity,
      aircraft_damage,
      aircraft_category,
      registration_number,
      make,
      model,
      amateur_built,
      number_of_engines,
      engine_type,
      far_description,
      schedule,
      purpose_of_flight,
      air_carrier,
      number_of_fatalities,
      number_of_serious_injuries,
      number_of_minor_injuries,
      number_of_uninjured,
      weather_condition,
      broad_phase_of_flight,
      report_status,
      publication_date_time,
      id
    ]
  }
}
