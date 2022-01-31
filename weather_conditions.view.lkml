view: weather_conditions {
  derived_table: {
    sql: SELECT * FROM `lookerdata.faa.bruce_mv`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: airport_name {
    type: string
    sql: ${TABLE}.airport_name ;;
  }

  dimension: weather_condition {
    type: string
    sql: ${TABLE}.weather_condition ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  set: detail {
    fields: [airport_name, weather_condition, total]
  }
}
