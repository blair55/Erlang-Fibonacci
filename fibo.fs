
let out i f = printfn "%d: %d" i f
let rec fibr a =
  match a with
  | (c, l, f, i) when i < f -> out i c; fibr(c + l, c, f, i + 1)
  | (c, _, f, i) when i >= f -> out i c
  
let fib f = fibr(0, 1, f, 0)