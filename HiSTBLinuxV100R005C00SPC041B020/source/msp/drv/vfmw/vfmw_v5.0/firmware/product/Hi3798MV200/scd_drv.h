
#ifndef __SCD_DRV_H__
#define __SCD_DRV_H__

#include "mem_manage.h"
#include "vfmw.h"
#include "sysconfig.h"

#define SCDDRV_OK       (0)
#define SCDDRV_ERR      (-1)
#define SCD_IDLE        (0)
#define SCD_BUSY        (1)
#define HEADER_BUFFER_SIZE         (128)

#ifdef CFG_SCD_TIME_OUT
#define SCD_TIMEOUT     (CFG_SCD_TIME_OUT)
#else
#define SCD_TIMEOUT     (20000)
#endif

#ifdef CFG_SCD_BUF
#define SCD_MSG_BUFFER  (CFG_SCD_BUF)
#else
#define SCD_MSG_BUFFER  (700*1024)  // 低延迟所需部分空间在这里一起分配
#endif

extern UADDR  s_ScdRegPhyBaseAddr[MAX_SCD_NUM];
extern UADDR  s_ScdRegResetPhyAddr[MAX_SCD_NUM];
extern UADDR  s_ScdRegResetOKPhyAddr[MAX_SCD_NUM];

#define  WR_SCDREG(id,reg,dat)   MEM_WritePhyWord((s_ScdRegPhyBaseAddr[id] + reg),(dat))
#define  RD_SCDREG(id,reg)       MEM_ReadPhyWord((s_ScdRegPhyBaseAddr[id] + reg))

typedef enum
{
    FMW_OK          = 0,
    FMW_ERR_PARAM   = -1,
    FMW_ERR_NOMEM   = -2,
    FMW_ERR_NOTRDY  = -3,
    FMW_ERR_BUSY    = -4,
    FMW_ERR_RAWNULL = -5, // Number or Size is 0
    FMW_ERR_SEGFULL = -6, // Number or Size is 0
    FMW_ERR_SCD     = -7
} FMW_RETVAL_E;

typedef enum
{
    SCDDRV_SLEEP_STAGE_NONE = 0,      // 未休眠
    SCDDRV_SLEEP_STAGE_PREPARE,       // 收到休眠命令，但还未完成休眠
    SCDDRV_SLEEP_STAGE_SLEEP          // 已休眠
} SCDDRV_SLEEP_STAGE_E;

/* control registers */
#define  REG_SCD_START        0x800
#define  REG_LIST_ADDRESS     0x804
#define  REG_UP_ADDRESS       0x808
#define  REG_UP_LEN           0x80c
#define  REG_BUFFER_FIRST     0x810
#define  REG_BUFFER_LAST      0x814
#define  REG_BUFFER_INI       0x818
#define  REG_SCD_INT_MASK     0x81c
#define  REG_SCD_PROTOCOL     0x820
#define  REG_SCD_INI_CLR      0x824
/* state registers */
#define  REG_SCD_OVER         0x840
//#define  REG_SCD_INT          0x844

#define REG_PREVIOUS_BYTE_LSB      0x83c
#define REG_PREVIOUS_BYTE_MSB     0x844

#define  REG_SCD_NUM          0x84c
#define  REG_ROLL_ADDR        0x850
#define  REG_SRC_EATEN        0x854

#define REG_SEG_BUFFER_OFFSET    0x858
#define REG_SEG_NEXT_ADDR     0x85c

//add by l00225186 2012-03-21 3716cv200
#define  REG_DSP_SPS_MSG_ADDRESS      0x828
#define  REG_DSP_PPS_MSG_ADDRESS      0x82c
#define  REG_DVM_MSG_ADDRESS           0x830
#define  REG_SED_TOP_ADDRESS           0x834
#define  REG_CA_MN_ADDRESS             0x838
//end add
#define  REG_SCD_CLK_CFG      0x880

#define  REG_AVS_FLAG       0x0000
#define  REG_EMAR_ID        0x0004
#define  REG_VDH_SELRST        0x0008
#define  REG_VDH_ARBIT_CTRL_STATE             0X0010
#define  REG_VDH_CK_GT       0x000c
#define  REG_DSP_WATCH_DOG             0X0018
/*######################################################
       macro & constants
 ######################################################*/
// 实例状态
#define SM_INST_MODE_IDLE   0
#define SM_INST_MODE_WORK   1
#define SM_INST_MODE_WAIT   2


// 极限常数
#ifdef CFG_MAX_RAW_NUM
#define MAX_STREAM_RAW_NUM  CFG_MAX_RAW_NUM
#else
#define MAX_STREAM_RAW_NUM  (1024)   ///?????? for test
#endif

#ifdef CFG_MAX_SEG_NUM
#define MAX_STREAM_SEG_NUM  CFG_MAX_SEG_NUM
#else
#define MAX_STREAM_SEG_NUM  (2048)
#endif

#define MAX_STREAM_SEG_ALLOW    (100000)
#define MIN_STREAM_SEG_NUM      4//最小启动SCD的消息池的个数
#define SM_MAX_SMID             MAX_CHAN_NUM
#define SM_SCD_UP_INFO_NUM      2
#ifdef SCD_MP4_SLICE_ENABLE
#define MAX_SM_SCD_UP_INFO_NUM  3  //MPEG4上行消息区使用3个word，其他协议使用2个word，取最大的
#else
#define MAX_SM_SCD_UP_INFO_NUM  SM_SCD_UP_INFO_NUM
#endif
#define SM_MAX_DOWNMSG_SIZE     (3*MAX_STREAM_RAW_NUM*sizeof(SINT32))
#define SM_MAX_UPMSG_SIZE       (SM_SCD_UP_INFO_NUM*MAX_STREAM_SEG_NUM*sizeof(SINT32))

