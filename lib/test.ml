let test str rst =
  assert (Helper.run_str str = rst)
;;

let test_exn str expected =
  try (ignore (Helper.run_str str); assert false)
  with catched -> assert (catched = expected)
;;