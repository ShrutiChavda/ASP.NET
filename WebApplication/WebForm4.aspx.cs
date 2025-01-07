using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.IO;

namespace WebApplication
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblDateTime.Text = "Current Date and Time: " + DateTime.Now.ToString();
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                double num1 = double.Parse(txtNum1.Text);
                double num2 = double.Parse(txtNum2.Text);
                string op = ddlOperator.SelectedValue;
                double result = 0;

                switch (op)
                {
                    case "+":
                        result = num1 + num2;
                        break;
                    case "-":
                        result = num1 - num2;
                        break;
                    case "*":
                        result = num1 * num2;
                        break;
                    case "/":
                        result = num1 / num2;
                        break;
                }

                lblCalculatorResult.Text = "Result: " + result;
            }
            catch
            {
                lblCalculatorResult.Text = "Error in calculation.";
            }
        }

        protected void btnConvertKmToMiles_Click(object sender, EventArgs e)
        {
            try
            {
                double kilometers = double.Parse(txtKilometers.Text);
                double miles = kilometers * 0.621371;
                lblMiles.Text = "Miles: " + miles;
            }
            catch
            {
                lblMiles.Text = "Invalid input.";
            }
        }

        protected void btnConvertToFahrenheit_Click(object sender, EventArgs e)
        {
            try
            {
                double celsius = double.Parse(txtCelsius.Text);
                double fahrenheit = (celsius * 9 / 5) + 32;
                lblFahrenheit.Text = "Fahrenheit: " + fahrenheit;
            }
            catch
            {
                lblFahrenheit.Text = "Invalid input.";
            }
        }

        protected void btnGenerateRandom_Click(object sender, EventArgs e)
        {
            Random random = new Random();
            lblRandomNumber.Text = "Random Number: " + random.Next(1, 101);
        }

        protected void btnReverseString_Click(object sender, EventArgs e)
        {
            string input = txtReverseString.Text;
            char[] charArray = input.ToCharArray();
            Array.Reverse(charArray);
            lblReversedString.Text = "Reversed: " + new string(charArray);
        }

        protected void btnCountVowels_Click(object sender, EventArgs e)
        {
            string input = txtVowelString.Text.ToLower();
            int count = Regex.Matches(input, "[aeiou]").Count;
            lblVowelCount.Text = "Vowel Count: " + count;
        }

        protected void btnCheckPassword_Click(object sender, EventArgs e)
        {
            string password = txtPassword.Text;
            string strength = "Weak";

            if (password.Length >= 8 && Regex.IsMatch(password, "[A-Z]") && Regex.IsMatch(password, "[0-9]") && Regex.IsMatch(password, @"[!@#$%^&*]"))
            {
                strength = "Strong";
            }
            else if (password.Length >= 6)
            {
                strength = "Medium";
            }

            lblPasswordStrength.Text = "Password Strength: " + strength;
        }

        protected void btnCheckPalindrome_Click(object sender, EventArgs e)
        {
            string input = txtPalindrome.Text;
            string reversed = new string(input.Reverse().ToArray());
            if (input.Equals(reversed, StringComparison.OrdinalIgnoreCase))
            {
                lblPalindromeResult.Text = "Palindrome: Yes";
            }
            else
            {
                lblPalindromeResult.Text = "Palindrome: No";
            }
        }

        protected void btnCheckPrime_Click(object sender, EventArgs e)
        {
            try
            {
                int number = int.Parse(txtPrimeNumber.Text);
                bool isPrime = number > 1;

                for (int i = 2; i <= Math.Sqrt(number); i++)
                {
                    if (number % i == 0)
                    {
                        isPrime = false;
                        break;
                    }
                }

                lblPrimeResult.Text = isPrime ? "Prime: Yes" : "Prime: No";
            }
            catch
            {
                lblPrimeResult.Text = "Invalid input.";
            }
        }
    }
}