//add by l00225186 2013-03-22 3716cv200
#define DSP_SPS_MSG_SIZE    (32*8*4)
#define DSP_PPS_MSG_SIZE    (256*8*4)
#define DVM_SIZE             (2*64*4)
#define DSP_SED_TOP_SIZE    (64*4*1088)
#define CA_MN_SIZE           (64*4*1088)
//end add

#define SM_SEGWASTE_BUF_SIZE  64     //Seg剩余空间浪费的大小

//#define MIN_BTM_SEG_LEN  (2*1024)  // 要求WORD整数倍, 用来拷贝卷绕的,现在用FPGA_SCD_SEG_BLANK_AHB_LEN
#define MIN_TOP_SEG_LEN  (1*1024)    // 要求WORD整数倍，可能解冒的
#define SM_H263_THRESHOLD_NUM 30     //连续多少个H263头出现后就算成H263模式

#define SM_RAW_DISCARD_SIZE    (1024*1024)

#define WAIT_SEG_REL_MAX_TIME   1000
#define WAIT_SCD_RDY_MAX_TIME   1000

#define SM_VIDOBJLAY_START_CODE        0x00000120
#define SM_VOP_START_CODE              0x000001b6
#define SM_SHORT_VIDEO_START_CODE      0x00008000

#define SEG_CUT_NORMAL   0
#define SEG_CUT_REPEAT   1
#define SEG_CUT_HALF     2

#define SMSEG_STATE_INVALID   0
#define SMSEG_STATE_FRESH     1
#define SMSEG_STATE_READOUT   2

#define SMSEG_IS_READ( seg )     (((seg).SegState == SMSEG_STATE_READOUT) ? 1 : 0)
#define SMSEG_IS_RELEASED( seg ) (((seg).SegState == SMSEG_STATE_INVALID) ? 1 : 0)
#define SMSEG_IS_FRESH( seg )    (((seg).SegState == SMSEG_STATE_FRESH) ? 1 : 0)

#define SMSEG_SET_ISREAD( seg )                       \
    do{                                     \
        (seg).SegState = SMSEG_STATE_READOUT;                             \
    } while (0)

#define SMSEG_SET_ISRELEASED( seg )                     \
    do{                                     \
        (seg).SegState = SMSEG_STATE_INVALID;                             \
    } while (0)

#define SMSEG_SET_ISFRESH( seg )                      \
    do{                                     \
        (seg).SegState = SMSEG_STATE_FRESH;                             \
    } while (0)

#define FMW_ASSERT( cond )                          \
    do{                                     \
        if( !(cond) )                             \
        {                                   \
            return;                               \
        }                                   \
    } while (0)

#define FMW_ASSERT_RET(cond, ret)                     \
    do{                                     \
        if (!(cond))                             \
        {                                   \
            return (ret);                           \
        }                                   \
    } while (0)

#define SMSEG_PHY2VIR(SegArrayPtr, phy, vir)                \
    do{                                     \
        (vir) = SegArrayPtr->pSegBufVirAddr + ((phy) - SegArrayPtr->SegBufPhyAddr); \
    } while (0)

/*Check Val is between MinValue and MaxValue*/
#define SM_CHECK_VALUE(Val,MinValue,MaxValue,RetAction) \
    do \
    {\
        if (((Val) < (MinValue)) || ((Val) > (MaxValue)))\
        {\
            RetAction;\
        }\
    }while(0)

/*######################################################
       struct defs.
 ######################################################*/
typedef enum
{
    INITIALISE = 0,
    WRITE_DOWN_MSG = 1,
    IN_ISR = 2,
    SEEK_PTS = 3
} PUSH_RAW_OVER_STATE;

typedef struct
{
    STREAM_DATA_S RawPacket[MAX_STREAM_RAW_NUM];
    SINT32      Head;
    SINT32      Tail;
    SINT32      History;
    SINT32      FirstPacketOffset;
    SINT32      CurShowIndex;
    SINT32      RawTotalSize;
} RAW_ARRAY_S;

typedef struct
{
    SINT8    ScdIntMask;
    UINT8    SliceCheckFlag;
    SINT8    ScdStart;
    UADDR    DownMsgPhyAddr;
    SINT32   *pDownMsgVirAddr;
    SINT32   *pUpMsgVirAddr;
    UADDR    UpMsgPhyAddr;
    SINT32   UpLen;
    UADDR    BufferFirst;
    UADDR    BufferLast;
    UADDR    BufferIni;
    UINT32   ScdProtocol;
    SINT32   ScdIniClr;
    UINT32   ScdLowdlyEnable;
    UINT32   ScdMmuEn;
    UINT32   VdhMmuEn;
    SINT32   reg_avs_flag;
} SM_CTRLREG_S;

typedef struct
{
    SINT32  Avs_Flag;
    SINT32  EMAR_ID;
    SINT32  VDH_SEL_RST_EN;
} GLB_CTRLREG_S;
typedef struct
{
    SINT32  Scdover;
    SINT32  ScdInt;
    SINT32  ShortScdNum;
    UINT32  StartCodeNum;
    UADDR   ScdRollAddr;
    SINT32  SrcEaten;
    UINT32  UpMsgLenInWord;
    UADDR  seg_next_addr;
} SM_STATEREG_S;

