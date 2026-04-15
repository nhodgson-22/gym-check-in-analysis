SELECT
  CONCAT('M', CAST(ROW_NUMBER() OVER (ORDER BY `Access Card Number`) AS STRING)) AS anonymized_member_id,
  TIMESTAMP(
    DATETIME(
      Date,
      SAFE.PARSE_TIME('%I:%M %p', TRIM(`Time in`))
    )
  ) AS check_in_time,
  EXTRACT(
    HOUR FROM TIMESTAMP(
      DATETIME(
        Date,
        SAFE.PARSE_TIME('%I:%M %p', TRIM(`Time in`))
      )
    )
  ) AS hour,
  FORMAT_TIMESTAMP(
    '%A',
    TIMESTAMP(
      DATETIME(
        Date,
        SAFE.PARSE_TIME('%I:%M %p', TRIM(`Time in`))
      )
    )
  ) AS day_of_week,
  Date AS check_in_date
FROM `inbound-lattice-487001-i3.GitHub_project_2.check_ins_12_months`
WHERE
  SAFE.PARSE_TIME('%I:%M %p', TRIM(`Time in`)) IS NOT NULL
  AND date >= DATE_SUB(CURRENT_DATE(), INTERVAL 12 MONTH)
