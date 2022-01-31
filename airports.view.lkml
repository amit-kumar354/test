view: airports {
  derived_table: {
    sql: SELECT * FROM `lookerdata.faa.airports`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: site_number {
    type: string
    sql: ${TABLE}.site_number ;;
  }

  dimension: fac_type {
    type: string
    sql: ${TABLE}.fac_type ;;
  }

  dimension: fac_use {
    type: string
    sql: ${TABLE}.fac_use ;;
  }

  dimension: faa_region {
    type: string
    sql: ${TABLE}.faa_region ;;
  }

  dimension: faa_dist {
    type: string
    sql: ${TABLE}.faa_dist ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
  }

  dimension: own_type {
    type: string
    sql: ${TABLE}.own_type ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: elevation {
    type: number
    sql: ${TABLE}.elevation ;;
  }

  dimension: aero_cht {
    type: string
    sql: ${TABLE}.aero_cht ;;
  }

  dimension: cbd_dist {
    type: number
    sql: ${TABLE}.cbd_dist ;;
  }

  dimension: cbd_dir {
    type: string
    sql: ${TABLE}.cbd_dir ;;
  }

  dimension: act_date {
    type: string
    sql: ${TABLE}.act_date ;;
  }

  dimension: cert {
    type: string
    sql: ${TABLE}.cert ;;
  }

  dimension: fed_agree {
    type: string
    sql: ${TABLE}.fed_agree ;;
  }

  dimension: cust_intl {
    type: string
    sql: ${TABLE}.cust_intl ;;
  }

  dimension: c_ldg_rts {
    type: string
    sql: ${TABLE}.c_ldg_rts ;;
  }

  dimension: joint_use {
    type: string
    sql: ${TABLE}.joint_use ;;
  }

  dimension: mil_rts {
    type: string
    sql: ${TABLE}.mil_rts ;;
  }

  dimension: cntl_twr {
    type: string
    sql: ${TABLE}.cntl_twr ;;
  }

  dimension: major {
    type: string
    sql: ${TABLE}.major ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  set: detail {
    fields: [
      id,
      code,
      site_number,
      fac_type,
      fac_use,
      faa_region,
      faa_dist,
      city,
      county,
      state,
      full_name,
      own_type,
      longitude,
      latitude,
      elevation,
      aero_cht,
      cbd_dist,
      cbd_dir,
      act_date,
      cert,
      fed_agree,
      cust_intl,
      c_ldg_rts,
      joint_use,
      mil_rts,
      cntl_twr,
      major,
      location
    ]
  }
}