/* MEPG4 特有的有效上行消息 */
typedef struct
{
    USIGN  IsShStreamFlag:        1;
    USIGN  SliceFlag:             1;
    USIGN  IsShortHeader:         1;
    USIGN  StartCodeBitOffset:    4;
    USIGN  StartCodeLength:       4;
    USIGN  Reserved:              21;
} MP4_SCD_UPMSG;

typedef struct
{
    UINT8     *VirAddr;
    SINT8     SegState;
    SINT8     CutResult;
    UINT8     IsLastSeg;
    UINT8     IsStreamEnd;
    UINT8     DspCheckPicOverFlag;
    UADDR     PhyAddr;
    UINT32    LenInByte;
    SINT32    StreamID;
    UINT64    Pts;
    UINT64    RawPts;
    UINT64    Usertag;
    UINT64    DispTime;
    UINT32    DispEnableFlag;
    UINT32    DispFrameDistance;
    UINT32    DistanceBeforeFirstFrame;
    UINT32    GopNum;
    /* MEPG4 特有的有效上行消息 */
    MP4_SCD_UPMSG stMp4UpMsg;
} STREAM_SEG_S;


/********************************************************************************

RawPacket 原始码流信息的记录空间，最大可记录MAX_RAW_PACKET_NUM个码流包的信息。
Head    第一个有效记录的位置
Tail    最后一个有效记录的位置
SegBufPhyAddr 码流片段缓冲区物理地址
pSegBufVirAddr  码流片段缓冲区虚拟地址
SegBufSize    码流片段缓冲区大小，单位：字节
SegBufReadAddr  码流片段缓冲区的读地址
SegBufWriteAddr 码流片段缓冲区的写地址
*********************************************************************************/
typedef struct
{
    UINT8         *pSegBufVirAddr;
    STREAM_SEG_S  StreamSeg[MAX_STREAM_SEG_NUM];
    SINT32        Head;
    SINT32        Tail;
    SINT32        History;
    SINT32        Current;
    UADDR         SegBufPhyAddr;
    SINT32        SegBufSize;
    UADDR         SegBufReadAddr;
    UADDR         SegBufWriteAddr;

    SINT32        SegTotalSize;    /* SegTotalSize:  Insert加, Release减 */
    SINT32        SegFreshSize;    /* SegFreshSize:  Insert加, Read减 */
    SINT32        SegFreshNum;
} SEG_ARRAY_S;


/********************************************************************************
Mode  指定配置后SM实例的工作模式。
        0：非工作模式
        1：工作模式
        如果Mode＝0表明外部模块希望这个SM实例停止工作，这种情况下只需关闭此实例，其它成员的取值被忽略。
Priority    优先级
            优先级通常是一个大于零的整数，数值越大优先级越高。
            0代表"无权限"，即无优先级，任何时候都不会被调度。
VidStd  VID_STD_E 视频协议类型。由于视频协议的多样性，在码流切分和管理中可能存在与协议相关的操作，这个参数指定协议类型。
DownMsgAddr 下行消息（码流链）的物理地址
DownMsgSize 下行消息的大小（字节数）
UpMsgAddr   上行消息（起始码地址集）的物理地址
UpMsgSize   上行消息的大小（字节数）
SegBufAddr  码流缓冲区的物理地址。这个缓冲区中存放的是被SCD（或其它等效模块）切割好的码流。缓冲区地址分为物理地址和虚拟地址，是为了适应某些操作系统（比如Linux）的特点，在其它操作系统中，虚拟地址和物理地址被置成同一个值即可。
SegBufSize  缓冲区的大小，以字节为单位。
*********************************************************************************/
typedef struct
{
    UINT8        *pBufVirAddr;
    UINT8         Priority;
    VID_STD_E     VidStd;

    UADDR         BufPhyAddr;
    SINT32        BufSize;

    /*寄存器物理基地址*/
    UADDR         RegPhyBaseAddr;
    STD_EXTENSION_U    StdExt;              /* 扩展信息，VC1相关的是码流是否为AP 和版本信息*/
    SINT32        ScdLowdlyEnable;          /* 0: 低延迟未使能; 1: 低延迟使能 */
    SINT32        SedOnlyEnable;
    SINT32        s32ChanLowlyEnable;
    SINT32        IsOmxPath;             /* 0: 低缓存未使能; 1: 低缓存使能 */
    SINT32        MaxRawPacketNum;
    SINT32        MaxRawPacketSize;
    SINT32        s32ScdMmuEn;
    SINT32        s32VdhMmuEn;
} SM_CFG_S;

typedef struct
{
    UINT8        *pSegBufVirAddr;
    UINT32       *pDownMsgVirAddr;
    SINT32        DownMsgSize;
    UADDR         DownMsgPhyAddr;
    UINT32        *pUpMsgVirAddr;
    UADDR         UpMsgPhyAddr;
    SINT32        UpMsgSize;
    SINT32        UpMsgNum;
    UADDR         SegBufPhyAddr;
    SINT32        SegBufSize;
} SM_BUFFERCFG_S;

/********************************************************************************
 SM实例的信息结构，用于对外传递内部信息，在GetInfo()接口中使用
*********************************************************************************/
typedef struct
{
    SINT8         InstMode;      /* 0: 非工作模式,  1: 工作模式   */
    SINT32        RawNum;        /* 原始码流包数目                */
    SINT32        SegNum;        /* 原始码流数据总量              */
    SINT32        TotalRawSize;  /* 已切割的码流片段数目          */
    SINT32        TotalSegSize;  /* 已切割的码流片段数据总量      */
    SINT32        numReadSegFail;  /* 连续读不到seg的计数 */
} SM_INST_INFO_S;

