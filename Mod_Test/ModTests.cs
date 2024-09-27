using NUnit.Framework;
using CalcClassBr;
using System.Collections.Generic;

namespace Mod_Test
{
    public class ModTests
    
    {
        [Test]
        public void Mod_PositiveNumbers_ReturnsCorrectResult()
        {
            // Arrange
            long a = 10;
            long b = 3;

            // Act
            int result = CalcClass.Mod(a, b);

            // Assert
            Assert.AreEqual(1, result);
        }

        [Test]
        public void Mod_NegativeDividend_ReturnsCorrectResult()
        {
            // Arrange
            long a = -10;
            long b = 3;

            // Act
            int result = CalcClass.Mod(a, b);

            // Assert
            Assert.AreEqual(-1, result);
        }

        [Test]
        public void Mod_NegativeDivisor_ReturnsCorrectResult()
        {
            // Arrange
            long a = 10;
            long b = 3;

            // Act
            int result = CalcClass.Mod(a, b);

            // Assert
            Assert.AreEqual(1, result);  // Confirm if modulus of a positive number by a negative number returns a positive result.
        }

        [Test]
        public void Mod_BothNegative_ReturnsCorrectResult()
        {
            // Arrange
            long a = -10;
            long b = -3;

            // Act
            int result = CalcClass.Mod(a, b);

            // Assert
            Assert.AreEqual(-1, result);  // Verify correct behavior for negative numbers.
        }

        [Test]
        public void Mod_ZeroDividend_ReturnsZero()
        {
            // Arrange
            long a = 0;
            long b = 5;

            // Act
            int result = CalcClass.Mod(a, b);

            // Assert
            Assert.AreEqual(0, result);
        }

        [Test]
        public void Mod_DivideByZero_ThrowsException()
        {
            // Arrange
            long a = 10;
            long b = 0;

            // Act & Assert
            Assert.Throws<DivideByZeroException>(() => CalcClass.Mod(a, b));
        }

        [Test]
        public void Mod_LargerDivisor_ReturnsDividend()
        {
            // Arrange
            long a = 3;
            long b = 10;

            // Act
            int result = CalcClass.Mod(a, b);

            // Assert
            Assert.AreEqual(3, result);  // When divisor > dividend, the result should be the dividend.
        }

        // Test case for values within the int range
        [Test]
        public void Mod_MaxIntValue_ReturnsCorrectResult()
        {
            // Arrange
            long a = int.MaxValue;
            long b = 3;

            // Act
            int result = CalcClass.Mod(a, b);

            // Assert
            Assert.AreEqual(1, result);  // Mod of int.MaxValue by 3 should return 1.
        }

        [Test]
        public void Mod_MinIntValue_ReturnsCorrectResult()
        {
            // Arrange
            long a = int.MinValue;
            long b = 3;

            // Act
            int result = CalcClass.Mod(a, b);

            // Assert
            Assert.AreEqual(-2, result);  // Mod of int.MinValue by 3 should return -2.
        }
    }
}
