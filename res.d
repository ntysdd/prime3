import std.stdio;
import std.conv;

void main(string[] args)
{
    long s = args[1].to!long;
    bool[] p = new bool[s + 1];

    foreach (ref x; p)
    {
        x = true;
    }

    p[0] = false;
    p[1] = false;

    for (long i = 2; i * i <= s; i++)
    {
        if (!p[i])
        {
            continue;
        }
        for (long j = i * i; j <= s; j += i)
        {
            p[j] = false;
        }
    }

    for (long k = 6; k <= s; k += 2)
    {
        long count = 0;
        for (long i = 1; i < k; i++)
        {
            if (p[i] && p[k - i])
            {
                count++;
            }
        }
        writefln("%s %s", k, count);
    }
}
