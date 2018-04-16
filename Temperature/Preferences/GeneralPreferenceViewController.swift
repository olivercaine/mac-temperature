//
//  GeneralPreferenceViewController.swift
//  Temperature
//
//  Created by Gondnat on 27/03/2018.
//  Copyright © 2018 Gondnat. All rights reserved.
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.

import Cocoa

let refreshSecondID = "refreshSecond"

class GeneralPreferenceViewController: NSViewController, PreferenceViewController {
    private let id = "general.preference.view.controller"
    var toolbarIdentifier: NSToolbarItem.Identifier {
        return NSToolbarItem.Identifier((identifier?.rawValue) ?? id)
    }
    var image: NSImage {
        return NSImage(named: NSImage.Name.preferencesGeneral)!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }

    override init(nibName nibNameOrNil: NSNib.Name?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: NSNib.Name(rawValue: GeneralPreferenceViewController.className()), bundle: nil)
        title = NSLocalizedString("General", comment: "General preference title")
        identifier = NSUserInterfaceItemIdentifier(id)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}
