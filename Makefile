all: oldflight.exe

oldflight.exe: b747.obj c150.obj color.obj demo.obj draw_logo.obj f15.obj f16.obj f16w.obj f18.obj flight.obj graph.obj irisgl.obj main.obj maths.obj meters.obj object.obj p38.obj p38w.obj uflight.obj
	cl /nologo *.obj user32.lib gdi32.lib opengl32.lib glu32.lib

.c.obj:
	cl /nologo /c /DW32 /DNDEBUG $<

clean:
	del *.obj
	del oldflight.exe