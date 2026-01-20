# The name of this view in Looker is "Troubleshootinglookerstudio"
view: troubleshootinglookerstudio {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lookerstudio_dataset.troubleshootinglookerstudio` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dimension1" in Explore.

  dimension: dimension1 {
    type: string
    sql: ${TABLE}.dimension1 ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: dimension2 {
    hidden: yes
    sql: ${TABLE}.dimension2 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}

# The name of this view in Looker is "Troubleshootinglookerstudio Dimension2"
view: troubleshootinglookerstudio__dimension2 {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Troubleshootinglookerstudio Dimension2" in Explore.

  dimension: troubleshootinglookerstudio__dimension2 {
    type: string
    sql: troubleshootinglookerstudio__dimension2 ;;
  }
}
