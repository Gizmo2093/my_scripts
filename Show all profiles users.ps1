gci -force "PCs Name" -ErrorAction SilentlyContinue | ? { $_ -is [io.directoryinfo] } | % {
$len = 0
gci -recurse -force $_.fullname -ErrorAction SilentlyContinue | % { $len += $_.length }
$_.fullname, '{0:N2} GB' -f ($len / 1Gb)
$sum = $sum + $len
}
“Общий размер профилей”,'{0:N2} GB' -f ($sum / 1Gb)

