# Set system, UI, and user language to en-US
Set-WinSystemLocale en-US
Set-WinUILanguageOverride -Language en-US

# Define a new language list: en-US display language + Norwegian keyboard layout only
$language = New-WinUserLanguageList en-US

# Clear any existing input methods and add only Norwegian keyboard layout
$language[0].InputMethodTips.Clear()
$language[0].InputMethodTips.Add('0414:00000414')  # Norwegian keyboard layout

# Apply the modified language list forcefully
Set-WinUserLanguageList $language -Force

Write-Host "System language set to English (en-US) with ONLY Norwegian keyboard layout."
