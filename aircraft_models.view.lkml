view: aircraft_models {
  derived_table: {
    sql: SELECT * FROM `lookerdata.faa.aircraft_models`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: aircraft_model_code {
    type: string
    sql: ${TABLE}.aircraft_model_code ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: aircraft_type_id {
    type: number
    sql: ${TABLE}.aircraft_type_id ;;
  }

  dimension: aircraft_engine_type_id {
    type: number
    sql: ${TABLE}.aircraft_engine_type_id ;;
  }

  dimension: aircraft_category_id {
    type: number
    sql: ${TABLE}.aircraft_category_id ;;
  }

  dimension: amateur {
    type: number
    sql: ${TABLE}.amateur ;;
  }

  dimension: engines {
    type: number
    sql: ${TABLE}.engines ;;
  }

  dimension: seats {
    type: number
    sql: ${TABLE}.seats ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: speed {
    type: number
    sql: ${TABLE}.speed ;;
  }

  set: detail {
    fields: [
      aircraft_model_code,
      manufacturer,
      model,
      aircraft_type_id,
      aircraft_engine_type_id,
      aircraft_category_id,
      amateur,
      engines,
      seats,
      weight,
      speed
    ]
  }
}
