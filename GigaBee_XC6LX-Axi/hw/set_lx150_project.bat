@rem Configure environment
@call C:\Xilinx\13.2\ISE_DS\settings64.bat

@rem Prepare lx150 project
@copy /y system.xmp.lx150 system.xmp
@copy /y system_incl.make.lx150 system_incl.make
@copy /y data\system.ucf.lx150 data\system.ucf
@rem Clean project
@make -f system.make hwclean
