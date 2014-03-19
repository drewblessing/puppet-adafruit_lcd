class adafruit_lcd {
  require adafruit_python

  $install_dir = '/opt/lcd_menu'
  $adafruit_python_dir = '/opt/adafruit_python'

  # Clone repo
  vcsrepo { '/opt/lcd_menu':
    ensure       => present,
    provider     => git,
    source       => 'https://github.com/drewblessing/adafruit_lcd_menu.git',
  }

  # Symlink Adafruit python code
  file { "${install_dir}/Adafruit_CharLCDPlate.py":
    ensure       => link,
    target       => "${adafruit_python_dir}/Adafruit_CharLCDPlate/Adafruit_CharLCDPlate.py",
  }

  file { "${install_dir}/Adafruit_I2C.py":
    ensure       => link,
    target       => "${adafruit_python_dir}/Adafruit_I2C/Adafruit_I2C.py",
  }

  file { "${install_dir}/Adafruit_MCP230xx.py":
    ensure       => link,
    target       => "${adafruit_python_dir}/Adafruit_MCP230xx/Adafruit_MCP230xx.py",
  }
}
