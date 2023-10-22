--  SPDX-License-Identifier: MIT
--
--  Copyright (c) 2019-2023 LESforMacOS authors, see AUTHORS.txt
--  for a list
--
--  Distributed under the MIT software license, see the accompanying
--  file COPYING.txt or visit https://opensource.org/license/mit/

-- Converts a file to a newline-separated index table
function ioFileToTable(filePath, retTable)
  local fileHdl = io.open(filePath, "r")
  for _line in fileHdl:lines() do
    table.insert(retTable, _line)
  end
  fileHdl:close()
end

-- Converts an index table into a newline-seperated file
-- WARNING: ioTableToFile does not append, it overwrites
function ioTableToFile(filePath, retTable)
  local fileHdl = io.open(filePath, "w")
  for idx, val in ipairs(retTable) do
    fileHdl:write(val, "\n")
  end
  fileHdl:close()
end
