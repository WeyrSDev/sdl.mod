' Copyright (c) 2014 Bruce A Henderson
'
' This software is provided 'as-is', without any express or implied
' warranty. In no event will the authors be held liable for any damages
' arising from the use of this software.
'
' Permission is granted to anyone to use this software for any purpose,
' including commercial applications, and to alter it and redistribute it
' freely, subject to the following restrictions:
'
'    1. The origin of this software must not be misrepresented; you must not
'    claim that you wrote the original software. If you use this software
'    in a product, an acknowledgment in the product documentation would be
'    appreciated but is not required.
'
'    2. Altered source versions must be plainly marked as such, and must not be
'    misrepresented as being the original software.
'
'    3. This notice may not be removed or altered from any source
'    distribution.
'
SuperStrict

Module SDL.SDL

ModuleInfo "Version: 1.00"
ModuleInfo "License: zlib/libpng"

ModuleInfo "History: 1.00"
ModuleInfo "History: Initial Release."

?win32x86
ModuleInfo "LD_OPTS: -F%PWD%/lib/win32x86"
Import "include/win32x86/*.h"

?win32x64
ModuleInfo "LD_OPTS: -F%PWD%/lib/win32x64"
Import "include/win32x64/*.h"

?macos
ModuleInfo "LD_OPTS: -F%PWD%/lib/macos"
ModuleInfo "LD_OPTS: -Xlinker -rpath -Xlinker @loader_path/../Frameworks"
Import "include/macos/*.h"

?linuxx86
ModuleInfo "LD_OPTS: -L%PWD%/lib/linuxx86"

Import "include/linuxx86/*.h"
?linuxx64
ModuleInfo "LD_OPTS: -L%PWD%/lib/linuxx64"

Import "include/linuxx64/*.h"
?linuxarm

?

Import "include/*.h

?Not macos
Import "-lSDL2"
?macos
Import "-framework SDL2"
?linux
Import "-ldl"
?


Import "common.bmx"
