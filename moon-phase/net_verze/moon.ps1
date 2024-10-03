<#
.SYNOPSIS
	Prints the current moon phase
.DESCRIPTION
	This PowerShell script prints the current moon phase.
.EXAMPLE
	PS> ./moon
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	(Invoke-WebRequest http://wttr.in/Moon -userAgent "curl" -useBasicParsing).Content
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}

<#
online verze udela to ze sahne na urcitou url adresu, stahne
z ní nejakej obsah a zobrazi ho
taky by ho sam9zdrejme mohla ulozit do nejake promenne a stou pak provect
nejake porovnani napr. a nebo nejaky vypocet a apod.
v podstate nic neni nemozne
#>


