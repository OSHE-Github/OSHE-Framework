(kicad_sch
	(version 20250114)
	(generator "eeschema")
	(generator_version "9.0")
	(uuid "b9c15e85-fcbf-409e-a96b-c9c6bd123369")
	(paper "A4")
	(title_block
		(title "Expansion Card Template")
		(date "2020-12-12")
		(rev "X1")
		(company "Framework")
		(comment 1 "This work is licensed under a Creative Commons Attribution 4.0 International License")
		(comment 4 "https://frame.work")
	)
	(lib_symbols
		(symbol "692121330100:692121330100"
			(pin_names
				(offset 1.016)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "J"
				(at 0 13.97 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify bottom)
				)
			)
			(property "Value" "692121330100"
				(at 0 -15.24 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify bottom)
				)
			)
			(property "Footprint" "692121330100:692121330100"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify bottom)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "692121330100_0_0"
				(polyline
					(pts
						(xy -10.16 12.065) (xy 9.525 12.065)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -10.16 -12.065) (xy -10.16 12.065)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 9.525 12.065) (xy 9.525 -12.065)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 9.525 -12.065) (xy -10.16 -12.065)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 10.16 12.7) (xy -10.16 12.7)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 10.16 12.7) (xy 10.16 -12.7)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 10.16 -12.7) (xy -10.16 -12.7)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(text "Shield"
					(at 12.14 -2.5 900)
					(effects
						(font
							(size 1.27 1.27)
						)
						(justify left bottom)
					)
				)
				(pin passive line
					(at -15.24 10.16 0)
					(length 5.08)
					(name "VBUS"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
				(pin passive line
					(at -15.24 7.62 0)
					(length 5.08)
					(name "D-"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
				(pin passive line
					(at -15.24 5.08 0)
					(length 5.08)
					(name "D+"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
				(pin passive line
					(at -15.24 2.54 0)
					(length 5.08)
					(name "GND"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "4"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
				(pin passive line
					(at -15.24 0 0)
					(length 5.08)
					(name "STDA_SSRX-"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "5"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
				(pin passive line
					(at -15.24 -2.54 0)
					(length 5.08)
					(name "STDA_SSRX+"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "6"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
				(pin passive line
					(at -15.24 -5.08 0)
					(length 5.08)
					(name "GND_DRAIN"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "7"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
				(pin passive line
					(at -15.24 -7.62 0)
					(length 5.08)
					(name "STDA_SSTX-"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "8"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
				(pin passive line
					(at -15.24 -10.16 0)
					(length 5.08)
					(name "STDA_SSTX+"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "9"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
				(pin passive line
					(at -15.24 -12.7 0)
					(length 5.08)
					(name "~"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "S1"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
				(pin passive line
					(at -15.24 -12.7 0)
					(length 5.08)
					(name "~"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "S2"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
				(pin passive line
					(at -15.24 -12.7 0)
					(length 5.08)
					(name "~"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "S3"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
				(pin passive line
					(at -15.24 -12.7 0)
					(length 5.08)
					(name "~"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
					(number "S4"
						(effects
							(font
								(size 1.016 1.016)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "Connector:TestPoint"
			(pin_numbers
				(hide yes)
			)
			(pin_names
				(offset 0.762)
				(hide yes)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "TP"
				(at 0 6.858 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "TestPoint"
				(at 0 5.08 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 5.08 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 5.08 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "test point"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "test point tp"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "Pin* Test*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "TestPoint_0_1"
				(circle
					(center 0 3.302)
					(radius 0.762)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "TestPoint_1_1"
				(pin passive line
					(at 0 0 90)
					(length 2.54)
					(name "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "Connector:USB_C_Plug"
			(pin_names
				(offset 1.016)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "P"
				(at -10.16 29.21 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Value" "USB_C_Plug"
				(at 10.16 29.21 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify right)
				)
			)
			(property "Footprint" ""
				(at 3.81 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "https://www.usb.org/sites/default/files/documents/usb_type-c.zip"
				(at 3.81 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "USB Type-C Plug connector"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "usb universal serial bus"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "USB*C*Plug*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "USB_C_Plug_0_0"
				(rectangle
					(start -0.254 -35.56)
					(end 0.254 -34.544)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 25.654)
					(end 9.144 25.146)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 20.574)
					(end 9.144 20.066)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 18.034)
					(end 9.144 17.526)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 12.954)
					(end 9.144 12.446)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 7.874)
					(end 9.144 7.366)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 0.254)
					(end 9.144 -0.254)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 -2.286)
					(end 9.144 -2.794)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 -7.366)
					(end 9.144 -7.874)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 -9.906)
					(end 9.144 -10.414)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 -14.986)
					(end 9.144 -15.494)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 -17.526)
					(end 9.144 -18.034)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 -22.606)
					(end 9.144 -23.114)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 -25.146)
					(end 9.144 -25.654)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 -30.226)
					(end 9.144 -30.734)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 10.16 -32.766)
					(end 9.144 -33.274)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "USB_C_Plug_0_1"
				(rectangle
					(start -10.16 27.94)
					(end 10.16 -35.56)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type background)
					)
				)
				(polyline
					(pts
						(xy -8.89 -3.81) (xy -8.89 3.81)
					)
					(stroke
						(width 0.508)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -7.62 -3.81)
					(end -6.35 3.81)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(arc
					(start -7.62 3.81)
					(mid -6.985 4.4423)
					(end -6.35 3.81)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(arc
					(start -7.62 3.81)
					(mid -6.985 4.4423)
					(end -6.35 3.81)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(arc
					(start -8.89 3.81)
					(mid -6.985 5.7067)
					(end -5.08 3.81)
					(stroke
						(width 0.508)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(arc
					(start -5.08 -3.81)
					(mid -6.985 -5.7067)
					(end -8.89 -3.81)
					(stroke
						(width 0.508)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(arc
					(start -6.35 -3.81)
					(mid -6.985 -4.4423)
					(end -7.62 -3.81)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(arc
					(start -6.35 -3.81)
					(mid -6.985 -4.4423)
					(end -7.62 -3.81)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy -5.08 3.81) (xy -5.08 -3.81)
					)
					(stroke
						(width 0.508)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "USB_C_Plug_1_1"
				(circle
					(center -2.54 1.143)
					(radius 0.635)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy -1.27 4.318) (xy 0 6.858) (xy 1.27 4.318) (xy -1.27 4.318)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy 0 -2.032) (xy 2.54 0.508) (xy 2.54 1.778)
					)
					(stroke
						(width 0.508)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 -3.302) (xy -2.54 -0.762) (xy -2.54 0.508)
					)
					(stroke
						(width 0.508)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 -5.842) (xy 0 4.318)
					)
					(stroke
						(width 0.508)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(circle
					(center 0 -5.842)
					(radius 1.27)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(rectangle
					(start 1.905 1.778)
					(end 3.175 3.048)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(pin passive line
					(at -7.62 -40.64 90)
					(length 5.08)
					(name "SHIELD"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "S1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 0 -40.64 90)
					(length 5.08)
					(name "GND"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "A1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 0 -40.64 90)
					(length 5.08)
					(hide yes)
					(name "GND"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "A12"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 0 -40.64 90)
					(length 5.08)
					(hide yes)
					(name "GND"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "B1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 0 -40.64 90)
					(length 5.08)
					(hide yes)
					(name "GND"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "B12"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 15.24 25.4 180)
					(length 5.08)
					(name "VBUS"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "A4"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 15.24 25.4 180)
					(length 5.08)
					(hide yes)
					(name "VBUS"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "A9"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 15.24 25.4 180)
					(length 5.08)
					(hide yes)
					(name "VBUS"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "B4"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 15.24 25.4 180)
					(length 5.08)
					(hide yes)
					(name "VBUS"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "B9"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 20.32 180)
					(length 5.08)
					(name "CC"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "A5"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 17.78 180)
					(length 5.08)
					(name "VCONN"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "B5"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 12.7 180)
					(length 5.08)
					(name "D-"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "A7"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 7.62 180)
					(length 5.08)
					(name "D+"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "A6"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 0 180)
					(length 5.08)
					(name "RX1-"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "B10"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 -2.54 180)
					(length 5.08)
					(name "RX1+"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "B11"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 -7.62 180)
					(length 5.08)
					(name "TX1-"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "A3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 -10.16 180)
					(length 5.08)
					(name "TX1+"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "A2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 -15.24 180)
					(length 5.08)
					(name "RX2-"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "A10"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 -17.78 180)
					(length 5.08)
					(name "RX2+"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "A11"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 -22.86 180)
					(length 5.08)
					(name "TX2-"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "B3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 -25.4 180)
					(length 5.08)
					(name "TX2+"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "B2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 -30.48 180)
					(length 5.08)
					(name "SBU1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "A8"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin bidirectional line
					(at 15.24 -33.02 180)
					(length 5.08)
					(name "SBU2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "B8"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "Device:R_Small_US"
			(pin_numbers
				(hide yes)
			)
			(pin_names
				(offset 0.254)
				(hide yes)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "R"
				(at 0.762 0.508 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Value" "R_Small_US"
				(at 0.762 -1.016 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Resistor, small US symbol"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "r resistor"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "R_*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "R_Small_US_1_1"
				(polyline
					(pts
						(xy 0 1.524) (xy 1.016 1.143) (xy 0 0.762) (xy -1.016 0.381) (xy 0 0)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 0) (xy 1.016 -0.381) (xy 0 -0.762) (xy -1.016 -1.143) (xy 0 -1.524)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(pin passive line
					(at 0 2.54 270)
					(length 1.016)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 0 -2.54 90)
					(length 1.016)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "Mechanical:MountingHole"
			(pin_names
				(offset 1.016)
			)
			(exclude_from_sim no)
			(in_bom no)
			(on_board yes)
			(property "Reference" "H"
				(at 0 5.08 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "MountingHole"
				(at 0 3.175 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Mounting Hole without connection"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "mounting hole"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "MountingHole*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "MountingHole_0_1"
				(circle
					(center 0 0)
					(radius 1.27)
					(stroke
						(width 1.27)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "power:GND"
			(power)
			(pin_numbers
				(hide yes)
			)
			(pin_names
				(offset 0)
				(hide yes)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "#PWR"
				(at 0 -6.35 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Value" "GND"
				(at 0 -3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Power symbol creates a global label with name \"GND\" , ground"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "global power"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "GND_0_1"
				(polyline
					(pts
						(xy 0 0) (xy 0 -1.27) (xy 1.27 -1.27) (xy 0 -2.54) (xy -1.27 -1.27) (xy 0 -1.27)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "GND_1_1"
				(pin power_in line
					(at 0 0 270)
					(length 0)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
		(symbol "power:VBUS"
			(power)
			(pin_numbers
				(hide yes)
			)
			(pin_names
				(offset 0)
				(hide yes)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "#PWR"
				(at 0 -3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Value" "VBUS"
				(at 0 3.556 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Power symbol creates a global label with name \"VBUS\""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "global power"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "VBUS_0_1"
				(polyline
					(pts
						(xy -0.762 1.27) (xy 0 2.54)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 2.54) (xy 0.762 1.27)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 0) (xy 0 2.54)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "VBUS_1_1"
				(pin power_in line
					(at 0 0 90)
					(length 0)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(embedded_fonts no)
		)
	)
	(text "Mechanical mounting"
		(exclude_from_sim no)
		(at 237.49 36.83 0)
		(effects
			(font
				(size 2.54 2.54)
			)
			(justify left bottom)
		)
		(uuid "7c905971-d712-47bd-b66b-018b0cedd9e4")
	)
	(text "USB-C Plug"
		(exclude_from_sim no)
		(at 30.48 26.67 0)
		(effects
			(font
				(size 2.54 2.54)
			)
			(justify left bottom)
		)
		(uuid "b5dcac7b-a8c2-4a91-998a-135bf21c921f")
	)
	(junction
		(at 40.64 105.41)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "1cdbde02-bb7a-40c5-a1d2-71dc6a3af3ab")
	)
	(junction
		(at 238.76 29.21)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "67b92dec-9437-42b7-80da-dedf83550a5f")
	)
	(junction
		(at 238.76 22.86)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "aa9b2d83-198c-43e8-b963-00d2d3325d99")
	)
	(junction
		(at 233.68 29.21)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "d3014a1d-be4e-4118-9df9-524db6d9949d")
	)
	(no_connect
		(at 55.88 44.45)
		(uuid "6151a008-8e10-4f9e-9686-e33339c627d8")
	)
	(wire
		(pts
			(xy 55.88 72.39) (xy 67.31 72.39)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "03297f23-7d51-450a-b4f3-d8a5606f06e2")
	)
	(wire
		(pts
			(xy 55.88 80.01) (xy 67.31 80.01)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "10fb1ceb-3dd5-460e-80ed-f5dc7070bf61")
	)
	(wire
		(pts
			(xy 233.68 22.86) (xy 233.68 29.21)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "12955bac-3e2e-437f-bec1-e4f9b753e65c")
	)
	(wire
		(pts
			(xy 55.88 87.63) (xy 67.31 87.63)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1da36a94-30e1-476d-b629-762f26e44088")
	)
	(wire
		(pts
			(xy 238.76 22.86) (xy 233.68 22.86)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "23ffb15c-e9bc-4114-8da7-df36591a2637")
	)
	(wire
		(pts
			(xy 40.64 107.95) (xy 40.64 105.41)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "31b81fb7-a0a1-486e-87ab-e25c1cbe2ff8")
	)
	(wire
		(pts
			(xy 250.19 29.21) (xy 238.76 29.21)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "48669c2f-b1f5-4b1a-b229-17bcd25b1a38")
	)
	(wire
		(pts
			(xy 73.66 41.91) (xy 76.2 41.91)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "4cff69a2-8a04-45d5-b442-21691a35612b")
	)
	(wire
		(pts
			(xy 40.64 105.41) (xy 40.64 102.87)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "532a81cf-e104-4a4c-a73c-043e41c3d58b")
	)
	(wire
		(pts
			(xy 55.88 85.09) (xy 67.31 85.09)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "5d4883ac-07f5-4324-a496-c1381e4f7146")
	)
	(wire
		(pts
			(xy 55.88 64.77) (xy 67.31 64.77)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "66c16db4-9ef1-427e-b136-69cbc40bbd29")
	)
	(wire
		(pts
			(xy 33.02 102.87) (xy 33.02 105.41)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6c84ba29-8be2-47f2-8285-06deed19a777")
	)
	(wire
		(pts
			(xy 72.39 36.83) (xy 72.39 29.21)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "983b8f4b-0c72-42f7-b7e9-e35ce764b8b9")
	)
	(wire
		(pts
			(xy 55.88 36.83) (xy 72.39 36.83)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "b3d375f3-2e87-456b-954d-7eea1ce9b0c9")
	)
	(wire
		(pts
			(xy 76.2 41.91) (xy 76.2 44.45)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "b420f26f-951f-4d35-afc8-e9a856598e2a")
	)
	(wire
		(pts
			(xy 250.19 22.86) (xy 238.76 22.86)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "b62a6236-b202-4d54-b45e-4189af8c39dc")
	)
	(wire
		(pts
			(xy 55.88 77.47) (xy 67.31 77.47)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "c3f9219c-a047-4734-b21b-4a96b629f2dd")
	)
	(wire
		(pts
			(xy 55.88 54.61) (xy 67.31 54.61)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d18467d1-d933-4636-a45d-8517c3bc9a92")
	)
	(wire
		(pts
			(xy 238.76 29.21) (xy 233.68 29.21)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "e3c0568d-cbca-4f80-b7f8-bd65aa1cb2ea")
	)
	(wire
		(pts
			(xy 55.88 49.53) (xy 67.31 49.53)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "ee5329f2-41d0-438a-b131-ccebd245195b")
	)
	(wire
		(pts
			(xy 55.88 62.23) (xy 67.31 62.23)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f4258913-0b09-432e-bf4e-a7fefd4c80a8")
	)
	(wire
		(pts
			(xy 55.88 69.85) (xy 67.31 69.85)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f44114e8-5088-4f3b-b013-228845cc6cbe")
	)
	(wire
		(pts
			(xy 55.88 41.91) (xy 68.58 41.91)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f63cf9d5-3073-4a32-8f91-0e76180a30c3")
	)
	(wire
		(pts
			(xy 33.02 105.41) (xy 40.64 105.41)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "fd1de980-6107-49cc-a537-974d207fd4db")
	)
	(label "USB_RX2-"
		(at 67.31 77.47 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "343bfced-a814-4806-9d45-edaee8ae21d9")
	)
	(label "USB_RX2+"
		(at 67.31 80.01 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "41ed0726-f62a-4562-a10a-55cafd66837f")
	)
	(label "USB_TX2+"
		(at 67.31 87.63 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "69b28a7e-c40e-4e5e-86d0-fd17c3e711be")
	)
	(label "USB_TX1+"
		(at 67.31 72.39 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "8ae8f262-9601-4dd8-ab60-3065a9b4e354")
	)
	(label "USB_TX2-"
		(at 67.31 85.09 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "a1f59770-1937-4b10-961a-5171ba4256cd")
	)
	(label "USB_TX1-"
		(at 67.31 69.85 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "a20fde6f-351f-4d93-9f0f-d8b0bf3295fb")
	)
	(label "USB_DP"
		(at 67.31 54.61 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "aa0b3c7e-d6d9-4a86-ab4b-808a54362703")
	)
	(label "USB_RX1+"
		(at 67.31 64.77 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "badfdc54-f064-4cd8-9a12-712739096ff9")
	)
	(label "USB_RX1-"
		(at 67.31 62.23 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "c52cfb27-49d2-49ed-bd50-c34f1341d8f9")
	)
	(label "USB_DN"
		(at 67.31 49.53 180)
		(effects
			(font
				(size 1.27 1.27)
			)
			(justify right bottom)
		)
		(uuid "e8a726db-2796-4bd5-8db0-27bc5ca38fa2")
	)
	(symbol
		(lib_id "Mechanical:MountingHole")
		(at 262.89 20.32 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005fdb1a76")
		(property "Reference" "H1"
			(at 265.43 19.0754 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "MountingHole"
			(at 265.43 21.3868 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "MountingHole:MountingHole_2.2mm_M2"
			(at 262.89 20.32 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 262.89 20.32 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 262.89 20.32 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(instances
			(project ""
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "H1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Mechanical:MountingHole")
		(at 262.89 29.21 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00005fdb2fce")
		(property "Reference" "H2"
			(at 265.43 27.9654 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "MountingHole"
			(at 265.43 30.2768 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "MountingHole:MountingHole_2.2mm_M2"
			(at 262.89 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 262.89 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 262.89 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(instances
			(project ""
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "H2")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector:TestPoint")
		(at 250.19 22.86 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000606a78c1")
		(property "Reference" "GP2"
			(at 251.6632 19.8628 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "TestPoint"
			(at 251.6632 22.1742 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "TestPoint:TestPoint_Pad_1.5x1.5mm"
			(at 255.27 22.86 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 255.27 22.86 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 250.19 22.86 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "500e77d5-7ccb-499b-8ef8-c799ce1a20c4")
		)
		(instances
			(project ""
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "GP2")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector:TestPoint")
		(at 238.76 22.86 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000606a89a3")
		(property "Reference" "GP1"
			(at 240.2332 19.8628 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "TestPoint"
			(at 240.2332 22.1742 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "TestPoint:TestPoint_Pad_1.5x1.5mm"
			(at 243.84 22.86 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 243.84 22.86 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 238.76 22.86 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "55357582-6b73-40a6-b365-b565a17dd1f6")
		)
		(instances
			(project ""
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "GP1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector:TestPoint")
		(at 238.76 29.21 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000606a8c9b")
		(property "Reference" "GP3"
			(at 240.2332 26.2128 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "TestPoint"
			(at 240.2332 28.5242 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "TestPoint:TestPoint_Pad_1.5x1.5mm"
			(at 243.84 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 243.84 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 238.76 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "f7e0acd3-a272-487f-8dee-041e003e408d")
		)
		(instances
			(project ""
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "GP3")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector:TestPoint")
		(at 250.19 29.21 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000606a8e98")
		(property "Reference" "GP4"
			(at 251.6632 26.2128 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "TestPoint"
			(at 251.6632 28.5242 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "TestPoint:TestPoint_Pad_1.5x1.5mm"
			(at 255.27 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 255.27 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 250.19 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "44d510b8-dfff-4dc5-a56a-76759243be18")
		)
		(instances
			(project ""
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "GP4")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "power:GND")
		(at 233.68 29.21 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000606a9b9c")
		(property "Reference" "#PWR0101"
			(at 233.68 35.56 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "GND"
			(at 233.807 33.6042 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 233.68 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 233.68 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 233.68 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "e074859b-250d-41d6-85bf-311d80fb40ff")
		)
		(instances
			(project ""
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "#PWR0101")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R_Small_US")
		(at 71.12 41.91 90)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "29f0e0ef-da4b-4952-9b77-1d5603041af4")
		(property "Reference" "R2"
			(at 69.85 39.37 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "5.1k"
			(at 76.2 39.37 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0603_1608Metric"
			(at 71.12 41.91 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 71.12 41.91 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 71.12 41.91 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "2"
			(uuid "6b0ca61a-1476-4fb8-a0f8-828ca5c88990")
		)
		(pin "1"
			(uuid "68ad22ab-9dc8-46eb-8905-76b1475dd7b3")
		)
		(instances
			(project "Mouse Dongle Card"
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "R2")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "692121330100:692121330100")
		(at 114.3 49.53 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(fields_autoplaced yes)
		(uuid "46795b7a-457a-496a-bb94-3123821b4c41")
		(property "Reference" "J1"
			(at 128.27 48.2599 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "692121330100"
			(at 128.27 50.7999 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "692121330100:692121330100"
			(at 114.3 49.53 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify bottom)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 114.3 49.53 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 114.3 49.53 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "92251002-7ac4-4099-85d4-637d9d6fd7cd")
		)
		(pin "8"
			(uuid "279715af-15a1-4cb3-935c-57a86f0a34d6")
		)
		(pin "S2"
			(uuid "f99b2e72-e4e1-4135-bf90-dedc22822e53")
		)
		(pin "3"
			(uuid "0485f374-daf5-4ab3-9096-0d682f4257cb")
		)
		(pin "4"
			(uuid "b9e94401-73bf-4215-8fa9-bb3faf59bfa8")
		)
		(pin "9"
			(uuid "0295a3e2-851f-4761-9473-d8f118d9ea2f")
		)
		(pin "5"
			(uuid "a3179533-b00e-451f-aba0-c09b97d3ab98")
		)
		(pin "6"
			(uuid "2ce0a5f5-b017-493c-8e2a-c52c46d14782")
		)
		(pin "S3"
			(uuid "8c399e35-b6ed-4813-9da4-4dff065da49a")
		)
		(pin "7"
			(uuid "bb4ef5ee-e893-4f29-94c7-8ac4cbf399af")
		)
		(pin "2"
			(uuid "225fc244-fcc0-4e34-8ae1-8df6ba832b94")
		)
		(pin "S1"
			(uuid "176ee845-6b02-4158-a8f1-718572152f28")
		)
		(pin "S4"
			(uuid "ed96fa4c-4162-4351-bdb9-8325cd719a05")
		)
		(instances
			(project ""
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "J1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "power:VBUS")
		(at 72.39 29.21 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "56a24636-38ce-4156-b6ba-693b1f4c5a68")
		(property "Reference" "#PWR06"
			(at 72.39 33.02 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "VBUS"
			(at 72.771 24.8158 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 72.39 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 72.39 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 72.39 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "9e8fc38c-dd66-4df2-a6ec-541f0b032175")
		)
		(instances
			(project "Mouse Dongle Card"
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "#PWR06")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector:USB_C_Plug")
		(at 40.64 62.23 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(fields_autoplaced yes)
		(uuid "843368e5-d7b4-4417-8808-a66c3640dfd1")
		(property "Reference" "P1"
			(at 40.64 29.21 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "USB_C_Plug"
			(at 40.64 31.75 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "Expansion_Card:USB_C_Plug_Molex_105444"
			(at 44.45 62.23 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "https://www.usb.org/sites/default/files/documents/usb_type-c.zip"
			(at 44.45 62.23 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" "USB Type-C Plug connector"
			(at 40.64 62.23 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "A5"
			(uuid "86929c54-fa40-461e-a6fa-716112027f0c")
		)
		(pin "B10"
			(uuid "4b5ebbd6-3b64-4a1a-a338-51c65f08d62a")
		)
		(pin "B2"
			(uuid "91481f74-6c91-4004-830b-c0afac2d7c84")
		)
		(pin "A6"
			(uuid "a912cf91-4960-4587-9cee-fab843e4f5d2")
		)
		(pin "A10"
			(uuid "81aad9b1-f9a0-4c51-9b46-cce71cf0bfb2")
		)
		(pin "A12"
			(uuid "ac5fe1e8-0e06-464d-875e-a1504f9bdfe0")
		)
		(pin "A4"
			(uuid "1c0a22f7-6cd5-4ff8-adb0-5fdabf47bb6b")
		)
		(pin "A11"
			(uuid "f4ba408e-7444-4111-beef-ca26afbe037d")
		)
		(pin "S1"
			(uuid "96479b2a-6346-446d-a957-36a927313749")
		)
		(pin "B3"
			(uuid "b3d772d1-c409-495b-b3e7-6e7790eec6e1")
		)
		(pin "B8"
			(uuid "10d0ccb8-ce0a-4b6d-9036-2d47aaf75ae9")
		)
		(pin "A2"
			(uuid "2af2ab9b-a6d9-4e85-915f-9302cd496057")
		)
		(pin "B1"
			(uuid "26e2d88e-f455-40c2-8d78-060c5390792b")
		)
		(pin "B12"
			(uuid "9a7d56dd-fdf4-4e19-a7f4-bb5bfe26c4d4")
		)
		(pin "A9"
			(uuid "9715e4be-1249-43fc-91fc-688c06fe1f38")
		)
		(pin "B5"
			(uuid "4cbaf904-3d1f-4076-b11e-9284a9dfd80c")
		)
		(pin "A7"
			(uuid "ebae3673-3be0-4166-a85e-b90704f149a0")
		)
		(pin "A1"
			(uuid "0d3d87d1-a370-4492-a85e-acaebdecb1d5")
		)
		(pin "A3"
			(uuid "668e4d30-3d9e-45ae-a1b8-25e47f89667b")
		)
		(pin "A8"
			(uuid "a7e65456-40bf-472e-a6f0-c4812f69c583")
		)
		(pin "B11"
			(uuid "a71b5bbb-6b3c-4eec-9c46-3435936cf0cd")
		)
		(pin "B4"
			(uuid "38ffadfd-03aa-4ddf-bed8-7e8e9d864ffb")
		)
		(pin "B9"
			(uuid "92edfe0e-ffe5-43b9-a94b-976166832107")
		)
		(instances
			(project ""
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "P1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "power:GND")
		(at 76.2 44.45 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "9da00a09-8815-4c69-97ee-d450a5f6ba0d")
		(property "Reference" "#PWR05"
			(at 76.2 50.8 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "GND"
			(at 76.327 48.8442 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 76.2 44.45 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 76.2 44.45 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 76.2 44.45 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "ac007a34-b4be-4df5-adb6-0f0f21ad96e8")
		)
		(instances
			(project "Mouse Dongle Card"
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "#PWR05")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "power:GND")
		(at 40.64 107.95 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "c8e496c1-2379-4bbf-a888-2407b7249576")
		(property "Reference" "#PWR04"
			(at 40.64 114.3 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "GND"
			(at 40.767 112.3442 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 40.64 107.95 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 40.64 107.95 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 40.64 107.95 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(pin "1"
			(uuid "2baa1242-08b9-4300-a976-ad242ab697e0")
		)
		(instances
			(project "Mouse Dongle Card"
				(path "/b9c15e85-fcbf-409e-a96b-c9c6bd123369"
					(reference "#PWR04")
					(unit 1)
				)
			)
		)
	)
	(sheet_instances
		(path "/"
			(page "1")
		)
	)
	(embedded_fonts no)
)
