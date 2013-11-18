// Calc.scala
object Calc{
	def main(args: Array[String]) = {
		val two = Calc.add(1,1)
		val one = Calc.sub(2,1)
		val six = Calc.mul(3,2)
		val five = Calc.div(10,2)
	}

	def add(num1 : Int, num2 : Int) : Int = num1 + num2
	def sub(num1 : Int, num2 : Int) : int = num1 - num2
	def mul(num1 : Int, num2 : Int) = num1 * num2
	def div(num1 : Float, num2 : Float) = {
		import java.lang.IllegalArgumentException
		if(num2 == 0)
			new IllegalArgumentException("devide by zero")
		else
			num1 / num2
	}
}
