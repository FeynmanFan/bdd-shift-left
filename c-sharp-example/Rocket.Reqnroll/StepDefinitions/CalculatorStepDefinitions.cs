using System;
using Reqnroll;

namespace Rocket.Reqnroll.StepDefinitions
{
    [Binding]
    public class CalculatorStepDefinitions
    {
        [Given("the first number is {int}")]
        public void GivenTheFirstNumberIs(int number)
        {
            throw new PendingStepException();
        }

        [Given("the second number is {int}")]
        public void GivenTheSecondNumberIs(int p0)
        {
            throw new PendingStepException();
        }

        [When("the two numbers are added")]
        public void WhenTheTwoNumbersAreAdded()
        {
            throw new PendingStepException();
        }

        [Then("the result should be {int}")]
        public void ThenTheResultShouldBe(int p0)
        {
            throw new PendingStepException();
        }
    }
}