/********************************************************************************
 每次送入Scd的Raw码流的属性，需要后面SegStream打Pts使用
*********************************************************************************/
typedef struct
{
    UINT8    *pCurrStartVirAddr;
    UINT8    *pCurrEndVirAddr;
    UADDR     CurrStartPhyAddr;
    UADDR     CurrEndPhyAddr;
    SINT32    Length;
    SINT32    TotalLen;//从第0包到当前包的累计长度
    UINT64    Pts;
} SM_PUSHRAWPACKET_S;

typedef struct
{
    SINT32  PushRawNum;
    SINT32  PushRawTotalLen;
    PUSH_RAW_OVER_STATE PushRawOverState;
} SM_PUSHRAW_S;

typedef enum
{
    SM_NOT_MPEG4 = 0,
    SM_MPEG4_NOTH263,
    SM_MPEG4_H263
} MPEG4_SUB_STD;

typedef struct
{
    UINT8    *pSegBufVirAddr;//Seg Buffer的虚拟地址,取数据时使用
    UINT32   *pScdUpMsg;      //被过滤的上行消息的地址
    SINT32    ProtocolType;
    SINT32    ModeFlag;       //0:在非Mpeg4模式; 1:上一次不是H263模式, 2:上一次是H263模式
    SINT32    LastH263Num;    //上一次解码连续为H263头的数量
    UADDR     SegBufPhyAddr;
    SINT32    SegBufSize;
    UADDR     SegBufRollAddr;
    SINT32    SegNum;         //被过滤的SegStream共有多少包
    SINT32    SMInstID;       //add by l0022808 当前包的实例ID
} SM_SEGSTREAMFILTER_S;

typedef struct
{
    SINT8          SegFullFlag;
    SINT8          IsCounting;
    SINT8          LastCfgAllRawFlag; // 1 : 该实例上次启动SCD时对所有的RAW码流都进行了配置处理，该标志位在每次SCD启动时进行判断赋值
    SINT8          FillNewRawFlag; // 1 : 该实例上次SCD处理后又有新的RAW码流，该标志位会在每次SCD启动后清0
    SM_CFG_S       Config;
    RAW_ARRAY_S    RawPacketArray;
    SEG_ARRAY_S    StreamSegArray;
    SM_PUSHRAW_S   SmPushRaw;
    SM_BUFFERCFG_S BufAddrCfg;
    SINT32         InstID;
    SINT32         ScdID;         //记录当前通道被处理的SCD id号，用于SM_Stop等函数中,在启动SCD切割钱要重新赋值
    SINT32         CutingFlag;    //记录当前通道是否正在被SCD切割，在SM_SCDIntServeProc中断处理函数中清0，在CutStreamWithSCD中置1
    SINT32         MatchScdIdPlus1;  //记录当前通道匹配的SCDid +1; -1->该通道DSP处理部分未就绪，不能处理；0->随机使用SCD切割；1->固定选用SCD0切割；2->固定选用SCD1切割...;
    SINT32         Mode;
    UINT32         Mpeg4ModeFlag;
    UINT32         LastH263Num;
    UINT32         BlockTimeInMs;  // 被阻塞的时间，单位ms
    UINT32         LastBlockTime;  // 上一次被阻塞的时间(系统时间)，用于后续刷新阻塞时间
    UINT64         LastPts;//如果本次的Pts与上次相同则打上-1
    SINT32         PrevCfgRawSize;
    SINT32         PrevCfgSegSize;

    /* 统计码率 */
    SINT32         TotalRawSize;
    UINT32         LastStatTime; //用于统计码率的时间
    UINT32         BitRate;  // 码率, 单位Kbps

    /* 其它统计信息 */
    SINT32 numReadSegFail;
    SINT32 LastSCDStartTime; //上次启动SCD处理的时间，单位 毫秒

    UINT32 UpMsgStepInWord;
    UINT32 u32RawSizeCount;
    UINT32 u32RawNumCount;
    SINT32 s32ChanLowlyEnable;    /* chan lowdly enable */

    UINT32 HeaderLen;
    UINT8  HeaderBuf[HEADER_BUFFER_SIZE];

    SINT32 s32ScdInputMmuEn;

    UINT16 pre_scd_previous_byte_msb;
    UINT32 pre_scd_previous_byte_lsb;

    UINT16 scd_previous_byte_msb;
    UINT32 scd_previous_byte_lsb; // near to the next seg

    UADDR seg_next_addr;

    UINT32 first_start_scd_flag;

    UADDR last_start_code_addr;
    UINT32 last_unfinished_seg_size;

    UINT32 roll_flag;
    UADDR roll_addr;

	STREAM_SEG_S last_unfinished_seg;
    UINT64 raw_msg_arr[MAX_STREAM_RAW_NUM][2];
} SM_INSTANCE_S;

typedef struct hiSCD_DRV_MEM_S
{
    UADDR          HwMemAddr;
    SINT32         HwMemSize;
    UINT32        *pDownMsgMemVirAddr;
    UADDR          DownMsgMemAddr;
    SINT32         DownMsgMemSize;
    SINT32        *pUpMsgMemVirAddr;
    UADDR          UpMsgMemAddr;
    SINT32         UpMsgMemSize;
    UADDR          ScdRegAddr;
    UADDR          ScdResetRegAddr;
} SCD_DRV_MEM_S;

