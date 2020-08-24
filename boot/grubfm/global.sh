# Grub2-FileManager
# Copyright (C) 2020  A1ive.
#
# Grub2-FileManager is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Grub2-FileManager is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Grub2-FileManager.  If not, see <http://www.gnu.org/licenses/>.

if [ -f "${theme_fm}" ];
then
  export theme=${theme_fm};
fi;

hiddenentry " " --hotkey f1 {
  configfile ${prefix}/help.sh;
}

hiddenentry " " --hotkey f2 {
  if [ -n "${grubfm_current_path}" ];
  then
    grubfm "${grubfm_current_path}";
  else
    grubfm;
  fi;
}

hiddenentry " " --hotkey f3 {
  configfile ${prefix}/osdetect.sh;
}

hiddenentry " " --hotkey f4 {
  configfile ${prefix}/settings.sh;
}

hiddenentry " " --hotkey f5 {
  configfile ${prefix}/f5.sh;
}

hiddenentry " " --hotkey f6 {
  configfile ${prefix}/power.sh;
}

hiddenentry " " --hotkey f {
  if [ -n "${grubfm_current_path}" ];
  then
    export srcdir=$grubfm_current_path;
    configfile $prefix/search.sh;
  else
    export srcdir=(*);
    configfile $prefix/search.sh;
  fi;
}
