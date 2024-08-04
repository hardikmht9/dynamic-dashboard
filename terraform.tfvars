
dashboard_pages = [
  {
    name = "New Relic Terraform"
    widgets = [
      {
        type       = "billboard"
        title      = "Total Transactions"
        row        = 1
        column     = 1
        width      = 6
        height     = 3
        nrql_query = "FROM Transaction SELECT count(*) WHERE appName='mmt-blog'"
      },
      {
        type       = "bar"
        title      = "Average Duration Count"
        row        = 4
        column     = 1
        width      = 6
        height     = 3
        nrql_query = "FROM Transaction SELECT average(duration) WHERE appName='mmt-blog' FACET name LIMIT MAX"
      },
      {
        type       = "line"
        title      = "Average transaction duration and the request per minute, by application"
        row        = 4
        column     = 7
        width      = 6
        height     = 3
        nrql_query = "FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago"
      }
    ]
  }
]

