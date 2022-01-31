view: carriers {
  derived_table: {
    sql: SELECT * FROM `lookerdata.faa.carriers`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nickname {
    type: string
    sql: ${TABLE}.nickname ;;
  }

  set: detail {
    fields: [code, name, nickname]
  }
}
