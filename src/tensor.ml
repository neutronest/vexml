exception Empty
exception Not_matrix
exception Not_vector

module Tensor =
  struct
    type tensor =
      | Vector of float array
      | Matrix of float array array

    let get_shape mat =
      let row_a = Array.length mat in
      let col_a = Array.length (Array.get mat 0) in
      (row_a, col_a);;

    let dot mat_a mat_b =
      let (row_a, col_a) = get_shape mat_a in
      let (row_b, col_b) = get_shape mat_b in
      let mat_res = Array.make_matrix row_a col_b 0. in
      (* need to accelerate *)
      for i = 0 to row_a-1 do
        for j = 0 to row_b-1 do
          let mat_row_a = mat_a.(i).(j) in
          for k = 0 to col_b-1 do
            mat_c.(i).(k) <- mat_c.(i).(k) +. mat_row_a *. mat_b.(j).(k)
          done;
        done;
      done;
      mat_c;;

    let scalar w mat =
      Array.map (fun ar -> Array.map (fun x -> x *. w) ar) mat

    let row_of_matrix mat =
      Array.length m;;

    let col_of_matrix mat =
      Array.length m.(0);;

    let len_of_vector vec =
      Array.length m;;

    let get_of_matrix mat i j =
      mat.(i).(j);;

    let map_of_matrix f mat =
      match mat with
      | [|[||]|] -> [|[||]|]
      | mat ->
         let (row_mat, col_mat) = get_shape mat in
         let res_mat = Array.create row_mat [||] in
         for i = 0 to row_mat-1 do

         done;

end;;