/********************************************************************************
ThisInstID    当前SCD正在处理的实例编号
ScdState    SCD的工作状态：
          0：空闲（未启动）
          1：运行（正在运行中）
*********************************************************************************/
typedef struct
{
    SCD_DRV_MEM_S       ScdDrvMem;
    SINT32              IsScdDrvOpen;
    SINT32              ThisInstID;
    SINT32              SCDState;
    UINT32              LastProcessTime;
    SINT32              DspReloadFlag;
} SMDRV_PARAM_S;

/********************************************************************************
SmInstArray     SM实例数组，记录SCD实例的信息的指针
DspCtxMem       SM实例对应分配的DSP资源描述符
SmInstPriority  SM实例的优先级
          0代表最高优先级，1次之，依次类推
*********************************************************************************/
typedef struct
{
    SM_INSTANCE_S      *pSmInstArray;
    SINT32              SmInstPriority;
} SM_IIS_S;

SINT32 SetPushRawOverState(SM_PUSHRAW_S *pSmPushRaw, PUSH_RAW_OVER_STATE PushRawOverState);

/*######################################################
       interface functions.
 ######################################################*/
SINT32 SCDDRV_PrepareSleep(SINT32 ScdId);
SCDDRV_SLEEP_STAGE_E SCDDRV_GetSleepStage(SINT32 ScdId);
VOID SCDDRV_ForceSleep(SINT32 ScdId);
VOID SCDDRV_ExitSleep(SINT32 ScdId);
SINT32 ResetSCD(SINT32 ScdId);

/************************************************************************
  原型  VOID ResetRawStreamArray( RAW_ARRAY_S *pRawStreamArray )
  功能  将一组原始码流集合复位，清除其中所有记录
  参数  pRawStreamArray 指向原始码流集合
  返回值  无
************************************************************************/
VOID ResetRawStreamArray(RAW_ARRAY_S *pRawStreamArray);

/************************************************************************
  原型  SINT32 GetRawIsFull(SINT32 SmID)
  功能  得到Raw Buffer能否插入的状态
  参数  SmID  码流管理模块的实例的标识
  返回值  可以插入Raw Packet就返回FMW_OK，否则返回错误码
************************************************************************/
SINT32 GetRawState(SINT32 SmID);

/************************************************************************
  原型  SINT32 SetFirstOffset( RAW_ARRAY_S *pRawStreamArray, SINT32 Offset )
  功能  设置第一个码流包的有效字节偏移
  参数  pRawStreamArray 指向原始码流集合
    Offset  第一个数据包的有效字节偏移量
  返回值  成功返回FMW_OK，否则返回错误码
************************************************************************/
SINT32 SetFirstOffset(RAW_ARRAY_S *pRawStreamArray, SINT32 Offset);

/************************************************************************
  原型  SINT32 GetFirstOffset( RAW_ARRAY_S *pRawStreamArray, SINT32 *pOffset )
  功能  获取第一个码流包的有效字节偏移
  参数  pRawStreamArray 指向原始码流集合
        pOffset 第一个数据包的有效字节偏移量
  返回值  成功返回FMW_OK，否则返回错误码
************************************************************************/
SINT32 GetFirstOffset( RAW_ARRAY_S *pRawStreamArray, SINT32 *pOffset );

/************************************************************************
  原型  SINT32 DeleteRawPacket( RAW_ARRAY_S *pRawStreamArray, UINT32 DelNum )
  功能  从第一码流包开始，连续删除DelNum个码流包。
          由于有码流片段缓冲区的存在，原始码流无需乱序释放，所以原始码流
      管理模块可以只支持按插入顺序释放。码流包从原始码流集中删除的同时，
      也会调用MPP的接口通知外部组建释放对应的码流空间。
  参数  pRawStreamArray 指向原始码流集合
        pRawPacket  指向原始码流包的结构，用于接收码流包信息
  返回值  成功返回FMW_OK，否则返回错误码
************************************************************************/
SINT32 DeleteRawPacket( RAW_ARRAY_S *pRawStreamArray, UINT32 DelNum );

/************************************************************************
原型    SINT32 DeleteRawPacketInBuffer(SINT32 SmID, SINT32 ResetFlag)
功能    从history开始，连续删除到head
参数    pRawStreamArray 指向原始码流集合
返回值  成功返回FMW_OK，否则返回错误码
************************************************************************/
SINT32 DeleteRawPacketInBuffer(SINT32 SmID, SINT32 ResetFlag);

SINT32 GetRawNumOffset(RAW_ARRAY_S *pRawStreamArray, SINT32 RawPacketLength, SINT32 *pRawNum, SINT32 *pPacketOffset, UINT32 *pIndex);

/************************************************************************
  原型  SINT32 DeleteRawLen( RAW_ARRAY_S *pRawStreamArray, SINT32 DelLen )
  功能  从第一码流包开始，连续删除DelLen的码流包如果删除的长度不够，则要置偏移。
  参数  pRawStreamArray 指向原始码流集合
        DelLen  总共需要删除的长度
  返回值  成功返回FMW_OK，否则返回错误码
************************************************************************/
SINT32 DeleteRawLen( RAW_ARRAY_S *pRawStreamArray, SINT32 DelLen );

/************************************************************************
  原型  SINT32 DeleteLastSendRaw( UINT32 SmID  )
  功能  删除SmID所指向的通道，上次所送入SCD的码流
  参数  SmID通道号
  返回值  无
************************************************************************/
VOID DeleteLastSendRaw( UINT32 SmID );

