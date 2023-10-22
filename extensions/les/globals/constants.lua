--  SPDX-License-Identifier: MIT
--
--  Copyright (c) 2019-2023 LESforMacOS authors, see AUTHORS.txt
--  for a list
--
--  Distributed under the MIT software license, see the accompanying
--  file COPYING.txt or visit https://opensource.org/license/mit/

-- TODO: Make all global constants upper case to indicate they're
--       in the global context

-- Program constants
programName = "Live Enhancement Suite"
programBundle = "org.les.Live-Enhancement-Suite"
programVersion = "dill"
programBugTracker = "https://github.com/LiveEnhancementSuite/LESforMacOS/issues"

-- macOS 11 (Big Sur)
programMinTarget = 11

-- macOS 13 (Ventura)
programMaxTarget = 13

-- Platform specific constants
PATH_DELIMITER = "/"
ARGS_DELIMITER = " "

-- Target constants
targetName = "Live"
targetBundle = "com.ableton.live"
targetMinVersion = 9
targetMaxVersion = 11
