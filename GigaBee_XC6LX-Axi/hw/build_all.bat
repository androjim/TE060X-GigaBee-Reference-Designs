rem Configure environment
call C:\Xilinx\13.2\ISE_DS\settings64.bat

@rem Prepare lx45 project
rem @copy /y system.xmp.lx45 system.xmp
rem @copy /y system_incl.make.lx45 system_incl.make
rem @copy /y data\system.ucf.lx45 data\system.ucf
@rem Clean project
rem make -f system.make hwclean
@rem Generate bitstream
make -f system.make bits
pause
@rem Copy result
copy /y implementation\system.bit ..\ready_for_download\system_lx45.bit
copy /y implementation\system_bd.bmm ..\ready_for_download\system_bd_lx45.bmm
pause
@rem Clean project
make -f system.make hwclean
pause

@rem Prepare lx150 project
@copy /y system.xmp.lx150 system.xmp
@copy /y system_incl.make.lx150 system_incl.make
@copy /y data\system.ucf.lx150 data\system.ucf
pause
@rem Clean project
make -f system.make hwclean
pause
@rem Generate bitstream
make -f system.make bits
pause
@rem Copy result
@copy /y implementation\system.bit ..\ready_for_download\system_lx150.bit
@copy /y implementation\system_bd.bmm ..\ready_for_download\system_bd_lx150.bmm
pause
@rem Clean project
make -f system.make hwclean
pause

@rem Prepare lx100 project
@copy /y system.xmp.lx100 system.xmp
@copy /y system_incl.make.lx100 system_incl.make
@copy /y data\system.ucf.lx100 data\system.ucf
pause
@rem Clean project
make -f system.make hwclean
pause
@rem Generate bitstream
make -f system.make bits
pause
@rem Copy result
@copy /y implementation\system.bit ..\ready_for_download\system_lx100.bit
@copy /y implementation\system_bd.bmm ..\ready_for_download\system_bd_lx100.bmm
pause
@rem Clean project
make -f system.make hwclean