/************************************************************************
  原型  SINT32 GetRawStreamSize( RAW_ARRAY_S *pRawStreamArray, SINT32 *pStreamSize)
  功能  将原始码流集合中所有包的长度累加起来即为码流总量，目的是获得目前的码流占用情况。
  参数  pRawStreamArray 指向原始码流集合
  返回值  成功返回码流长度，否则返回错误码（负整数）
************************************************************************/
SINT32 GetRawStreamSize( RAW_ARRAY_S *pRawStreamArray, SINT32 *pStreamSize);

/************************************************************************
    原型  SINT32 GetRawStreamNum( RAW_ARRAY_S *pRawStreamArray, SINT32 *pStreamNum )
    功能  将原始码流集合中已被推送但尚未被切割的码流包数，目的是获得目前的码流占用情况。
    参数  pRawStreamArray 指向原始码流集合
    返回值  成功返回pStreamNum码流包数，并返回FMW_OK,失败则返回错误码（负整数）
************************************************************************/
SINT32 GetRawStreamNum( RAW_ARRAY_S *pRawStreamArray, SINT32 *pStreamNum );

/*========================================================================
    part2.    stream segment management module
========================================================================*/

/************************************************************************
  原型  SINT32 ConfigStreamSegArray( SEG_ARRAY_S *pStreamSegArray, UINT32 BufPhyAddr, UINT8 *pBufVirAddr, UINT32 BufSize )
  功能  为码流片段集合配置必要的信息，如码流片段缓冲区的首地址、长度等。
  参数  pStreamSegArray 指向切割码流片段集合
        BufPhyAddr  码流片段缓冲区物理地址
        BufSize 码流片段缓冲区大小，单位：字节
  返回值  成功返回FMW_OK，否则返回错误码
************************************************************************/
SINT32 ConfigStreamSegArray( SEG_ARRAY_S *pStreamSegArray, UADDR BufPhyAddr, UINT8 *pBufVirAddr, UINT32 BufSize );

/************************************************************************
  原型  VOID ResetStreamSegArray( SEG_ARRAY_S *pStreamSegArray )
  功能  将一组切割码流片段集合复位，清除其中所有记录，释放全部切割码流缓冲空间。
  参数  pStreamSegArray 指向切割码流片段集合
  返回值  无
************************************************************************/
VOID ResetStreamSegArray( SEG_ARRAY_S *pStreamSegArray );
UINT32 GetSegBufFreeSize(SEG_ARRAY_S *pStreamSegArray);

/************************************************************************
  原型  SINT32 InsertStreamSeg( SEG_ARRAY_S *pStreamSegArray, STREAM_SEG_S *pStreamSeg )
  功能  向特定的码流片段集中插入一个码流片段。
      本函数的任务有两个，第一是将待插入码流片段的描述信息加入到队列中，第二是更新码流片段缓冲区的写地址。
  参数  pStreamSegArray 指向切割码流片段集合
      pStreamSeg  待插入码流片段的描述信息
  返回值  成功返回FMW_OK，否则返回错误码
************************************************************************/
SINT32 InsertStreamSeg(SEG_ARRAY_S *pStreamSegArray, STREAM_SEG_S *pStreamSeg , SINT32 InstID);

/************************************************************************
  原型  SINT32 GetStreamSeg( SEG_ARRAY_S *pStreamSegArray, STREAM_SEG_S *pStreamSeg )
  功能  从特定的码流片段集中取出一个码流片段：将处于队列头的码流片段信息取出。
  参数  pStreamSegArray 指向流片段集合
        pStreamSeg  存储码流片段的描述信息的结构指针
  返回值  成功返回FMW_OK，否则返回错误码
************************************************************************/
SINT32 GetStreamSeg( SEG_ARRAY_S *pStreamSegArray, STREAM_SEG_S *pStreamSeg );

/************************************************************************
  原型  SINT32 ReleaseStreamSeg( SEG_ ARRAY_S *pStreamSegArray, UINT32 StreamID)
  功能  将ID为StreamID的码流片段释放，如果这个码流片段是历史上已读取但未释放的第一段码流，则同步更新码流片段缓冲区的读地址。
  参数  pStreamSegArray 指向流片段集合
      StreamID  待释放码流片段的ID
        如果StreamID取值在0~ MAX_STREAM_SEG_NUM-1之间则表示要释放索引号为StreamID的码流片段；
        如果StreamID = 0xffffffff，则表示释放第一个码流片段。这个参数的使用场景是，如果码流
      解析模块长时间不释放码流包，出于容错考虑SM模块需要强制释放第一包，以腾出空间来继续切割码流，
      避免死锁。这种情况下，无论第一个码流片段是否被读走，都强制释放。
  返回值  成功返回FMW_OK，否则返回错误码
************************************************************************/
SINT32 ReleaseStreamSeg(SEG_ARRAY_S *pStreamSegArray, UINT32 StreamID);

/************************************************************************
    原型  SINT32 GetSegStreamSize( SEG_ARRAY_S *pSegStreamArray, SINT32 *pStreamSize)
    功能  将码流片断集合中所有包的长度累加起来即为码流总量，目的是获得目前的码流占用情况。
    参数  pSegStreamArray 指向码流片断集合
    返回值  成功返回码流长度，否则返回错误码（负整数）
************************************************************************/
SINT32 GetSegStreamSize(SEG_ARRAY_S *pSegStreamArray, SINT32 *pStreamSize);
UINT32 GetSegStreamNum(SEG_ARRAY_S *pSegStreamArray);

