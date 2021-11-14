import subprocess

appium_cmd = "appium --allow-insecure=adb_shell"

subprocess.call(appium_cmd, shell=True)
