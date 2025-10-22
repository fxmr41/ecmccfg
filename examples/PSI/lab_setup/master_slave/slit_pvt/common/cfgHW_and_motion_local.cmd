

# 0:14 - EL7031    1Ch Stepper
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd,       "SLAVE_ID=14,HW_DESC=EL7031"
${SCRIPTEXEC} ${ecmccfg_DIR}applyComponent.cmd  "COMP=Motor-Generic-2Phase-Stepper,  MACROS='I_MAX_MA=1000, I_STDBY_MA=500, U_NOM_MV=24000, R_COIL_MOHM=1230'"
${SCRIPTEXEC} ${ecmccfg_DIR}loadYamlAxis.cmd,   "FILE=../common/axis_ax6_HI.yaml, DRV_SLAVE=${ECMC_EC_SLAVE_NUM}, ENC_SLAVE=${ECMC_EC_SLAVE_NUM}, ENC_CHANNEL=01,M_ID=${ECMC_EC_MASTER_ID}"

${SCRIPTEXEC} ${ecmccfg_DIR}ignoreSlaves.cmd

# 0:16 - EL7041    1Ch Stepper
${SCRIPTEXEC} ${ecmccfg_DIR}addSlave.cmd,       "HW_DESC=EL7041-0052"
${SCRIPTEXEC} ${ecmccfg_DIR}applyComponent.cmd  "COMP=Motor-Generic-2Phase-Stepper,  MACROS='I_MAX_MA=1000, I_STDBY_MA=500, U_NOM_MV=48000, R_COIL_MOHM=1230'"
${SCRIPTEXEC} ${ecmccfg_DIR}applyComponent.cmd  "COMP=Generic-Ch-Not-Used, CH_ID=2"
${SCRIPTEXEC} ${ecmccfg_DIR}applyComponent.cmd  "COMP=Generic-Ch-Not-Used, CH_ID=3"
${SCRIPTEXEC} ${ecmccfg_DIR}loadYamlAxis.cmd,   "FILE=../common/axis_ax5_LO.yaml, DRV_SLAVE=${ECMC_EC_SLAVE_NUM}, ENC_SLAVE=${ECMC_EC_SLAVE_NUM}, ENC_CHANNEL=01,M_ID=${ECMC_EC_MASTER_ID}"

# Virtual axes
${SCRIPTEXEC} ${ecmccfg_DIR}loadYamlAxis.cmd,   "FILE=../common/axis_vax5_YCEN.yaml, AX_ID=${AX_NUM=12},M_ID=${ECMC_EC_MASTER_ID},DRV_SLAVE=${ECMC_EC_SLAVE_NUM}"
${SCRIPTEXEC} ${ecmccfg_DIR}loadYamlAxis.cmd,   "FILE=../common/axis_vax6_YGAP.yaml, AX_ID=${AX_NUM=13},M_ID=${ECMC_EC_MASTER_ID},DRV_SLAVE=${ECMC_EC_SLAVE_NUM}"