VOID GetFreshSegStream( SEG_ARRAY_S *pSegStreamArray, SINT32 *pFreshNum, SINT32 *pFreshSize);

/*========================================================================
    part3.    top level
========================================================================*/
SINT32 SM_OpenSCDDrv(UADDR MemAddr, SINT32 MemSize, SINT32 ScdId);
SINT32 SM_CloseSCDDrv(SINT32 ScdId);
VOID SM_GiveThreadEvent(SINT32 SmID);
VOID SCDDRV_MaskInt(SINT32 ScdId);
VOID SCDDRV_EnableInt(SINT32 ScdId);
//SINT32 SM_GetInstanceRawDiscontinue(SINT32 InstID);
//SINT32 SM_SetRawDiscontinueFlag(SINT32 InstID, SINT32 Flag);
//SINT32 SM_GetInstanceStreamEmptyFlag(SINT32 InstID);
VOID SM_InstInit(VOID);
VOID SCDDRV_ResetSCD(SINT32 ChanID);

/************************************************************************
  原型  SINT32 SM_Reset ( SINT32 SmID )
  功能  本函数用以复位一个码流管理模块的实例，
      本函数使得ID号为SmID的码流管理模块实例的所有状态都回到初始值。
  参数  SmID  标识码流管理模块的上下文信息。在多路解码中，每一路解码器都有一个码流管理模块的
      实例，SmID指向某个特定的实例。
  返回值  成功返回FMW_OK，否则返回特定的错误码
************************************************************************/
SINT32 SM_ClearInst (SINT32 SmID);
SINT32 SM_Reset ( SINT32 SmID );
SINT32 SM_Start (SINT32 SmID);
SINT32 SM_Stop (SINT32 SmID);

/************************************************************************
  原型  SINT32 SM_Config ( SINT32 SmID, SM_CFG_S *pSmCfg )
  功能  本函数用以配置一个码流管理模块的实例，在这个实例开始工作之前，必须调用此函数给它配置必要的信息。
  参数  SmID  标识码流管理模块的上下文信息。在多路解码中，每一路解码器都有一个码流管理模块的实例，
      SmID指向某个特定的实例。
      pSmCfg  SM实例的配置信息
  返回值  成功返回FMW_OK，否则返回特定的错误码
************************************************************************/
SINT32 SM_Config ( SINT32 SmID, SM_CFG_S *pSmCfg );
SINT32 SM_CfgBuf ( SINT32 SmID, SINT32 ScdId );

/************************************************************************
    原型    SINT32 SM_GetInfo( SINT32 SmID, SM_INST_INFO_S *pSmInstInfo )
    功能  本函数查询码流管理模块中原始码流已累计了多少包，已切割待解码的码流有多少段。在多路解码环境下，上层调度程序可能需要根据每一路的这些信息来决定将SCD分配给哪一路去切割码流。
    参数  SmID  码流管理模块的实例的标识
            pSmInstInfo  存放实例信息的结构
    返回值  FMW_ERR_PARAM or FMW_OK
************************************************************************/
SINT32 SM_GetInfo( SINT32 SmID, SM_INST_INFO_S *pSmInstInfo );

SINT32 SM_ReadSegStream(SINT32 SmID, STREAM_SEG_S *pStreamSeg);

/************************************************************************
  原型  SINT32 SM_ReleaseStreamSeg( SINT32 SmID, SINT32 StreamID )
  功能  本函数将协议层已经解码完毕的码流片归还给码流管理模块
  参数  SmID  码流管理模块的实例的标识
        StreamID  码流片的ID
  返回值  无
************************************************************************/
SINT32 SM_ReleaseStreamSeg( SINT32 SmID, SINT32 StreamID );

SINT32 CalcInstBlockTime(SM_INSTANCE_S *pSmInstArray, SINT32 FirstCalc);
/*========================================================================
    part4.   SCD level 码流切割和控制子模块
========================================================================*/
SINT32 CutStreamWithSCD(SM_INSTANCE_S *pScdInstance, SINT32 ScdId);
SINT32 SCDDRV_StartSCD(SM_CTRLREG_S *pSmCtrlReg, SM_INSTANCE_S *pScdInstance, SINT32 SegStreamSize, SINT32 ScdId);

/************************************************************************
  原型  VOID WriteScdVtrlReg()
    功能  配置Scd状态寄存器函数
    参数
    返回值
************************************************************************/
VOID WriteScdVtrlReg(SINT32 InstID, SM_CTRLREG_S *pSmCtrlReg,SINT32 ScdId);

SINT32 WriteScdMsg(SINT32 InstID, SM_PUSHRAW_S* pSmPushRaw, SINT32 SegStreamSize, RAW_ARRAY_S* pRawStreamArray,
                   SINT32* pDownMsgVirAddr, UADDR DownMsgPhyAddr, SINT32 SCDLowdlyFlag);


/************************************************************************
  原型  VOID ReadScdStateReg(SM_STATEREG_S *pSmStateReg)
    功能  读取Scd状态寄存器函数
    参数
    返回值
************************************************************************/
VOID ReadScdStateReg(SM_STATEREG_S *pSmStateReg, SINT32 ScdId);
SINT32 CheckSegValid(STREAM_SEG_S *pSegPacket, SEG_ARRAY_S *pStreamSegArray);
VOID GetSegPts(RAW_ARRAY_S *pRawStreamArray, UINT32 Len, UINT64 *pLastPts, STREAM_SEG_S *pSegPacket);

