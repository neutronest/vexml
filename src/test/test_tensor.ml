open OUnit
open Tensor

let test_get_shape _ = assert_equal (3, 5) (get_shape (Array.make_matrix 3 5 0.));;

let test_get_row _ = assert_equal 3 (get_row (Array.make_matrix 3 5 0. ));;

let test_get_col _ = assert_equal 5 (get_col (Array.make_matrix 3 5 0.));;

let test_dot_mat _ = assert_equal [|[| 29.; 41. |];[| 59.; 120. |] |] (dot_mat [| [|1.;2.;5.|];[|9.;3.;2.|]|] [|[|5.;10.|]; [|2.;8.|];[|4.;3.|]|]);;

let test_scalar_mat _ = assert_equal [|[|1.2;1.2|]; [|2.4;2.4|]|] (scalar_mat 2. [| [|0.6;0.6|]; [|1.2;1.2|]|]);;

let test_map_of_mat _ = assert_equal [|[|1.2;1.2|]; [|2.4;2.4|]|] ( map_of_mat (fun x -> x *. 2.) [|[|0.6;0.6|]; [|1.2;1.2|]|] );;  
  
let suite = "Tensor testing" >::: [
      "test_get_shape" >:: test_get_shape;
      "test_get_row" >:: test_get_row;
      "test_get_col" >:: test_get_col;
      "test_dot_mat" >:: test_dot_mat;
      "test_scalar_mat" >:: test_scalar_mat;
      "test_map_of_mat" >:: test_map_of_mat;
    ];;

let _ =
  run_test_tt_main suite
