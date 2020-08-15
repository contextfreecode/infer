let remove_large l = List.filter (fun s -> Float.(s#area <= 100.)) l;;
(* val remove_large : (< area : float; .. > as 'a) list -> 'a list = <fun> *)

type square = < area : float; width : int >;;
let square w = object
  method area = Float.of_int (w * w)
  method width = w
end
;;
let squares : < area : float; width : int > list = [square 5; square 15; square 10];;

remove_large squares;;

let remove_large (l: < area : float > list) =
List.filter (fun s -> Float.(s#area <= 100.)) l
;;

remove_large (squares :> < area : float > list );;
