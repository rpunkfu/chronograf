from(bucket:"testdb")
  |> range(start: 2018-05-22T19:53:26Z)
  |> filter(fn: (r) => r["name"] == "disk0")
  |> group(by: ["_measurement"])
  |> map(fn: (r) => {_time: r._time, io_time: r._value})
  |> yield(name:"0")