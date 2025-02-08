import std.stdio;
import std.conv;
import std.math;

void main(string[] args)
{
    long s = args[1].to!long;

    for (long i = 6; i <= s; i += 2)
    {
        double t = 0;
        for (long j = 2; j <= i - 2; j++)
        {
            t += 1 / log(cast(double)j) / log(cast(double)(i - j));
        }
        t *= 2 * log(cast(double)2);
        writefln("%s %s", i, t);
    }
}
