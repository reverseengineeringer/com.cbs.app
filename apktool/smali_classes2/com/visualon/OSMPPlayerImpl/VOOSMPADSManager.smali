.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;,
        Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPADSManager"

.field public static final VO_ADSMANAGER_OPENFLAG_ASYNCOPEN:I = 0x1000

.field public static final VO_ADSMANAGER_OPENFLAG_PID:I = 0x1

.field public static final VO_ADSMANAGER_PERIODTYPE_ADS:I = 0x1

.field public static final VO_ADSMANAGER_PERIODTYPE_NORMALCONTENT:I = 0x0

.field public static final VO_ADSMANAGER_PID_DISCONTINUECHUNK:I = 0x1230adcc

.field public static final VO_ADSMANAGER_PID_DISCONTINUESAMPLE:I = 0x1230adcd

.field public static final VO_ADSMANAGER_PID_EVENTCALLBACK:I = 0x1230adcb

.field public static final VO_ADSMANAGER_PID_IS_CONTENT_START:I = 0x1230add7

.field public static final VO_ADSMANAGER_PID_IS_MDIALOG_MODE:I = 0x1230add9

.field public static final VO_ADSMANAGER_PID_IS_PARSE_VMAP:I = 0x1230add5

.field public static final VO_ADSMANAGER_PID_NEAREST_PREVIOUS_AD_STATE:I = 0x1230adda

.field public static final VO_ADSMANAGER_PID_PERIODID:I = 0x1230add0

.field public static final VO_ADSMANAGER_PID_SETCONTENTDURATION:I = 0x1230add2

.field public static final VO_ADSMANAGER_PID_SETVASTBITRATE:I = 0x1230add3

.field public static final VO_ADSMANAGER_PID_STARTSEEKADS:I = 0x1230adce

.field public static final VO_ADSMANAGER_PID_STARTSEEKCONTENT:I = 0x1230adcf

.field public static final VO_ADSMANAGER_PID_STREAMTYPE:I = 0x1230add4

.field public static final VO_ADSMANAGER_PID_VMAP_LINK:I = 0x1230add6


# instance fields
.field private mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

.field private mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

.field private mAdsManagerEnable:Z

.field private mContext:Landroid/content/Context;

.field private mCustomerEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

.field private mDecType:I

.field private mEventListener:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

.field public selfTest:Z

