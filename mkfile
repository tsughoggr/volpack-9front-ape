</$objtype/mkfile
OFILES = \
	vp_check.$O \
	vp_compAC00G.$O \
	vp_compAC11B.$O \
	vp_compAC1NB.$O \
	vp_compAC1NS.$O \
	vp_compAC1PB.$O \
	vp_compAC31B.$O \
	vp_compAC32B.$O \
	vp_compAC3NB.$O \
	vp_compAC3NS.$O \
	vp_compAC3PB.$O \
	vp_compAR00G.$O \
	vp_compAR11B.$O \
	vp_compAR1NB.$O \
	vp_compAR1NS.$O \
	vp_compAR1PB.$O \
	vp_compAR31B.$O \
	vp_compAR32B.$O \
	vp_compAR3NB.$O \
	vp_compAR3NS.$O \
	vp_compAR3PB.$O \
	vp_context.$O \
	vp_extract.$O \
	vp_file.$O \
	vp_linalg.$O \
	vp_octree.$O \
	vp_opts.$O \
	vp_renderA.$O \
	vp_renderB.$O \
	vp_renderC.$O \
	vp_renderR.$O \
	vp_resample.$O \
	vp_rle.$O \
	vp_shade.$O \
	vp_transpose.$O \
	vp_util.$O \
	vp_view.$O \
	vp_warp.$O \
	vp_warpA101N.$O \
	vp_warpA110N.$O \
	vp_warpA111N.$O \
	vp_warpA301N.$O \
	vp_warpA330N.$O \
	vp_warpA330R.$O \
	vp_warpA331N.$O \
	vp_warpA331R.$O

all:V: $OFILES
	ar vu libvolpack.a $OFILES

%.$O:	%.c
	pcc  -c $stem.c


clean:V:
	rm -f *.[$OS] [$OS].out libvolpak.a
install:V: libvolpack.a
	cp libvolpack.a /$objtype/lib
	cp volpack.h /sys/include/ape/
