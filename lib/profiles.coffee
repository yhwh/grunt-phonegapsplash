###
# grunt-phonegapsplash
# https://github.com/PEM--/grunt-phonegapsplash
#
# Copyright (c) 2013 Pierre-Eric Marchandet (PEM-- <pemarchandet@gmail.com>)
# Licensed under the MIT licence.
###

'use strict'

# Path from NodeJS app is used to merge directory and sub drectories.
path = require 'path'

###
# All profiles for every splashscreens covered by PhoneGap are stored hereafter
#  with the following structure:
#
#  * platform: A dictionary key representing the OS (the platform)
#    * dir: The subfolder where are stored the splashscreens
#    * layout: A dictionary key representing the available layouts
#      * splashs: An array of the required splashscreens
#        * name: The name of the splashscreen
#        * width: The width of the splashscreen
#        * height: The height of the splascreen
###
module.exports = (config) ->
  # Android
  'android':
    dir: path.join 'res', 'screen', 'android'
    layout:
      landscape:
        splashs: [
          { name: 'screen-ldpi-landscape.png', width: 320, height: 200 }
          { name: 'screen-mdpi-landscape.png', width: 480, height: 320 }
          { name: 'screen-hdpi-landscape.png', width: 800, height: 480 }
          { name: 'screen-xhdpi-landscape.png', width: 1280, height: 720 }
        ]
      portrait:
        splashs: [
          { name: 'screen-ldpi-portrait.png', width: 200, height: 320 }
          { name: 'screen-mdpi-portrait.png', width: 320, height: 480 }
          { name: 'screen-hdpi-portrait.png', width: 480, height: 800 }
          { name: 'screen-xhdpi-portrait.png', width: 720, height: 1280 }
        ]
  # Bada and Bada WAC
  'bada':
    dir: path.join 'res', 'screen', 'bada'
    layout:
      portrait:
        splashs: [
          { name: 'screen-type5.png', width: 240, height: 400 }
          { name: 'screen-type3.png', width: 320, height: 480 }
          { name: 'screen-type4.png', width: 480, height: 800 }
          { name: 'screen-portrait.png', width: 480, height: 800 }
        ]
  # Blackberry
  'blackberry':
    dir: path.join 'res', 'screen', 'blackberry'
    layout:
      none:
        splashs: [
          { name: 'screen-225.png', width: 225, height: 225 }
        ]
  # iOS (Retina and legacy resolutions)
  'ios':
    dir: path.join 'platforms', 'ios', config.prjName, 'Resources', 'splash'
    layout:
      landscape:
        splashs: [
          { name: 'screen-iphone-landscape.png', width: 480, height: 320 }
          { name: 'screen-iphone-landscape-2x.png', width: 960, height: 640 }
          { name: 'screen-ipad-landscape.png', width: 1024, height: 783 }
          { name: 'screen-ipad-landscape-2x.png', width: 2008, height: 1536 }
        ]
      portrait:
        splashs: [
          { name: 'screen-iphone-portrait.png', width: 320, height: 480 }
          { name: 'screen-iphone-portrait-2x.png', width: 640, height: 960 }
          {
            name: 'screen-iphone-portrait-568h-2x.png',
            width: 640, height: 1136
          }
          { name: 'screen-ipad-portrait.png', width: 768, height: 1004 }
          { name: 'screen-ipad-portrait-2x.png', width: 1536, height: 2008 }
        ]
  # WebOS
  'webos':
    dir: path.join 'res', 'screen', 'webos'
    layout:
      none:
        splashs: [
          { name: 'screen-64.png', width: 64, height: 64 }
        ]
  # Windows Phone, Tablets and Desktop (Windows 8)
  'windows-phone':
    dir: path.join 'res', 'screen', 'windows-phone'
    layout:
      portrait:
        splashs: [
          { name: 'screen-portrait.png', width: 480, height: 800 }
        ]