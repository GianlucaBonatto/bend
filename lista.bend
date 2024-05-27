# Função para obter o comprimento de uma lista
def length(xs):
  match xs:
    case List/Nil:
      return 0
    case List/Cons:
      return 1 + length(xs.tail)

# Função para inverter uma lista
def reverse(xs):
  match xs:
    case List/Nil:
      return List/Nil
    case List/Cons:
      return append(reverse(xs.tail), List/Cons(xs.head, List/Nil))

# Função para concatenar duas listas
def append(xs, ys):
  match xs:
    case List/Nil:
      return ys
    case List/Cons:
      return List/Cons(xs.head, append(xs.tail, ys))

def main() : 
  return (reverse([0,1,2,3,4,5]))
