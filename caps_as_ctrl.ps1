# 00,00,00,00  -- header version (always 00000000)
# 00,00,00,00  -- header flags (always 00000000)
# 02,00,00,00  -- number of entries (including terminating NULL)
# 1d,00,3a,00  -- map entry: desired scancode, key to remap
# 00,00,00,00  -- NULL terminator

# LCTRL: 1d
# CAPS: 3a
# L ALT: 0x38
# R ALT: 0x38
#


#
#
$hexified = "00,00,00,00,00,00,00,00,02,00,00,00,1d,00,3a,00,00,00,00,00".Split(',') | % { "0x$_"};
$kbLayout = 'HKLM:\System\CurrentControlSet\Control\Keyboard Layout';
New-ItemProperty -Path $kbLayout -Name "Scancode Map" -PropertyType Binary -Value ([byte[]]$hexified);
