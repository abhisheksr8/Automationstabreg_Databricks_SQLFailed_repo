WITH qa_failure_seed AS (

  SELECT * 
  
  FROM {{ ref('qa_failure_seed')}}

),

qa_failure_data AS (

  SELECT *
  
  FROM qa_failure_seed

),

qa_failure_fields AS (

  {#Selects specific fields from quality assurance failure data for further review.#}
  SELECT 
    a AS a,
    b AS b
  
  FROM qa_failure_data AS in0

)

SELECT *

FROM qa_failure_fields
