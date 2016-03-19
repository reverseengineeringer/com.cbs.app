.class public Lcom/visualon/OSMPPlayerImpl/AdVOEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/AdVOEngine$1;,
        Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;
    }
.end annotation


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "voOSMPADSManagerJni"

.field private static final TAG:Ljava/lang/String; = "@@@AdVOEngine"

.field public static final VO_ADSMANAGER_EVENT_AD_END:I = -0x134ffffc

.field public static final VO_ADSMANAGER_EVENT_AD_START:I = -0x134ffffd

.field public static final VO_ADSMANAGER_EVENT_BASE:I = -0x13500000

.field public static final VO_ADSMANAGER_EVENT_CONTENT_END:I = -0x134ffffe

.field public static final VO_ADSMANAGER_EVENT_CONTENT_START:I = -0x134fffff

.field public static final VO_ADSMANAGER_EVENT_CUSTOMER_ENGINE_AD_EVENT_STARTED:I = -0x1340fffc

.field public static final VO_ADSMANAGER_EVENT_CUSTOMER_ENGINE_AD_PROGRESS_RECEIVED:I = -0x1340fffd

.field public static final VO_ADSMANAGER_EVENT_CUSTOMER_ENGINE_BASE:I = -0x13410000

.field public static final VO_ADSMANAGER_EVENT_CUSTOMER_ENGINE_DURATION_INFO_RECEIVED:I = -0x1340fffe

.field public static final VO_ADSMANAGER_EVENT_CUSTOMER_ENGINE_URL_RECEIVED:I = -0x1340ffff

.field public static final VO_ADSMANAGER_EVENT_ERROR_BASE:I = -0x13420000

.field public static final VO_ADSMANAGER_EVENT_ERROR_GEOBLOCK:I = -0x1341ffff

.field public static final VO_ADSMANAGER_EVENT_ERROR_PID_EXPIRED:I = -0x1341fffd

.field public static final VO_ADSMANAGER_EVENT_ERROR_PID_INVALID:I = -0x1341fffe

.field public static final VO_ADSMANAGER_EVENT_ERROR_PID_NOTAVALIBLE:I = -0x1341fffc

.field public static final VO_ADSMANAGER_EVENT_ERROR_SMIL_DOWNLOADFAIL:I = -0x1341fffb

.field public static final VO_ADSMANAGER_EVENT_ERROR_SMIL_PARSEFAIL:I = -0x1341fffa

.field public static final VO_ADSMANAGER_EVENT_ERROR_VMAP_AUTHFAIL:I = -0x1341fff9

.field public static final VO_ADSMANAGER_EVENT_ERROR_VMAP_DOWNLOADFAIL:I = -0x1341fff8

.field public static final VO_ADSMANAGER_EVENT_ERROR_VMAP_PARSEERROR:I = -0x1341fff7

.field public static final VO_ADSMANAGER_EVENT_OPEN_COMPLETE:I = -0x134ffffb

.field public static final VO_ADSMANAGER_EVENT_SKIPPABLE:I = -0x134ffff8

.field public static final VO_ADSMANAGER_EVENT_TRACKING_ACTION:I = -0x134efffe

.field public static final VO_ADSMANAGER_EVENT_TRACKING_BASE:I = -0x134f0000

.field public static final VO_ADSMANAGER_EVENT_TRACKING_PERIODPRECENTAGE:I = -0x134efffd

.field public static final VO_ADSMANAGER_EVENT_TRACKING_SEGMENTEND:I = -0x134efff9