.field public strUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->selfTest:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->strUrl:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mDecType:I

    .line 141
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mEventListener:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

    .line 142
    iput-boolean v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdsManagerEnable:Z

    .line 144
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    .line 145
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    .line 146
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mContext:Landroid/content/Context;

    .line 163
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$1;-><init>(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mCustomerEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    .line 234
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-direct {v0, p0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;-><init>(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mEventListener:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;)Lcom/visualon/OSMPPlayerImpl/AdVOEngine;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    return-object v0
.end method


# virtual methods
.method public Close()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 325
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    if-ne v1, v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->isInitiated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->close()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->close()I

    move-result v0

    goto :goto_0
.end method

.method public Init(Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;)I
    .locals 4

    .prologue
    const v3, 0x1230add5

    const/4 v1, 0x0

    .line 250
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdEngineType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    move-result-object v0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_MDIALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    if-ne v0, v2, :cond_2

    .line 252
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_URI_LIVE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    if-ne v0, v2, :cond_1

    .line 253
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getVideoID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->init(Ljava/lang/String;Landroid/content/Context;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 257
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mCustomerEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setEventListener(Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;)V

    .line 258
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->saveAdInitParam(Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;)V

    move v0, v1

    .line 304
    :goto_0
    return v0

    .line 261
    :cond_1
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_PID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    if-ne v0, v2, :cond_3

    .line 263
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->init(Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;)I

    .line 265
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setParam(ILjava/lang/Object;)I

    .line 267
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    const v2, 0x1230add9

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setParam(ILjava/lang/Object;)I

    .line 268
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-nez v0, :cond_3

    .line 270
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    .line 271
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_VOD:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->setType(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;)V

    .line 272
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getSettings()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setSettings(Ljava/util/HashMap;)V

    .line 273
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setPlayer(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V

    .line 274
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setVOEngine(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)V

    .line 275
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mDecType:I

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setDecType(I)V

    .line 276
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getVideoID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->init(Ljava/lang/String;Landroid/content/Context;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 277
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mCustomerEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setEventListener(Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;)V

    .line 280
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setCustomerEngine(Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;)V

    move v0, v1

    .line 281
    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdEngineType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    move-result-object v0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_GIMA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    if-ne v0, v2, :cond_3

    .line 287
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->init(Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;)I

    .line 289
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setParam(ILjava/lang/Object;)I

    .line 291
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-nez v0, :cond_3

    .line 293
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    .line 294
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setPlayer(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V

    .line 295
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setVOEngine(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)V

    .line 296
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mDecType:I

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setDecType(I)V

    .line 297
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getVideoID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->init(Ljava/lang/String;Landroid/content/Context;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 298
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mCustomerEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setEventListener(Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;)V

    move v0, v1

    .line 299
    goto/16 :goto_0

    .line 304
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->init(Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public Open()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->isInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->open()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->open()I

    move-result v0

    goto :goto_0
.end method

.method public SkipPeriod(J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->SkipPeriod(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public Uninit()I
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    if-ne v0, v1, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->Close()I

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setEventListener(Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;)V

    .line 344
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->uninit()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->uninit()I

    move-result v0

    return v0
.end method

.method public getContentDuration()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getContentDuration()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getPlaybackInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 370
    if-nez v0, :cond_0

    .line 371
    const/4 v0, -0x1

    .line 374
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCustomerEngine()Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    return-object v0
.end method

.method public getDecoderType()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mDecType:I

    return v0
.end method

.method public getOnEventListener()Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mEventListener:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

    return-object v0
.end method

.method public getParam(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getParam(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPlaybackInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->selfTest:Z

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getPlaybackInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSubtitleUrl()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 426
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getPlaybackInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 427
    if-nez v0, :cond_0

    move-object v0, v1

    .line 448
    :goto_0
    return-object v0

    .line 431
    :cond_0
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getCount()I

    move-result v3

    .line 432
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v4

    .line 434
    if-eqz v4, :cond_1

    if-gtz v3, :cond_2

    :cond_1
    move-object v0, v1

    .line 435
    goto :goto_0

    .line 438
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 439
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 441
    if-eqz v0, :cond_3

    .line 442
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v5

    if-nez v5, :cond_3

    .line 443
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getCaptionURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 448
    goto :goto_0
.end method

.method public declared-synchronized getTimeStamp(I)I
    .locals 1

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getTimeStamp(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 379
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->selfTest:Z

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->strUrl:Ljava/lang/String;

    .line 421
    :goto_0
    return-object v0

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getPlaybackInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 383
    if-nez v0, :cond_1

    move-object v0, v1

    .line 384
    goto :goto_0

    .line 387
    :cond_1
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getCount()I

    move-result v3

    .line 388
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v4

    .line 390
    if-eqz v4, :cond_2

    if-gtz v3, :cond_3

    :cond_2
    move-object v0, v1

    .line 391
    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdEngineType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    move-result-object v0

    sget-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_MDIALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v0

    sget-object v5, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_PID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    if-ne v0, v5, :cond_6

    .line 396
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 397
    if-eqz v0, :cond_4

    .line 398
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getVideoGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 399
    goto :goto_0

    .line 401
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    :cond_6
    if-ge v2, v3, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 402
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 404
    if-eqz v0, :cond_5

    .line 405
    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v5, v5, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v5, v5, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v5}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v5

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_URI_VAST:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    if-ne v5, v6, :cond_7

    .line 407
    const/4 v5, 0x1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 408
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    :cond_7
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v5

    if-nez v5, :cond_5

    .line 414
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodURL()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    .line 421
    goto/16 :goto_0
.end method

.method public getVoEngine()Lcom/visualon/OSMPPlayerImpl/AdVOEngine;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    return-object v0
.end method

.method public isAdsManagerEnable()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdsManagerEnable:Z

    return v0
.end method

.method public isSeekable(I)Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->isSeekable(I)Z

    move-result v0

    return v0
.end method

.method public resume(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;J)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->resume(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;J)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;

    move-result-object v0

    .line 570
    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;

    return-object v0
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    if-ne v0, v1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->resume(Ljava/lang/Object;)V

    .line 578
    :cond_0
    return-void
.end method

.method public seek(IJ)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->seek(IJ)Ljava/lang/Object;

    move-result-object v0

    .line 512
    return-object v0
.end method

.method public setAction(II)I
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdEngineType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_MDIALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_PID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_PLAYBACKCOMPLETE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->onPlayComplete()V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setAction(II)I

    move-result v0

    return v0
.end method

.method public setActionSync(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setActionSync(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAdsManager(Z)V
    .locals 0

    .prologue
    .line 501
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdsManagerEnable:Z

    .line 502
    return-void
.end method

.method public setClickThrough(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setClickThrough(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mContext:Landroid/content/Context;

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setDecoderType(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mDecType:I

    .line 74
    return-void
.end method

.method public setDesPos(J)V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setDesPos(J)V

    .line 537
    return-void
.end method

.method public setID3Infor(IILjava/lang/Object;I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setID3Infor(IILjava/lang/Object;I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 553
    :goto_0
    const-string v1, "@@@VOOSMPADSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "setID3Infor: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setID3Infor(IILjava/lang/Object;I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setOnEventListener(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mEventListener:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

    .line 156
    return-void
.end method

.method public setParam(ILjava/lang/Object;)I
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setParam(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setPlayingTime(I)I
    .locals 5

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->setPlayingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 460
    :cond_0
    const-string v0, "@@@VOOSMPADSManager"

    const-string v1, "setPlayingTime: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setPlayingTime(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSegmentStartParam(Ljava/util/HashMap;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setSegmentStartParam(Ljava/util/HashMap;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 564
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public setTracking(Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;II)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 480
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    if-ne v0, v1, :cond_1

    .line 482
    const-string v0, "@@@VOOSMPADSManager"

    const-string v1, "--- set Engine type to AdTracking --- GMIA"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_GIMA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    invoke-interface {p1, v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->setAdEngeType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 491
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdVOEngine:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setTracking(Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;II)I

    move-result v0

    return v0

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->mAdCustomerEngine:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    if-ne v0, v1, :cond_0

    .line 486
    const-string v0, "@@@VOOSMPADSManager"

    const-string v1, "--- set Engine type to AdTracking --- MDialog"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_MDIALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    invoke-interface {p1, v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->setAdEngeType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0
.end method
