##############################################################################
## Example config for ep7211-0034

require ecmccfg sandst_a "ENG_MODE=1,MASTER_ID=1,ECMC_VER=test_softlim"

${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd,        "SLAVE_ID=0, HW_DESC=EP7211-0034_STD"
#- Limit torque to 50% of motor rated torque.  Rated current = 2710mA, set to half I_MAX_MA=1355
${SCRIPTEXEC} ${ecmccfg_DIR}applyComponent.cmd   "COMP=Motor-Beckhoff-AM8111-XFX0, MACROS='I_MAX_MA=1355'"

#- Load axis
$(SCRIPTEXEC) $(ecmccfg_DIR)loadYamlAxis.cmd     "FILE=./cfg/axis.yaml, DRV_ID=$(ECMC_EC_SLAVE_NUM), AX_NAME='Axis1', AX_ID=1"
