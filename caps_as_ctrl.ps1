# 00,00,00,00  -- header version (always 00000000)
# 00,00,00,00  -- header flags (always 00000000)
# 02,00,00,00  -- number of entries (including terminating NULL)
# 1d,00,3a,00  -- map entry: desired scancode, key to remap
# 00,00,00,00  -- NULL terminator

# LCTRL: 1d
# CAPS: 3a
# L ALT: 0x38
# R ALT: (0xe0) 0x38
# L WIN: 0xe0 0x5b
# R WIN: 0xe0 0x5c

# https://geekhack.org/index.php?topic=22341.0
# [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
# 00,00,00,00,
# 00,00,00,00,
# 05,00,00,00,
# 1d,00,3a,00, -- CAPS -> L CTRL
# 5b,e0,38,00, -- L WIN -> L ALT
# 38,00,5b,e0, -- L ALT -> L WIN
# 5d,e0,38,e0, -- MENU -> R ALT
# 00,00,00,00

$hexified = "00,00,00,00,00,00,00,00,02,00,00,00,1d,00,3a,00,00,00,00,00".Split(',') | % { "0x$_"};
# $hexified = "00,00,00,00,00,00,00,00,05,00,00,00,1d,00,3a,00,5b,e0,38,00,38,00,5b,e0,5d,e0,38,e0,00,00,00,00".Split(',') | % { "0x$_"};
$kbLayout = 'HKLM:\System\CurrentControlSet\Control\Keyboard Layout';
New-ItemProperty -Path $kbLayout -Name "Scancode Map" -PropertyType Binary -Value ([byte[]]$hexified);
