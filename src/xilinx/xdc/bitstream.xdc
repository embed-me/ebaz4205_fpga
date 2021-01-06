# ------------------------------------------------------------------------------
#  Copyright (C) 2020 - embed-me
# 
#  Lukas Lichtl <support@embed-me.com>
# 
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License v2 as published by
#  the Free Software Foundation.
# 
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
# 
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
# 
# ------------------------------------------------------------------------------
#  Function description:
#  
# ------------------------------------------------------------------------------


# ---------------------------------------------------------
# Bitstream configuration (UG908)
# ---------------------------------------------------------

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.OVERTEMPPOWERDOWN ENABLE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property BITSTREAM.CONFIG.USERID 32'hf00dbabe [current_design]
