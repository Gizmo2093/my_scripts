for ($t=1;$t -lt 255;$t++)
{
if (Test-Connection 192.168.1.$t -Count 1 -ErrorAction SilentlyContinue)
    {
    nslookup 192.168.1.$t
    }
}