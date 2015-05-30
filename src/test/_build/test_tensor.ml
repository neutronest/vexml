open OUnit
open Tensor

let test_get_shape _ = assert_equal (3, 5) (get_shape (Array.make_matrix 3 5 0.))

let suite = "Tensor testing" >::: [
      "test_get_shape" >:: test_get_shape;
    ];;

let _ =
  run_test_tt_main suite
