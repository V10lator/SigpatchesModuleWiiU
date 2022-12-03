FROM wiiuenv/devkitppc:20220917 AS final
ENV PATH=$DEVKITPPC/bin:$PATH \
 WUT_ROOT=$DEVKITPRO/wut
COPY --from=wiiuenv/libmocha:20220919112600f3c45c /artifacts $DEVKITPRO
RUN git clone https://github.com/wiiu-env/libiosuhax.git && cd libiosuhax && make install && cd .. && rm -rf libiosuhax