.field public static final VO_ADSMANAGER_EVENT_TRACKING_SEGMENTSTART:I = -0x134efffa

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TIMEPASSED:I = -0x134efffb

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_AD_CLOSELINEAR:I = -0x134eeff2

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_AD_SKIP:I = -0x134eeff3

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_AD_START:I = -0x134eefff

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_BASE:I = -0x134ef000

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_COMPLETE:I = -0x134eeffb

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_CREATIVE_VIEW:I = -0x134eeffa

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_FIRST_QUARTILE:I = -0x134eeffe

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_FULLSCREEN:I = -0x134eeff5

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_IMPRESSION:I = -0x134eeff4

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_MID_POINT:I = -0x134eeffd

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_MUTE:I = -0x134eeff9

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_PAUSE:I = -0x134eeff7

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_RESUME:I = -0x134eeff6

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_THIRD_QUARTILE:I = -0x134eeffc

.field public static final VO_ADSMANAGER_EVENT_TRACKING_TRACKINGEVENTS_UNMUTE:I = -0x134eeff8

.field public static final VO_ADSMANAGER_EVENT_TRACKING_WHOLECONTENTPRECENTAGE:I = -0x134efffc

.field public static final VO_ADSMANAGER_EVENT_WHOLECONTENT_END:I = -0x134ffff9

.field public static final VO_ADSMANAGER_EVENT_WHOLECONTENT_START:I = -0x134ffffa

.field private static mJNILoaded:Z


# instance fields
.field private isInit:Z

.field private isSendInfo:Z

.field private mCurrPos:J

.field private mCustomerEng:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

.field private mEventHandler:Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;

.field mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

.field mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

.field private mNativeContext:J

.field private mPause:I

.field private mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

.field private mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

