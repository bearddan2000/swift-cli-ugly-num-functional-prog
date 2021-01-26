//swift 5.1.5
/*This function divides a by greatest
 divisible power of b*/
 func maxDivide(_ a:Int, _ b:Int) -> Int
 {
     if a%b != 0 {return a}
     return maxDivide(a/b, b)
 }

 /* Function to check if a number
 is ugly or not */
 func isUgly(_ no:Int, _ ct:Int) -> Int
 {
     if ct == 2 {return isUgly(maxDivide(no, 5), ct+1)}
     else if ct == 1 {return isUgly(maxDivide(no, 3), ct+1)}
     else if ct == 0 {return isUgly(maxDivide(no, 2), ct+1)}
     return (no == 1 ? 1 : 0);
 }

 /* Function to get the nth ugly
 number*/
 func getNthUglyNo(_ n:Int, _ i:Int, _ count:Int) -> Int
 {

    /*Check for all integers untill ugly count becomes n*/
    if (n < count) {return i-1;}
    if (isUgly(i, 0) == 1) {return getNthUglyNo(n, i+1, count+1);}
    return getNthUglyNo(n, i+1, count);
 }

func main() {
  let N = 10
  let output = getNthUglyNo(N, 1, 1);

  print("[INPUT] \(N)");
  print("[OUTPUT] \(output)");
}

main()
