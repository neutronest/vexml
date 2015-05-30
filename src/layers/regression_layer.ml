open Tensor;;


class regression_layer = object
  val len_sample
  val len_feature
  val data = Array.make len_sample (Array.make len_feature 0)
  method forward data is_training =