.field private segmentStartParam:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mJNILoaded:Z

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    .line 49
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;

    .line 50
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    .line 51
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    .line 52
    iput-boolean v6, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->isSendInfo:Z

    .line 54
    iput v6, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mPause:I

    .line 55
    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mCurrPos:J

    .line 56
    iput-boolean v6, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->isInit:Z

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->segmentStartParam:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mCustomerEng:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    .line 114
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    .line 796
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 797
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;

    invoke-direct {v1, p0, p1, v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;-><init>(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;

    .line 798
    const-string v1, "@@@AdVOEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "myLooper()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    :goto_0
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 807
    const-string v0, "@@@AdVOEngine"

    const-string v1, "VOOSMPADSManager construct."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 808
    return-void

    .line 799
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 800
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;

    invoke-direct {v1, p0, p1, v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;-><init>(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;

    .line 801
    const-string v1, "@@@AdVOEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMainLooper()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 803
    :cond_1
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    return-object v0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->isSendInfo:Z

    return v0
.end method

.method static synthetic access$102(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->isSendInfo:Z

    return p1
.end method

.method static synthetic access$200(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mPause:I

    return v0
.end method

.method static synthetic access$202(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mPause:I

    return p1
.end method

.method static synthetic access$300(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mCurrPos:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/visualon/OSMPPlayerImpl/AdVOEngine;)J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    return-wide v0
.end method

.method private adsCallBack(IIILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1272
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1273
    const/4 v0, 0x0

    .line 1274
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;

    invoke-virtual {v1, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine$EventHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 1276
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1280
    :cond_0
    return-void
.end method

.method private static loadJNI(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1286
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mJNILoaded:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mJNILoaded:Z

    .line 1289
    :goto_0
    return v0

    .line 1287
    :cond_0
    const-string v0, "voOSMPADSManagerJni"

    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1288
    sput-boolean v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mJNILoaded:Z

    if-nez v0, :cond_1

    const-string v0, "@@@AdVOEngine"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1289
    :cond_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mJNILoaded:Z

    goto :goto_0
.end method

.method private native nativeClose(J)I
.end method

.method private native nativeGetContentDuration(J)I
.end method

.method private native nativeGetParam(JILjava/lang/Object;)Ljava/lang/Object;
.end method

.method private native nativeGetPlaybackInfo(J)Ljava/lang/Object;
.end method

.method private native nativeGetTimeOffset(JIZIIZ)I
.end method

.method private native nativeGetTimeStamp(JI)I
.end method

.method private native nativeInit(Ljava/lang/Long;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method

.method private native nativeInsertAdBreaks(J[J[Ljava/lang/String;II)I
.end method

.method private native nativeIsSeekable(JI)Z
.end method

.method private native nativeModifyAdBreak(J[J[Ljava/lang/String;I)I
.end method

.method private native nativeOpen(J)I
.end method

.method private native nativeResume(JIJ)Ljava/lang/Object;
.end method

.method private native nativeSeek(JIJ)Ljava/lang/Object;
.end method

.method private native nativeSetAction(JIILjava/lang/String;)I
.end method

.method private native nativeSetActionSync(JII)[B
.end method

.method private native nativeSetAdContentInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetParam(JILjava/lang/Object;)I
.end method

.method private native nativeSetPlaybackInfo(J[J[Ljava/lang/String;II)I
.end method

.method private native nativeSetPlayingTime(JI)I
.end method

.method private native nativeSkipPeriod(JJ)Ljava/lang/Object;
.end method

.method private native nativeUninit(J)I
.end method


# virtual methods
.method public SkipPeriod(J)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1217
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1219
    const/4 v0, 0x0

    .line 1221
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeSkipPeriod(JJ)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public close()I
    .locals 4

    .prologue
    .line 906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    .line 907
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 909
    const/4 v0, -0x1

    .line 913
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeClose(J)I

    move-result v0

    goto :goto_0
.end method

.method public getAdInitParam()Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    return-object v0
.end method

.method public getAdTracking()Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    return-object v0
.end method

.method public getContentDuration()I
    .locals 4

    .prologue
    .line 1088
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1090
    const/4 v0, -0x1

    .line 1092
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeGetContentDuration(J)I

    move-result v0

    goto :goto_0
.end method

.method public getParam(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1149
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1151
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1153
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeGetParam(JILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlaybackInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;
    .locals 4

    .prologue
    .line 938
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 940
    const/4 v0, 0x0

    .line 956
    :goto_0
    return-object v0

    .line 942
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeGetPlaybackInfo(J)Ljava/lang/Object;

    move-result-object v0

    .line 943
    if-eqz v0, :cond_1

    .line 945
    check-cast v0, Landroid/os/Parcel;

    .line 946
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 947
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;-><init>()V

    .line 948
    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->parse(Landroid/os/Parcel;)Z

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    if-eqz v0, :cond_2

    .line 954
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 956
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    goto :goto_0
.end method

.method public getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    return-object v0
.end method

.method public getTimeOffset(IZIIZ)I
    .locals 9

    .prologue
    .line 1210
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1212
    const/4 v0, 0x0

    .line 1214
    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeGetTimeOffset(JIZIIZ)I

    move-result v0

    goto :goto_0
.end method

.method public getTimeStamp(I)I
    .locals 4

    .prologue
    .line 992
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 994
    const/4 v0, -0x1

    .line 996
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeGetTimeStamp(JI)I

    move-result v0

    goto :goto_0
.end method

.method public init(Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;)I
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    .line 823
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    .line 824
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    if-nez v0, :cond_1

    .line 825
    const v0, -0x7effffff

    .line 850
    :cond_0
    :goto_0
    return v0

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getWorkingPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->loadJNI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 828
    const v0, -0x7ffffff1

    goto :goto_0

    .line 831
    :cond_2
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v12, v13}, Ljava/lang/Long;-><init>(J)V

    .line 832
    const-string v0, "@@@AdVOEngine"

    const-string v2, "AD nativeInit called, pID or url is: %s"

    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v5}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getVideoID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getVideoID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getVideoID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->getValue()I

    move-result v4

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, -0x7ffff000

    :goto_1
    or-int/2addr v4, v0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdvertisingID()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getWorkingPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libvoAdsManager_OSMP.so"

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->getValue()I

    move-result v8

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getStrOnceUXURL()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeInit(Ljava/lang/Long;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 837
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    .line 839
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    if-eq v1, v2, :cond_3

    .line 840
    const v1, 0x1230add4

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setParam(ILjava/lang/Object;)I

    .line 845
    :cond_3
    const v1, 0x1230add5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setParam(ILjava/lang/Object;)I

    .line 847
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setAdContentInfo()I

    .line 848
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getDuration()J

    move-result-wide v2

    cmp-long v1, v2, v12

    if-lez v1, :cond_0

    .line 849
    const v1, 0x1230add2

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setParam(ILjava/lang/Object;)I

    goto/16 :goto_0

    .line 833
    :cond_4
    const/16 v0, 0x1000

    goto :goto_1
.end method

.method public initAgain(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    if-nez v0, :cond_0

    .line 859
    const v0, -0x7effffff

    .line 862
    :goto_0
    return v0

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setVideoID(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->uninit()I

    .line 862
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->init(Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;)I

    move-result v0

    goto :goto_0
.end method

.method public insertAdBreaks([J[Ljava/lang/String;II)I
    .locals 8

    .prologue
    .line 1193
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1195
    const/4 v0, -0x1

    .line 1197
    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeInsertAdBreaks(J[J[Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public isInitiated()Z
    .locals 4

    .prologue
    .line 866
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeekable(I)Z
    .locals 4

    .prologue
    .line 1040
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1042
    const/4 v0, 0x0

    .line 1044
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeIsSeekable(JI)Z

    move-result v0

    goto :goto_0
.end method

.method public modifyAdBreak([J[Ljava/lang/String;I)I
    .locals 7

    .prologue
    .line 1202
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1204
    const/4 v0, -0x1

    .line 1206
    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeModifyAdBreak(J[J[Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public open()I
    .locals 6

    .prologue
    .line 891
    const/4 v0, -0x1

    .line 892
    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 894
    const-string v0, "@@@AdVOEngine"

    const-string v1, "AD open called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeOpen(J)I

    move-result v0

    .line 897
    :cond_0
    return v0
.end method

.method public resume(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;J)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1164
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move-object v0, v6

    .line 1179
    :goto_0
    return-object v0

    .line 1169
    :cond_0
    iget-wide v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;->getValue()I

    move-result v3

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeResume(JIJ)Ljava/lang/Object;

    move-result-object v0

    .line 1170
    if-eqz v0, :cond_1

    .line 1172
    check-cast v0, Landroid/os/Parcel;

    .line 1173
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1174
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;-><init>()V

    .line 1175
    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->parse(Landroid/os/Parcel;)Z

    .line 1176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 1177
    goto :goto_0

    :cond_1
    move-object v0, v6

    .line 1179
    goto :goto_0
.end method

.method public saveAdInitParam(Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    .line 812
    return-void
.end method

.method public seek(IJ)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1058
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1060
    const/4 v0, 0x0

    .line 1080
    :cond_0
    :goto_0
    return-object v0

    .line 1063
    :cond_1
    iget-wide v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeSeek(JIJ)Ljava/lang/Object;

    move-result-object v0

    .line 1064
    if-eqz v0, :cond_0

    .line 1066
    check-cast v0, Landroid/os/Parcel;

    .line 1067
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1068
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;-><init>()V

    .line 1069
    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->parse(Landroid/os/Parcel;)Z

    .line 1070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1072
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mCustomerEng:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mCustomerEng:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    if-ne v0, v2, :cond_2

    .line 1073
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mCustomerEng:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    invoke-virtual {v0, p2, p3}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->onSeek(J)J

    move-result-wide v2

    .line 1075
    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->setContentSeekPos(J)V

    :cond_2
    move-object v0, v1

    .line 1077
    goto :goto_0
.end method

.method public setAction(II)I
    .locals 7

    .prologue
    .line 1021
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1023
    const/4 v0, -0x1

    .line 1028
    :goto_0
    return v0

    .line 1025
    :cond_0
    const-string v6, ""

    .line 1026
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SEGMENTSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1027
    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->segmentStartParam:Ljava/lang/String;

    .line 1028
    :cond_1
    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeSetAction(JIILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setActionSync(II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1102
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1104
    const/4 v0, 0x0

    .line 1109
    :goto_0
    return-object v0

    .line 1107
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeSetActionSync(JII)[B

    move-result-object v1

    .line 1108
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public setAdContentInfo()I
    .locals 8

    .prologue
    const/4 v0, -0x1

    .line 1227
    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    if-nez v1, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return v0

    .line 1231
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdContentInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1233
    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdContentInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->getStrCaptionURL()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdContentInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->getStrContentTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdContentInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->getStrSeriesTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdContentInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->getStrChannelname()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeSetAdContentInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setClickThrough(Ljava/lang/String;)V
    .locals 11

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    .line 963
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    if-eqz v0, :cond_0

    .line 965
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    aput-object p1, v10, v3

    .line 966
    const-string v0, "@@@AdVOEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TRACKING] VO_OSMP_ADS_TRACKING_EVENT_CLICK_THROUGH url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_CLICK_THROUGH:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    move-wide v8, v6

    invoke-direct/range {v1 .. v10}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 971
    :cond_0
    return-void
.end method

.method public setCustomerEngine(Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mCustomerEng:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    .line 1049
    return-void
.end method

.method public setDesPos(J)V
    .locals 1

    .prologue
    .line 960
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mCurrPos:J

    .line 961
    return-void
.end method

.method public setID3Infor(IILjava/lang/Object;I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->getIID3Infor()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->getIID3Infor()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;->onSetID3Infor(IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 883
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setParam(ILjava/lang/Object;)I
    .locals 4

    .prologue
    .line 1120
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1122
    const/4 v0, -0x1

    .line 1138
    :cond_0
    :goto_0
    return v0

    .line 1124
    :cond_1
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeSetParam(JILjava/lang/Object;)I

    move-result v0

    .line 1125
    const v1, 0x1230add2

    if-ne v1, p1, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    if-eqz v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_URI_RAW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    if-ne v1, v2, :cond_0

    .line 1130
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getPlaybackInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 1131
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    if-eqz v1, :cond_2

    .line 1132
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->setOpenParam(Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)V

    .line 1133
    :cond_2
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInfo:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    invoke-interface {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1134
    const-string v1, "@@@AdVOEngine"

    const-string v2, "[TRACKING] setPlaybackInfo again"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPlaybackAdInfo([J[Ljava/lang/String;II)I
    .locals 8

    .prologue
    .line 1184
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1186
    const/4 v0, -0x1

    .line 1188
    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeSetPlaybackInfo(J[J[Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public setPlayingTime(I)I
    .locals 4

    .prologue
    .line 1005
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1007
    const/4 v0, -0x1

    .line 1009
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeSetPlayingTime(JI)I

    move-result v0

    goto :goto_0
.end method

.method public setSegmentStartParam(Ljava/util/HashMap;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6
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
    .line 1238
    const-string v2, ""

    .line 1239
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1244
    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1247
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1248
    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1250
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1251
    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 1257
    goto :goto_0

    .line 1259
    :cond_0
    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->segmentStartParam:Ljava/lang/String;

    .line 1262
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public setTracking(Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;II)I
    .locals 13

    .prologue
    .line 974
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    .line 975
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->isInit:Z

    if-nez v0, :cond_0

    .line 977
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_PLAYER_INITIALIZATION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v11, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    sget-object v12, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_MODULE_TYPE;->VO_OSMP_MODULE_TYPE_SDK:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_MODULE_TYPE;

    invoke-interface {v11, v12}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getVersion(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_MODULE_TYPE;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v0

    const/4 v0, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 980
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->isInit:Z

    .line 982
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public uninit()I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 921
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 923
    const/4 v0, -0x1

    .line 929
    :cond_0
    :goto_0
    return v0

    .line 925
    :cond_1
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->nativeUninit(J)I

    move-result v0

    .line 926
    if-nez v0, :cond_0

    .line 927
    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mNativeContext:J

    goto :goto_0
.end method
