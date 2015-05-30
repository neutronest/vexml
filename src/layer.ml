# require "lacaml";;
open Lacaml.D;;

type layer = {

    weights: float matrix;
    blas: vector;
    f: activation;
    fx: preprocessing;
  }


type activation = sigmoid
  | regression
  | softmax
  | relu;;


let forward layer x =
  let x = layer.x in
  let y = layer.y in
  let f = layer.f in
  let fx = layer.fx in
  let w = layer.weights in
  let b = layer.bias in
  let output = f (w *. fx(x) +. b) in
  output;;
