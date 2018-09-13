using System;

namespace D.Format.Test
{
    public class MyClass
    {
        public MyClass()
        {
            // Params on next line

            Function1(
                1, 2, new[] { 3 });

            // Params on separate lines

            Function1(
                1,
                2,
                new[] { 3 });

            // Array param on multiple lines

            Function1(
                1,
                2,
                new[]
                {
                    3
                });

            var arr = new[]
            {
                1,
                2,
            };

            // Callback on same line

            Function2((x, y) => x + y, 12);

            // Callback start on same line, body on next line

            var x = (x) =>
            {
                return 1;
            };

            Function2((x, y) =>
            {
                return x + y;
            });

            // Callback start on next lines

            Function2(
                (x, y) =>
                {
                    return x + y;
                },
                12);

            // Function applied to function

            Function3(Function3(
                14,
                asdlfkasd));
        }

        void Function1(int a, int b, int[] c)
        {
        }

        void Function2(Func<int, int, int> callback, int param)
        {

        }

        int Function3(int param)
        {
            return param;
        }
    }
}