/************************************************************************
原型  SINT32 ProcessSCDReturn(RAW_ ARRAY_S *pRawStreamArray, SEG_ARRAY_S *pStreamSegArray, SINT32 *pCutRawNum)
功能  处理SCD的返回信息。
        本函数从SCD的寄存器和上、下行消息池中读取上一次的码流切割信息，完成下列两种操作：
        1.  根据上行消息将各帧（或NAL）码流按STREAM_SEG_S格式组织并且插入到码流片段集pStreamSegArray中管理起来
        2.  分析此次切割消耗了多少原始码流包，并将这些码流包释放。
        参数
        pRawStreamArray 原始码流集
        pStreamSegArray 切割码流片段集
返回值  FMW_OK或错误码
************************************************************************/
SINT32 ProcessScdReturn(SM_INSTANCE_S *pScdInstance, SINT32 ScdId);

/************************************************************************
  原型  VOID SM_SCDIntServeProc ( VOID )
  功能  本函数为SCD的中断服务程序，响应SCD的中断信号并处理其返回的信息。
  参数  无
  返回值  无
************************************************************************/
VOID SM_SCDIntServeProc ( SINT32 ScdId);

/************************************************************************
  原型  VOID SM_Wakeup ( VOID )
  功能  本函数用于唤醒SM模块，避免SM停工后无法恢复运行。
      如果采用线程监控SCD，则解码线程在每解完一帧调用此函数。
      如果采用定时中断监控SCD，则在定时中断中调用此函数。
  参数  无
  返回值  无
************************************************************************/
VOID SM_Wakeup ( VOID );
VOID  SM_SimpleEntry(VOID);

/************************************************************************
  原型  VOID SM_GetBasePhyVir(SINT32 SmID, SINT32 *pBasePhyAddr, UINT8 **pBaseVirAddr)
  功能  得以基物理地址与基虚拟地址
  参数  无
  返回值  输出的虚拟地址
************************************************************************/
VOID SM_GetBasePhyVir(SINT32 SmID, SINT32 *pBasePhyAddr, UINT8 **pBaseVirAddr);

/************************************************************************
  原型  UINT8 *SM_PhyToVir(SINT32 BasePhyAddr, UINT8 *pBaseVirAddr, SINT32 PhyAddr)
  功能  物理地址转成虚拟地址
  参数  无
  返回值  输出的虚拟地址
************************************************************************/
UINT8 *SM_PhyToVir(UADDR PhyAddr);

/************************************************************************
原型  UINT8 *SM_ScdPhyToVir(SINT32 BasePhyAddr, UINT8 *pBaseVirAddr, SINT32 PhyAddr)
功能  物理地址转成虚拟地址
参数  无
返回值  输出的虚拟地址
************************************************************************/
UINT8 *SM_ScdPhyToVir(UADDR BasePhyAddr, UINT8 *pBaseVirAddr, UADDR PhyAddr);

/************************************************************************
原型  VOID PrintScdRawState()
功能  打印Raw队列的详细情况
参数
返回值  无
************************************************************************/
VOID PrintScdRawState(SINT32 SmID, SINT32 PrintDetail);

/************************************************************************
原型  VOID PrintScdSegState()
功能  打印Seg队列的详细情况
参数
返回值  无
************************************************************************/
VOID PrintScdSegState(SINT32 SmID, SINT32 PrintDetail);
/************************************************************************
原型  VOID PrintScdVtrlReg()
功能  打印Scd控制寄存器函数
参数
返回值  无
************************************************************************/
VOID PrintScdVtrlReg(SINT32 ScdId);

/************************************************************************
原型  VOID PrintScdVtrlReg()
功能  打印下行消息池
参数
返回值  无
************************************************************************/
VOID PrintDownMsg(UADDR DownMsgPhyAddr, SINT32 * pDownMsgVirAddr, SINT32 PushRawNum,SINT32 ScdId);

/************************************************************************
原型  VOID PrintScdStateReg()
功能  打印Scd状态寄存器函数
参数
返回值  无
************************************************************************/
VOID PrintScdStateReg(SM_STATEREG_S *pSmStateReg, SINT32 ScdId);
SINT32 SM_SeekPts(SINT32 ChanID, UINT64 *pArgs);
VOID SCDDRV_LoadDspCode(SINT32 ScdId, DSP_REQUIRE_E Require);

VOID SCDDRV_SetStateIdle(SINT32 ScdId);
VOID SCDDRV_SetStateWork(SINT32 ScdId);
/***********************************************************************
SCDDRV_MarkReloadDsp: 该函数用以标记当前DSP代码需要重载，
                      而重载时机SCD中断
SmID : 1)当其=-1时，表示无需对实例相关的变量进行标识
备注:需要在SCD中断重载DSP代码，是源于当前DSP中加载的是Lowdelay处理代码，
     需要等SCD闲时才能重载，否则会出现死机
     add by l00228308
 ***********************************************************************/
VOID SCDDRV_MarkReloadDsp(SINT32 ScdId, SINT32 SmID);
VOID SM_UpdateMatchMode(SINT32 ScdId, SINT32 SmID);
SINT32 SCDDRV_IsChanDec(SINT32 SmID);

/************************************************************************
原型  VOID SCDDRV_ConfigReg()
功能  根据是否使能distributor决定是生成task还是直接配置scd寄存器
参数
返回值  无
************************************************************************/
VOID SCD_ConfigReg(UINT32 Reg, UINT32 Data, SINT32 Id, VOID *pTask);


#endif  // __SCD_DRV_H__
