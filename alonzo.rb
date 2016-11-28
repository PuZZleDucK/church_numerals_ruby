
puts ":: Church Numerals, Turing Machines & the Lambda Calculus λ ::"

puts ""
gets

puts ":: Turing Machines"
puts "   3 (simple?) rules"
puts "     1. Read/Write on potentialy infinate memory"
puts "     2. Move ahead one memory block"
puts "     3. Conditional jump (jz,jnz)"

puts ""
gets

puts ":: Lambda Calculus"
puts "   3 (simple?) rules"
puts "     1. I - Identity"
puts "     2. S - Selection"
puts "     3. K - Komplex kinda recursion"

puts ""
gets

puts ":: Turing Machines & Lambda Calculus λ"
puts "   Wait a minute, I see a pattern... but no obvious corelation"
puts "     - I  <----- Read/Write on potentialy infinate memory -\\"
puts "     - S  <----- Conditional jump (jz,jnz) ----------------\\|"
puts "     - K  <-- --> Move ahead one memory block <<<-----------/"
puts "     - ^--------------------------------------------------/"
puts "   ... other than, it all hinges on K"

puts ""
gets

puts ":: Church Numerals & the Peano Axioms"
puts "   allow us to translate Lanbda calculus or Church Numerals into set theory/machine code"
puts "   -The first axiom asserts the existence of at least one member of the set of natural numbers"
puts "   -Next four are general statements about equality (reflexive, symetric, transitive, closed)"
puts "   -Next three axioms are expressing the fundamental properties of the successor operation (still numbers, injection eq-on-succ, no-0-s)"
puts "   -The final axiom is a second order statement of the principle of mathematical induction over the natural numbers"


puts ""
gets

puts "   empty list: #{[]}, lets call that zero"
puts "   If we define putting a value in a list as representing incrementing then"
puts "   a list with our new zero in it: #{[[]]}, is equivilent to 1"
puts "       [].empty? is #{[].empty?}"
puts "       [[]].empty? is #{[[]].empty?}"

puts ""
gets

puts ":: Now we're in a position to define zero"
puts "   given N, if N is empty then it is ZERO, otherwise it must be a successor of zero"
def is_zero(n)
  n.empty?
end
puts "def is_zero(n)"
puts "  n.empty?"
puts "end"
puts "   is_zero([]) #{is_zero([])}"
puts "   is_zero([[]]) #{is_zero([[]])}"

puts ""
gets

puts ":: ...but what about the infinate number of integers whos value is not zero"
puts "   For them we'll need a successor function"
puts "   succ(0) is 1 or succ([]) is [[]]"
puts "   succ(1) is 2 or succ([[]]) is [[[]]] ... pred is just the reverse of succ"
def succ(n)
  return [n]
end
def pred(n)
  return n.first
end
puts "def succ(n)"
puts "  return [n]"
puts "end"
puts "def pred(n)"
puts "  return n.first"
puts "end"
puts "   succ([]) = #{succ([])}"
puts "   succ([[]]) = #{succ([[]])}"
puts "   pred([[]]) = #{pred([[]])}"

puts ""
gets

puts ":: So now we can count, an by natural rules of equivelence we get equals for free"
puts "   [[[]]] == succ([[]]) is #{[[[]]] == succ([[]])}"
puts ""
puts "   ... but what about adding numbers together"
puts "   This can be accomplished whith what we already have, pred(), succ() and is_zero()"
puts "   The simplest case is adding zero to any number, just return that number"
puts "   ... now that we have a base case: 'To Recursion!'"
puts "   We can simply take the successor of the first number and add it to the predecessor of the second number"
puts "   In basic math terms we take 2+4 and translate it into (2+1)+(4-1) = 3+3"
puts "   If we keep going eventually we'll end up with something + 0 and we can just return something"

puts ""
gets

def add(n, m)
  if is_zero(m)
    n
  else
    add(succ(n), pred(m))
  end
end
puts "def add(n, m)"
puts "  if m == 0"
puts "    n"
puts "  else"
puts "    add(succ(n), pred(m))"
puts "  end"
puts "end"
puts "   add([[]], [[]]) is #{add([[]], [[]])}"
puts "   add([[[]]], [[[[[]]]]]) is #{add([[[]]], [[[[[]]]]])}"
puts ""

puts ""
gets


