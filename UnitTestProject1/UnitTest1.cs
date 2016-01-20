using System;
//using Microsoft.VisualStudio.TestTools.UnitTesting;
using NUnit.Framework;
using CI_Test_Library;

namespace UnitTestProject1
{
    [TestFixture]
    public class UnitTest1
    {
        [Test]
        public void Test_GetText()
        {
            Assert.AreEqual("Hello World!", Class1.GetText());
        }
    }
}
