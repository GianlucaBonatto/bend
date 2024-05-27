def Insertion_sort(xs):
  match xs:
    case List/Nil: 
      return List/Nil
    case List/Cons:
      return Insertion_sort.insert(xs.head, Insertion_sort(xs.tail))

def Insertion_sort.insert(v, xs):
  match xs:
    case List/Nil:
      return List/Cons(v, List/Nil)
    case List/Cons:
      return Insert_aux(v > xs.head, v, xs.head, xs.tail)

def Insert_aux(n, v, x, xs):
  if n == 0:
    return List/Cons(v, List/Cons(x, xs))
  else:
    return List/Cons(x, Insertion_sort.insert(v, xs))

def Rnd(n):
  if n == 0:
    return List/Nil
  else:
    return List/Cons(Random(10000 - n), Rnd(n - 1))

def Random(n):
  if n == 0:
    return 0
  else:
    return (Random(n - 1) * 16 + 101387) % 429453

def Sum(xs):
  match xs:
    case List/Nil:
      return 0
    case List/Cons:
      return xs.head + Sum(xs.tail)

def main():
  return Sum(Insertion_sort(Rnd(100)))