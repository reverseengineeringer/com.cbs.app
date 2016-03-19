.class public Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;
.implements Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;
.implements Lcom/visualon/OSMPPlayer/VOCommonPlayer;
.implements Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;,
        Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$AnalyticsExportListenerWrap;,
        Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;,
        Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;
    }
.end annotation


# static fields
.field private static final INVALID_SELECT:I = -0x2

.field private static final IO_API_NAME:Ljava/lang/String; = "voGetSourceIOAPI"

.field private static final IO_FILE_NAME:Ljava/lang/String; = "voSourceIO"

.field private static final TAG:Ljava/lang/String; = "@@@VOCommonPlayerImpl"

.field private static final mIsAmzn:Z

.field private static final mIsAmznStick:Z

.field private static final mIsSloaneFlow:Z

.field private static final messageCustomerTag:I = -0xf0ffffe

.field private static final messagePlayingTime:I = -0xf0fffff

.field private static final messageResume:I = -0xf0feffd


# instance fields
.field private adtimer:Ljava/util/Timer;

.field private adtimerTask:Ljava/util/TimerTask;

.field private mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

.field private mAdsEventListener:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

.field private mAudioCapabilityReceiver:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

.field private mCodeType:I

.field private mContext:Landroid/content/Context;

.field private mCurPlayingTime:J

.field private mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

.field private mCurntSupportedEncoding:Lcom/visualon/OSMPUtils/VOSupportEncoding;

.field private mDRMLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

.field private mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

.field private mDrmHandle:Ljava/lang/Long;

.field private mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

.field private mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

.field public mIsAdMode:Z

.field private mIsPaused:Z

.field private mIsPlaybackComplete:Z

.field private mLibPath:Ljava/lang/String;

.field private mLicenseManager:Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;

.field private mLua:Lcom/visualon/OSMPUtils/voLua;

.field private final mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

.field private mPlayerType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSeekContentPos:I

.field private mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

.field private mSurface:Landroid/view/Surface;

.field private mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

.field protected mVideoView:Landroid/view/View;

.field private m_RenderType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

.field private m_bAdHideSubtitle:Z

.field private m_bEnableDVRPosition:Z

.field private m_bEnableSEIPostProcessVideo:Z

.field private m_bEnableSubtitle:Z

.field private m_bIsSeeking:Z

.field private m_bPreferenceAudioSmooth:Z

.field private m_bPreferenceSeekPrecice:Z

.field private m_bSubtitleShow:Z

.field private m_bSuspendPaused:Z

.field private m_bSuspendPlayAudio:Z

.field private m_leftVolumeValue:F

.field private m_nLiveStreaming:I

.field private m_nSelectedAudio:I

.field private m_nSelectedSubtitle:I

.field private m_rightVolumeValue:F

.field private subtitleFileNameSet:Z

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    new-instance v0, Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v3, "Amazon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 215
    sput-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAmzn:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v3, "AFTS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsSloaneFlow:Z

    .line 217
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAmzn:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v3, "AFTM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAmznStick:Z

    return-void

    :cond_0
    move v0, v2

    .line 215
    goto :goto_0

    :cond_1
    move v1, v2

    .line 217
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v0, -0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLibPath:Ljava/lang/String;

    .line 153
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLua:Lcom/visualon/OSMPUtils/voLua;

    .line 155
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    .line 156
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mContext:Landroid/content/Context;

    .line 157
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayerType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    .line 158
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    .line 160
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timer:Ljava/util/Timer;

    .line 161
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timerTask:Ljava/util/TimerTask;

    .line 162
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimer:Ljava/util/Timer;

    .line 163
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimerTask:Ljava/util/TimerTask;

    .line 164
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->subtitleFileNameSet:Z

    .line 165
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    .line 167
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nSelectedAudio:I

    .line 168
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nSelectedSubtitle:I

    .line 169
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSubtitle:Z

    .line 170
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bAdHideSubtitle:Z

    .line 171
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSubtitleShow:Z

    .line 172
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSuspendPlayAudio:Z

    .line 173
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSuspendPaused:Z

    .line 174
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableDVRPosition:Z

    .line 175
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bIsSeeking:Z

    .line 176
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDrmHandle:Ljava/lang/Long;

    .line 177
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCodeType:I

    .line 179
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSEIPostProcessVideo:Z

    .line 182
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    .line 183
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    .line 189
    iput v8, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSeekContentPos:I

    .line 190
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsPaused:Z

    .line 191
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsPlaybackComplete:Z

    .line 201
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 202
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;

    .line 204
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bPreferenceSeekPrecice:Z

    .line 205
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bPreferenceAudioSmooth:Z

    .line 206
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAdMode:Z

    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurPlayingTime:J

    .line 210
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mAudioCapabilityReceiver:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    .line 211
    new-instance v0, Lcom/visualon/OSMPUtils/VOSupportEncoding;

    new-array v1, v2, [I

    const/4 v2, 0x2

    aput v2, v1, v7

    invoke-direct {v0, v1, v7}, Lcom/visualon/OSMPUtils/VOSupportEncoding;-><init>([II)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntSupportedEncoding:Lcom/visualon/OSMPUtils/VOSupportEncoding;

    .line 220
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_STOP:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    .line 221
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDRMLicenseRetriever:Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    .line 222
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;

    .line 3945
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$3;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mAdsEventListener:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

    .line 297
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    if-nez v1, :cond_0

    .line 299
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    .line 300
    :cond_0
    const-string v1, "@@@VOCommonPlayerImpl"

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

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :goto_0
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLua:Lcom/visualon/OSMPUtils/voLua;

    .line 309
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    .line 310
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mContext:Landroid/content/Context;

    .line 311
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayerType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    .line 312
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    .line 314
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSubtitle:Z

    .line 315
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bAdHideSubtitle:Z

    .line 316
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSubtitleShow:Z

    .line 317
    iput-boolean v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSEIPostProcessVideo:Z

    .line 318
    iput v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mScreenWidth:I

    .line 319
    iput v7, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mScreenHeight:I

    .line 320
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    .line 321
    iput v8, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nLiveStreaming:I

    .line 322
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl construct."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    return-void

    .line 301
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 302
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    if-nez v1, :cond_2

    .line 303
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    .line 304
    :cond_2
    const-string v1, "@@@VOCommonPlayerImpl"

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

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    :cond_3
    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Z
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;Z)Z
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bAdHideSubtitle:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->onLoadVideoComplete()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bIsSeeking:Z

    return v0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;I)I
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurPlayingTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;J)J
    .locals 1

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurPlayingTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Z
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isMdialogVodType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSuspendPaused:Z

    return v0
.end method

.method static synthetic access$802(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;Z)Z
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSuspendPaused:Z

    return p1
.end method

.method static synthetic access$900(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    return-object v0
.end method

.method private adcloseTimer()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3799
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 3800
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3801
    :cond_0
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimerTask:Ljava/util/TimerTask;

    .line 3802
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 3803
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3804
    :cond_1
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimer:Ljava/util/Timer;

    .line 3805
    const/4 v0, 0x1

    return v0
.end method

.method private adstartTimer()Z
    .locals 6

    .prologue
    const-wide/16 v2, 0x64

    .line 3809
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adcloseTimer()Z

    .line 3810
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$2;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$2;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimerTask:Ljava/util/TimerTask;

    .line 3818
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 3820
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimer:Ljava/util/Timer;

    .line 3823
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adtimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 3825
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "adsmanager"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3826
    const/4 v0, 0x1

    return v0
.end method

.method private closeTimer()Z
    .locals 2

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2147
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2149
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timerTask:Ljava/util/TimerTask;

    .line 2150
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 2151
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2152
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2155
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private do_start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    .line 731
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 733
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mVideoView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_1

    .line 738
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "mPlayer cannot be null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    :goto_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v0

    .line 742
    :cond_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "SurfaceView/Surface should be set before start function"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 794
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 746
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 747
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "@@@Surface VOCommonPlayerImpl::start surface is inValid ----------"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Run()I

    move-result v0

    .line 765
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOCommonPlayerImpl Run, return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAdMode:Z

    if-eqz v1, :cond_4

    .line 770
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adstartTimer()Z

    .line 771
    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_STATE_CHANGE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_PLAYING:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->getValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 774
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v1

    .line 775
    invoke-direct {p0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v1

    .line 776
    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsPaused:Z

    if-eqz v2, :cond_6

    .line 778
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_RESUME:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 779
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsPaused:Z

    .line 790
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_5

    .line 791
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "@@@Surface VOCommonPlayerImpl::start surface is inValid +++++++"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    :cond_5
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 786
    :cond_6
    :try_start_3
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_PLAYBACKSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private static getOpaqueColor(I)I
    .locals 3

    .prologue
    .line 2501
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private initLua()V
    .locals 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLua:Lcom/visualon/OSMPUtils/voLua;

    if-eqz v0, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1263
    :cond_1
    new-instance v0, Lcom/visualon/OSMPUtils/voLua;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voLua;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLua:Lcom/visualon/OSMPUtils/voLua;

    .line 1264
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLua:Lcom/visualon/OSMPUtils/voLua;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLibPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/visualon/OSMPUtils/voLua;->init(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 1265
    if-nez v0, :cond_0

    .line 1266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLua:Lcom/visualon/OSMPUtils/voLua;

    goto :goto_0
.end method

.method private isAdsManagerEnable()Z
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->isAdsManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMdialogVodType()Z
    .locals 4

    .prologue
    .line 5153
    const/4 v1, 0x0

    .line 5154
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getCustomerEngine()Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    move-result-object v0

    .line 5155
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    if-ne v2, v3, :cond_0

    .line 5157
    sget-object v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_VOD:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->getType()Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    move-result-object v0

    if-ne v2, v0, :cond_0

    .line 5158
    const/4 v0, 0x1

    .line 5160
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private modifyCurPosition(I)I
    .locals 6

    .prologue
    .line 5137
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v0

    .line 5138
    if-eqz v0, :cond_0

    .line 5139
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "WHY_STATUS The current player status is %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5141
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getCustomerEngine()Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getCustomerEngine()Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    if-ne v1, v2, :cond_1

    .line 5144
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_STOPPED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    if-eq v0, v1, :cond_1

    .line 5146
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getCustomerEngine()Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    .line 5147
    int-to-long v2, p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->getAdsOffset(I)J

    move-result-wide v0

    add-long/2addr v0, v2

    long-to-int p1, v0

    .line 5150
    :cond_1
    return p1
.end method

.method private onLoadVideoComplete()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3729
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    if-nez v0, :cond_1

    .line 3730
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3795
    :goto_0
    return-object v0

    .line 3732
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getPlaybackInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    .line 3733
    if-nez v0, :cond_2

    .line 3735
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "loadVideoById getPlayBackInfo error!!"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3736
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0, v7}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAdsManager(Z)V

    .line 3737
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_SRC_ERR_OPEN_SRC_FAIL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 3740
    :cond_2
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 3741
    if-nez v3, :cond_3

    .line 3743
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "loadVideoById get videoPath error!!"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3744
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0, v7}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAdsManager(Z)V

    .line 3745
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_SRC_ERR_OPEN_SRC_FAIL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 3747
    :cond_3
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getSubtitleUrl()Ljava/lang/String;

    move-result-object v4

    .line 3749
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "AD Manager subtitlePath = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", videoPath = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3751
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getVoEngine()Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    move-result-object v5

    .line 3753
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_VO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    .line 3754
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    .line 3756
    if-eqz v5, :cond_4

    .line 3757
    iget-object v1, v5, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getAdEngineType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    move-result-object v2

    .line 3758
    iget-object v1, v5, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->mInitParam:Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v1

    .line 3761
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_GIMA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    if-eq v2, v6, :cond_5

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_MDIALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    if-eq v2, v6, :cond_5

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_PID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    if-ne v1, v6, :cond_5

    .line 3765
    invoke-virtual {p0, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setSubtitlePath(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3769
    :cond_5
    invoke-virtual {v0, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;->setStreamUrl(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3770
    sget-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_PLAYBACKINFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {p0, v6, v7, v7, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3775
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_MDIALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    if-ne v2, v0, :cond_6

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_PID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    if-ne v1, v0, :cond_6

    .line 3776
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getCustomerEngine()Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    .line 3777
    invoke-virtual {v0, v3}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->setAssetKey(Ljava/lang/String;)V

    .line 3795
    :goto_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 3778
    :cond_6
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_GIMA:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    if-ne v2, v0, :cond_7

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_PID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    if-ne v1, v0, :cond_7

    .line 3779
    const v0, 0x1230add6

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getParam(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3780
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "strVmapUrl: "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v1, v2, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3781
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getCustomerEngine()Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    move-result-object v1

    check-cast v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    .line 3782
    invoke-virtual {v1, v0, v3, v4}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->setUrls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_1

    .line 3784
    :cond_7
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;-><init>()V

    .line 3786
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getDecoderType()I

    move-result v1

    .line 3787
    const-string v2, "@@@VOCommonPlayerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "---onLoadVideoComplete()--- mADManager.getDecoderType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3788
    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3789
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->VO_OSMP_FLAG_SRC_OPEN_ASYNC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_AUTO_DETECT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_1
.end method

.method private setCodeType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 628
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 630
    :try_start_0
    const-string v0, "mCodeType2: 0x%X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_HARDWARE_AUTO_SELECTED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    or-int/2addr v0, v1

    .line 636
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v1, v2

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v1, v2

    .line 640
    and-int/2addr v0, p1

    .line 641
    and-int/2addr v1, p1

    .line 643
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 645
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x48

    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 653
    :cond_0
    :goto_0
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_HARDWARE_AUTO_SELECTED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 655
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x16

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v0

    .line 647
    :cond_1
    :try_start_1
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 649
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x48

    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 684
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 657
    :cond_2
    :try_start_2
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 660
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSEIPostProcessVideo:Z

    if-eqz v0, :cond_3

    .line 662
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_RenderType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 663
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x11006

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 669
    :goto_2
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 667
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x16

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    goto :goto_2

    .line 670
    :cond_4
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 672
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mContext:Landroid/content/Context;

    const-string v1, "IOMX"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 673
    const-string v1, "checkIOMX"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 674
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 684
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 676
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x16

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 677
    :cond_6
    :try_start_5
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 679
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_RenderType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 682
    :cond_7
    :try_start_6
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 684
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1
.end method

.method private setPosition(JII)J
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    .line 937
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 939
    :try_start_0
    const-string v0, "msec: %d, toleranceBefore: %d, toleranceAfter: %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 940
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-wide v0, v4

    :goto_0
    return-wide v0

    .line 944
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAdMode:Z

    if-eqz v0, :cond_6

    .line 946
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 947
    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v6

    .line 948
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "laoxia nCurr %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v1, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0, v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->isSeekable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 951
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "isSeekable true"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 952
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setDesPos(J)V

    .line 953
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0, v6, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->seek(IJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;

    .line 954
    if-nez v0, :cond_1

    .line 956
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "setPosition return seekInfo error!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1000
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-wide v0, v4

    goto :goto_0

    .line 959
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->getAdsSequnceNumber()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isMdialogVodType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 962
    :cond_2
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->getContentSeekPos()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPositionInner(JII)J

    move-result-wide v0

    .line 977
    :goto_1
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SEEKS:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1000
    :goto_2
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 966
    :cond_3
    :try_start_3
    new-instance v1, Lcom/visualon/OSMPUtils/voOSPeriodTime;

    invoke-direct {v1}, Lcom/visualon/OSMPUtils/voOSPeriodTime;-><init>()V

    .line 967
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->getAdsSequnceNumber()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/visualon/OSMPUtils/voOSPeriodTime;->setPeriodSequenceNumber(I)V

    .line 968
    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v5, 0x3000022

    invoke-virtual {v4, v5, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    int-to-long v4, v4

    .line 970
    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    .line 1000
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-wide v0, v4

    goto/16 :goto_0

    .line 974
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->getContentSeekPos()J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSeekContentPos:I

    .line 975
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSPeriodTime;->getTimeStamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPositionInner(JII)J

    move-result-wide v0

    goto :goto_1

    .line 981
    :cond_5
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "isSeekable false"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_2

    .line 987
    :cond_6
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableDVRPosition:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isLiveStreaming()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 989
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000015

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSDVRInfo;

    .line 991
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSDVRInfo;->getLiveTime()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPositionInner(JII)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    .line 1000
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 994
    :cond_7
    :try_start_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPositionInner(JII)J

    move-result-wide v0

    .line 995
    const-string v2, "@@@VOCommonPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VOCommonPlayerImpl setPosition, return new position is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1000
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private setPositionInner(J)J
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 881
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPositionInner(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method private setPositionInner(JII)J
    .locals 5

    .prologue
    .line 885
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 887
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 891
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bIsSeeking:Z

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3, p4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetPosTolerance(III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 904
    :cond_1
    :goto_1
    int-to-long v0, v0

    .line 906
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 895
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bIsSeeking:Z

    .line 897
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3, p4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetPosTolerance(III)I

    move-result v0

    .line 898
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 899
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "SetPos fail"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bIsSeeking:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 906
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private trylockAndSendSyncEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 3228
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3229
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Lock for event %d fail"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3230
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_OUT_OF_TIME:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3240
    :goto_0
    return-object v0

    .line 3233
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOSyncEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3235
    :try_start_2
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3238
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3240
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 3235
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
.end method


# virtual methods
.method public canBePaused()Z
    .locals 3

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1236
    :try_start_0
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl canBePaused "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public canPlayIframeOnly()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4992
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4994
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 5003
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v2

    .line 4997
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v3, "canPlayIframeOnly"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4998
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v3, 0x3000046

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    .line 4999
    instance-of v3, v0, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 5003
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 5001
    :cond_1
    :try_start_2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 5003
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 5001
    goto :goto_1

    .line 5003
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public clearSelection()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2313
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 2314
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2319
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2315
    :cond_0
    const/4 v0, -0x2

    :try_start_1
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nSelectedAudio:I

    .line 2316
    const/4 v0, -0x2

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nSelectedSubtitle:I

    .line 2317
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->ClearSelection()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2319
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public close()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 690
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 692
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 694
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 695
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAdMode:Z

    if-eqz v0, :cond_1

    .line 697
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "close send VO_ADSMANAGER_ACTION_CLOSE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_CLOSE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPosition()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 699
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->Close()I

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Close()I

    move-result v0

    .line 703
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- CommonPlayer --- isAdMode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAdMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    iget-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAdMode:Z

    if-eqz v1, :cond_2

    .line 706
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "--- CommonPlayer --- true close"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSubtitle:Z

    .line 708
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bAdHideSubtitle:Z

    .line 709
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSubtitleShow:Z

    .line 711
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nLiveStreaming:I

    .line 712
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOCommonPlayerImpl Close, return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 716
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public commitSelection()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x2

    .line 2277
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2279
    :try_start_0
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v2, :cond_0

    .line 2280
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2305
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2282
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getCurrentSelection()Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;

    move-result-object v2

    .line 2283
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;->getAudioIndex()I

    move-result v3

    iget v4, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nSelectedAudio:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nSelectedAudio:I

    if-eq v3, v5, :cond_1

    iget-boolean v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bPreferenceAudioSmooth:Z

    if-nez v3, :cond_1

    move v1, v0

    .line 2287
    :cond_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;->getSubtitleIndex()I

    move-result v2

    iget v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nSelectedSubtitle:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nSelectedSubtitle:I

    if-eq v2, v5, :cond_3

    .line 2291
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->CommitSelection()I

    move-result v1

    .line 2292
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    .line 2294
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPosition()J

    move-result-wide v2

    .line 2295
    invoke-virtual {p0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPosition(J)J

    .line 2296
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Commit selection, then seek current position."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2298
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_2

    .line 2299
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->AfterCommitSelection()V

    .line 2301
    :cond_2
    const/4 v0, -0x2

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nSelectedAudio:I

    .line 2302
    const/4 v0, -0x2

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nSelectedSubtitle:I

    .line 2303
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2305
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public destroy()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 402
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 404
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->Uninit()I

    .line 408
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    .line 410
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_4

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 412
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    .line 413
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDrmHandle:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPUtils/voOSMPDRM;->destoryDRM(Ljava/lang/Long;)I

    .line 416
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDrmHandle:Ljava/lang/Long;

    .line 417
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLua:Lcom/visualon/OSMPUtils/voLua;

    if-eqz v1, :cond_2

    .line 421
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLua:Lcom/visualon/OSMPUtils/voLua;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voLua;->uninit()Z

    .line 422
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLua:Lcom/visualon/OSMPUtils/voLua;

    .line 425
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->closeTimer()Z

    .line 427
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSubtitle:Z

    .line 428
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bAdHideSubtitle:Z

    .line 429
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSubtitleShow:Z

    .line 430
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSEIPostProcessVideo:Z

    .line 432
    const/4 v1, 0x0

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mScreenWidth:I

    .line 433
    const/4 v1, 0x0

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mScreenHeight:I

    .line 434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    .line 436
    const/4 v1, -0x1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nLiveStreaming:I

    .line 437
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOCommonPlayerImpl destroy, return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAmzn:Z

    if-eqz v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mAudioCapabilityReceiver:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    if-eqz v1, :cond_3

    .line 442
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mAudioCapabilityReceiver:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->unregister()V

    .line 443
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mAudioCapabilityReceiver:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    .line 447
    :cond_3
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 410
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Uninit()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public do_open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 523
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 525
    :try_start_0
    const-string v2, "url: %s, flag: %d, type: %d, openParam: getDecoderType: %d - getDuration: %d - getFileSize: %d"

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v3, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {p3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    if-nez p4, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v4, 0x4

    if-nez p4, :cond_2

    const-wide/16 v0, 0x0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v4, 0x5

    if-nez p4, :cond_3

    const-wide/16 v0, 0x0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mVideoView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_4

    .line 531
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "mPlayer cannot be null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    :goto_3
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_4
    return-object v0

    .line 525
    :cond_1
    :try_start_1
    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getDecoderType()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getDuration()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getFileSize()J

    move-result-wide v0

    goto :goto_2

    .line 535
    :cond_4
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "SurfaceView/Surface should be set before open function"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 605
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 539
    :cond_5
    if-eqz p1, :cond_6

    if-nez p3, :cond_7

    .line 540
    :cond_6
    :try_start_2
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_PARAMID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 605
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    .line 541
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 542
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "@@@Surface VOCommonPlayerImpl::open surface is inValid -----------"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    :cond_8
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nLiveStreaming:I

    .line 545
    if-eqz p4, :cond_b

    .line 546
    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getDecoderType()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCodeType:I

    .line 547
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3010012

    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 550
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3010016

    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 552
    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getDRMLicenseRetriever()Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 554
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;

    if-nez v0, :cond_9

    .line 556
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/DRM/WidevineLicenseManager;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;

    .line 558
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;->initDrmStack()Z

    move-result v0

    if-nez v0, :cond_9

    .line 560
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 605
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_4

    .line 565
    :cond_9
    :try_start_4
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;

    if-eqz v0, :cond_a

    .line 566
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;

    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getDRMLicenseRetriever()Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;->setLicenseRetriever(Lcom/visualon/OSMPPlayer/VOOSMPLicenseRetriever;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 568
    :cond_a
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Open Param, FILE_SIZE , %x, param value is %d; Duration, %x, param value is %d, CodecType is %X"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x3010012

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getFileSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x3010016

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCodeType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    :cond_b
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayerType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;->VO_OSMP_VOME2_PLAYER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    if-ne v0, v1, :cond_c

    .line 575
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCodeType:I

    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setCodeType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-eq v0, v1, :cond_c

    .line 577
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 605
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_4

    .line 582
    :cond_c
    :try_start_5
    invoke-virtual {p3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->getValue()I

    move-result v3

    .line 584
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3010014

    const-string v2, "voSourceIO"

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 586
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3010015

    const-string v2, "voGetSourceIOAPI"

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 589
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VO_OSMP_SOURCE_FORMAT is %s, IO_FILE_NAME is %s, IO_API_NAME is %s. Source flag is %s, type is %s."

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "voSourceIO"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "voGetSourceIOAPI"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    invoke-virtual {p3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->getValue()I

    move-result v1

    or-int/lit8 v2, v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Open(Ljava/lang/Object;IIII)I

    move-result v1

    .line 595
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_d

    .line 596
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x3010011

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPDataSource/voOSDataSource;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    .line 599
    :cond_d
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOCommonPlayerImpl open, return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_e

    .line 602
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "@@@Surface VOCommonPlayerImpl::open surface is inValid +++++++"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    :cond_e
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 605
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_4
.end method

.method public do_pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    .line 808
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 810
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 812
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 814
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Pause()I

    move-result v0

    .line 815
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOCommonPlayerImpl Pause, return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_STATE_CHANGE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->getValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 823
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v1

    .line 824
    invoke-direct {p0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v1

    .line 825
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 826
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsPaused:Z

    .line 829
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 831
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public do_stop()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    .line 845
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 847
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 849
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 851
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bIsSeeking:Z

    .line 854
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAdMode:Z

    if-eqz v0, :cond_2

    .line 856
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 857
    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v1

    .line 858
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Stop()I

    move-result v0

    .line 859
    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_STATE_CHANGE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->VO_OSMP_AD_STATUS_STOPPED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_AD_STATUS;->getValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 862
    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsPlaybackComplete:Z

    if-nez v2, :cond_1

    .line 864
    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "COMPLETE OR CLOSE VO_ADSMANAGER_ACTION_FORCESTOP"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 865
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_FORCESTOP:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 871
    :cond_1
    :goto_1
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOCommonPlayerImpl stop, return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 876
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 869
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Stop()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1

    .line 876
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableAnalytics(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1841
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 1842
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1850
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1844
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl enableAnalytics. "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1845
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x34

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 1846
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x38

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 1848
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1850
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableAnalyticsAgent(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1900
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1902
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v1, :cond_0

    .line 1903
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1909
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1905
    :cond_0
    :try_start_1
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOCommonPlayerImpl enableAnalyticsAgent("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1906
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x90

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 1907
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1909
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableAnalyticsDisplay(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4675
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4677
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4678
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4684
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4681
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x6b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4682
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4684
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableAnalyticsExport(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1945
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1947
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v1, :cond_0

    .line 1948
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1954
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1950
    :cond_0
    :try_start_1
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOCommonPlayerImpl enableAnalyticsExport "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1951
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x8b

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 1952
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1954
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableAnalyticsFoundation(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1856
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1858
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v1, :cond_0

    .line 1859
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1866
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1861
    :cond_0
    :try_start_1
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOCommonPlayerImpl enableAnalyticsFoundation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1862
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x82

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 1864
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1866
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableAnalyticsFoundationLocation(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1886
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1888
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v1, :cond_0

    .line 1889
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1894
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1890
    :cond_0
    :try_start_1
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOCommonPlayerImpl enableAnalyticsFoundationLocation("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1891
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x84

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 1892
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1894
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableAudioDecoderLibrary(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_CODEC_TYPE;Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4511
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4513
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4514
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4520
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4516
    :cond_0
    :try_start_1
    new-instance v0, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_CODEC_TYPE;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;-><init>(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;Z)V

    .line 4517
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4518
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4520
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableAudioEffect(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3211
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3213
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v1, :cond_0

    .line 3214
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3222
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3216
    :cond_0
    :try_start_1
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enableAudioEffect , VOOSMP_PID_AUDIO_EFFECT_ENABLE  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3218
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3220
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3222
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableAudioStream(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3160
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3162
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3163
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3170
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3166
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x1e

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3168
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3170
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3166
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3170
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableCPUAdaptation(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4224
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4226
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4227
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4233
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4230
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x3000011

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4231
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4233
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 4230
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 4233
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableDRMOfflineMode(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5125
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5127
    :try_start_0
    const-string v2, "@@@VOCommonPlayerImpl"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "enable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5128
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v2, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5132
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 5128
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v3, 0x3000047

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 5132
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableDeblock(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1348
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1350
    :try_start_0
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "VOCommonPlayerImpl enableDeblock "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v1, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1351
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x25

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1355
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableDolbyLibrary(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 4332
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4334
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4335
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4344
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4338
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 4339
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x5d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 4340
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4341
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_CODEC_TYPE;->VO_OSMP_AUDIO_CODEC_DOLBY:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_CODEC_TYPE;

    invoke-virtual {p0, v1, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->enableAudioDecoderLibrary(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_CODEC_TYPE;Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4342
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4344
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 4338
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4344
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableFullScreen(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4140
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4142
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4143
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4162
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4146
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4149
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 4150
    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v0

    .line 4151
    if-eqz p1, :cond_2

    .line 4153
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_FULLSCREENON:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 4160
    :cond_1
    :goto_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4162
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 4157
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_FULLSCREENOFF:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4162
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableHTTPGzipRequest(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4755
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4757
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v1, :cond_0

    .line 4758
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4765
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4762
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x3000039

    if-ne p1, v0, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4763
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4765
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 4762
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4765
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableLiveStreamingDVRPosition(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1485
    :try_start_0
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableDVRPosition:Z

    .line 1486
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableLowLatencyVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3192
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3194
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3195
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3205
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3201
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x3000018

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3203
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3205
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3201
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3205
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enablePCMOutput(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3604
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3606
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3611
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3609
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x47

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3611
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3609
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3611
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableRTSPOverHTTP(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4287
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4289
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4290
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4296
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4293
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x3000028

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4294
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4296
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 4293
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4296
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableSEI(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SEI_INFO_FLAG;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4106
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4108
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4109
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4117
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4112
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x3f

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SEI_INFO_FLAG;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4115
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4117
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableSEIPostProcessVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4123
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4125
    :try_start_0
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v2, :cond_0

    .line 4126
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4134
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4128
    :cond_0
    :try_start_1
    const-string v3, "@@@VOCommonPlayerImpl"

    const-string v4, "value: %d"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    move v2, v0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4129
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSEIPostProcessVideo:Z

    .line 4130
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v3, 0x80

    if-eqz p1, :cond_2

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4132
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4134
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    move v2, v1

    .line 4128
    goto :goto_1

    :cond_2
    move v0, v1

    .line 4130
    goto :goto_2

    .line 4134
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected enableSixChannel()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Enable six channel for PCM"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x10022

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 341
    :cond_0
    return-void
.end method

.method public enableSubtitle(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2424
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2426
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Player is  NULL  ====>>> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2427
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2451
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2430
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSubtitle:Z

    .line 2432
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2435
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 2436
    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v0

    .line 2437
    iget-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSubtitle:Z

    if-eqz v1, :cond_2

    .line 2439
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- setAction Subtitle On --- currPosition = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2440
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SUBTITLEON:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 2449
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->refreshSubtitle()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2451
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2444
    :cond_2
    :try_start_2
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- setAction Subtitle Off -- currPosition = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2445
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SUBTITLEOFF:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2451
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableSubtitleAutoAdjustment(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4930
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4932
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 4938
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4935
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x3000043

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4936
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4938
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 4935
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4938
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableVOAdaptivePlayback(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4632
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4634
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4635
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4641
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4638
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x102c

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4639
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4641
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableVideoStream(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3178
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3179
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3186
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3182
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x1f

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3184
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3186
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3182
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3186
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enforceSoftwareVideoScaling(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4944
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4946
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4947
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4954
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4949
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enforceSoftwareVideoScaling:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4951
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->enforceSoftwareVideoScaling(Z)I

    move-result v0

    .line 4952
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4954
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getAnalytics(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;)Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsInfo;
    .locals 28

    .prologue
    .line 2061
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2063
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 2066
    :cond_0
    :try_start_1
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "VOCommonPlayerImpl getAnalytics. "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2067
    const/4 v1, 0x1

    new-array v13, v1, [I

    .line 2068
    new-instance v1, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->getLastTime()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->getSourceTime()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->getCodecTime()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->getRenderTime()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;->getJitterTime()I

    move-result v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v1 .. v27}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;-><init>(IIIIIIIIIII[IIIIIIIIIIIIIII)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v3, 0x35

    invoke-virtual {v2, v3, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 2075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x35

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;

    .line 2077
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;

    invoke-direct {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2078
    if-nez v1, :cond_1

    .line 2119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v1, 0x0

    goto :goto_0

    .line 2081
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->LastTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setLastTime(I)V

    .line 2082
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->SourceDropNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setSourceDropNum(I)V

    .line 2083
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->CodecDropNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setCodecDropNum(I)V

    .line 2084
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->RenderDropNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setRenderDropNum(I)V

    .line 2085
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->DecodedNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setDecodedNum(I)V

    .line 2086
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->RenderNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setRenderNum(I)V

    .line 2087
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->SourceTimeNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setSourceTimeNum(I)V

    .line 2088
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->CodecTimeNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setCodecTimeNum(I)V

    .line 2089
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->RenderTimeNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setRenderTimeNum(I)V

    .line 2090
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->JitterNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setJitterNum(I)V

    .line 2091
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->CodecErrorsNum()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setCodecErrorsNum(I)V

    .line 2092
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->CodecErrors()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setCodecErrors([I)V

    .line 2093
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->CPULoad()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setCPULoad(I)V

    .line 2094
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->Frequency()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setFrequency(I)V

    .line 2095
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->MaxFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setMaxFrequency(I)V

    .line 2096
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->WorstDecodeTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setWorstDecodeTime(I)V

    .line 2097
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->WorstRenderTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setWorstRenderTime(I)V

    .line 2098
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->AverageDecodeTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setAverageDecodeTime(I)V

    .line 2099
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->AverageRenderTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setAverageRenderTime(I)V

    .line 2100
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->TotalCPULoad()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->setTotalCPULoad(I)V

    .line 2102
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v3, "VOOSMPAnalyticsInfoImpl LastTime() is %d, SourceDropNum is %d, CodecDropNum is %d, RenderDropNum is %d, DecodedNum() is %d, RenderNum() is %d, SourceTimeNum is %d, CodecTimeNum is %d, RenderTimeNum is %d, JitterNum is %d, CodecErrorsNum is %d, CPULoad is %d, Frequency is %d, MaxFrequency() is %d, WorstDecodeTime is %d, WorstRenderTime is %d, AverageDecodeTime is %d, AverageRenderTime is %d, TotalCPULoad is %d, Average FPS is %f"

    const/16 v4, 0x14

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getLastTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getSourceDropNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getCodecDropNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getRenderDropNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getDecodedNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getRenderNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getSourceTimeNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getCodecTimeNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getRenderTimeNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getJitterNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getCodecErrorsNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getCPULoad()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getFrequency()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getMaxFrequency()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getWorstDecodeTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getWorstRenderTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x10

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getAverageDecodeTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x11

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getAverageRenderTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x12

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getTotalCPULoad()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const/high16 v6, 0x447a0000    # 1000.0f

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->getAverageRenderTime()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getAnalyticsExportPacket()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1962
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 1963
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1968
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1964
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl getAnalyticsExportPacket"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1965
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1966
    if-eqz v0, :cond_1

    .line 1968
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1966
    :cond_1
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1968
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getAnalyticsFPS()F
    .locals 2

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2002
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2007
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    .line 2005
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2007
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getAudioCount()I
    .locals 2

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2176
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 2177
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2181
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 2179
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetAudioCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2181
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getAudioDecodingBitrate()[I
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 4204
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4206
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 4218
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4210
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4211
    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 4212
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 4214
    rsub-int/lit8 v3, v2, 0x9

    aget v4, v0, v2

    mul-int/lit8 v4, v4, 0x8

    aput v4, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4218
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getAudioProperty(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;
    .locals 3

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2344
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2353
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2347
    :cond_0
    :try_start_1
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;-><init>()V

    .line 2348
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_AUDIO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->fillAssetsProperty(Lcom/visualon/OSMPDataSource/voOSDataSource;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2353
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getCurrentSelection()Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;
    .locals 2

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2393
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2400
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2396
    :cond_0
    :try_start_1
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;-><init>()V

    .line 2397
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->fillSelectionAssetsIndex(Lcom/visualon/OSMPDataSource/voOSDataSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2400
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getDRMUniqueIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3590
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3592
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3597
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3595
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x300000f

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3597
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2941
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStatus(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;
    .locals 3

    .prologue
    .line 3679
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3680
    :cond_0
    const/4 v0, 0x0

    .line 3689
    :goto_0
    return-object v0

    .line 3683
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000040

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3684
    if-nez v0, :cond_2

    .line 3685
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    goto :goto_0

    .line 3686
    :cond_2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3687
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    move-result-object v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1054
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 1055
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 1063
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-wide v0

    .line 1057
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAdMode:Z

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getContentDuration()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 1063
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1061
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetDuration()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 1063
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getFrameScrubbingThumbnail(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4917
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4919
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 4924
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4922
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetFrameScrubbingThumbnail(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4924
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getMaxCPUFrequency()J
    .locals 3

    .prologue
    .line 2912
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2914
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2921
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 2917
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSCPUInfo;

    .line 2919
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSCPUInfo;->Frequency()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 2921
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getMaxPosition()J
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 1517
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1519
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-wide v0, v2

    :goto_0
    return-wide v0

    .line 1522
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isLiveStreaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1523
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getDuration()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 1540
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1525
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000015

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSDVRInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1527
    if-nez v0, :cond_2

    .line 1540
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-wide v0, v2

    goto :goto_0

    .line 1530
    :cond_2
    :try_start_3
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "getMaxPosition, StartTime is %d, EndTime is %d, PlayingTime is %d, LivingTime is %d."

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSDVRInfo;->getStartTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSDVRInfo;->getEndTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSDVRInfo;->getPlayingTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSDVRInfo;->getLiveTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1535
    iget-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableDVRPosition:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isLiveStreaming()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 1540
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1538
    :cond_3
    :try_start_4
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSDVRInfo;->getEndTime()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    .line 1540
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getMinPosition()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 1494
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1496
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-wide v0, v2

    :goto_0
    return-wide v0

    .line 1499
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isLiveStreaming()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1511
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1502
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000015

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSDVRInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1504
    if-nez v0, :cond_2

    .line 1511
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-wide v0, v2

    goto :goto_0

    .line 1506
    :cond_2
    :try_start_3
    iget-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableDVRPosition:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isLiveStreaming()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1507
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSDVRInfo;->getStartTime()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSDVRInfo;->getLiveTime()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    sub-long v0, v2, v0

    .line 1511
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1509
    :cond_3
    :try_start_4
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSDVRInfo;->getStartTime()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    .line 1511
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getNumberOfCores()I
    .locals 2

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2884
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2891
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2887
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSCPUInfo;

    .line 2889
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSCPUInfo;->CoreCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2891
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getOSType()Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;
    .locals 1

    .prologue
    .line 2928
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->VO_OSMP_DEVICE_INFO_OS_ANDROID:Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2934
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1423
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 1424
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1426
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VOCommonPlayerImpl getParameter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1427
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    .line 1428
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1430
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;
    .locals 5

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1219
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1221
    :cond_0
    :try_start_1
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "VOCommonPlayerImpl getPlayerStatus "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v3

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1225
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v1

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1228
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getPlayerType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;
    .locals 3

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1407
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1409
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl getPlayerType "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1410
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    move-result-object v1

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1413
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getPlayingAsset()Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;
    .locals 2

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2378
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2385
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2381
    :cond_0
    :try_start_1
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;-><init>()V

    .line 2382
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->fillPlayingAssetsIndex(Lcom/visualon/OSMPDataSource/voOSDataSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2385
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getPosition()J
    .locals 6

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1009
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    .line 1011
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAdMode:Z

    if-eqz v0, :cond_3

    .line 1013
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSeekContentPos:I

    .line 1014
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 1019
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getCustomerEngine()Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getCustomerEngine()Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    if-ne v1, v2, :cond_2

    .line 1021
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 1022
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "nCurr %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1023
    int-to-long v2, v0

    .line 1046
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1025
    :cond_2
    :try_start_2
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "MDIALOG_BEFORE nCurr %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1026
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getTimeStamp(I)I

    move-result v0

    .line 1027
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "MDIALOG_AFTER nCurr %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1029
    int-to-long v2, v0

    .line 1046
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1031
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    int-to-long v2, v0

    .line 1033
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isLiveStreaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1034
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000015

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSDVRInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1035
    if-nez v0, :cond_4

    .line 1046
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1038
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    .line 1039
    :try_start_4
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSDVRInfo;->getPlayingTime()J

    move-result-wide v2

    .line 1040
    :cond_5
    iget-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableDVRPosition:Z

    if-eqz v1, :cond_6

    .line 1041
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSDVRInfo;->getLiveTime()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    sub-long/2addr v2, v0

    .line 1046
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_6
    move-wide v0, v2

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-wide v2, v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getProcessorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4750
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public getRTSPStatistics()Lcom/visualon/OSMPPlayer/VOOSMPRTSPStatistics;
    .locals 2

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3005
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3014
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3008
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000017

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;

    .line 3012
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;

    invoke-direct {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;-><init>(Lcom/visualon/OSMPUtils/voOSRTSPStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3014
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getSEIInfo(JLcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SEI_INFO_FLAG;)Lcom/visualon/OSMPPlayer/VOOSMPSEIPicTiming;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4081
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4083
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4084
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "getSEIInfo failed, return null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4100
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v1

    .line 4088
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SEI_INFO_FLAG;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    move-result-object v0

    .line 4089
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v2, v0, p1, p2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetSEITimingInfo(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;

    .line 4092
    if-eqz v0, :cond_1

    .line 4094
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;

    invoke-direct {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;-><init>(Lcom/visualon/OSMPUtils/voOSSEIPicTiming;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 4100
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getScreenBrightness()I
    .locals 2

    .prologue
    .line 3431
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3433
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3434
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3439
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 3437
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetScreenBrightness()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 3439
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getScreenBrightnessMode()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;
    .locals 2

    .prologue
    .line 3402
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3404
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3405
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;->VO_OSMP_SCREEN_BRIGHTNESS_MODE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3411
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3408
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetScreenBrightnessMode()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3411
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getSubtitleCount()I
    .locals 2

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2189
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 2190
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2194
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 2192
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetSubtitleCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2194
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getSubtitleProperty(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;
    .locals 3

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2361
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2370
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2364
    :cond_0
    :try_start_1
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;-><init>()V

    .line 2365
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_SUBTITLE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->fillAssetsProperty(Lcom/visualon/OSMPDataSource/voOSDataSource;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2370
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getUTCPosition()J
    .locals 3

    .prologue
    .line 4647
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4649
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 4654
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 4652
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4654
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getValidBufferDuration()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 3694
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    move v0, v1

    .line 3700
    :goto_0
    return v0

    .line 3698
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x3000041

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    .line 3699
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 3700
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getVersion(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_MODULE_TYPE;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3662
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3664
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3672
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3666
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_MODULE_TYPE;->getValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    xor-int/lit8 v0, v0, 0x49

    .line 3667
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;

    .line 3668
    if-nez v0, :cond_2

    .line 3669
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3672
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3670
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->GetVersion()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 3672
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getVideoAdClickThru()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3860
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3862
    :try_start_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 3879
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3867
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v1

    .line 3868
    invoke-direct {p0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v1

    .line 3870
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v2, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->isSeekable(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3872
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_CLICK:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setActionSync(II)Ljava/lang/String;

    move-result-object v0

    .line 3873
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setClickThrough(Ljava/lang/String;)V

    .line 3876
    :cond_1
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get AD url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3879
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getVideoCount()I
    .locals 2

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2163
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 2164
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2168
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 2166
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetVideoCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2168
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getVideoDecodingBitrate()[I
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 4185
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4187
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 4198
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4191
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 4192
    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 4193
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 4194
    rsub-int/lit8 v3, v2, 0x9

    aget v3, v0, v3

    mul-int/lit8 v3, v3, 0x8

    aput v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4193
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4198
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getVideoProperty(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;
    .locals 3

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2327
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2336
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2330
    :cond_0
    :try_start_1
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;-><init>()V

    .line 2331
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_VIDEO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->fillAssetsProperty(Lcom/visualon/OSMPDataSource/voOSDataSource;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2336
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public hasNeon()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2897
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2899
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2906
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v2

    .line 2902
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSCPUInfo;

    .line 2904
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSCPUInfo;->CPUType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 2906
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2904
    goto :goto_1

    .line 2906
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public init(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;Lcom/visualon/OSMPPlayer/VOOSMPInitParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .prologue
    .line 346
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 348
    :try_start_0
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mContext:Landroid/content/Context;

    .line 349
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayerType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    .line 350
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->getLibraryPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLibPath:Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLibPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voLog;->initLogLib(Ljava/lang/String;)I

    .line 352
    const-string v1, "Player engine type: %s, initParam: getContext: %s - getLibraryPath: %s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->getLibraryPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_NATIVE_WINDOW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_RenderType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 355
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Uninit()I

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    .line 359
    :cond_0
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-direct {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    .line 360
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayerType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;->ordinal()I

    move-result v4

    .line 361
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->getLibraryPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Init(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)I

    move-result v1

    .line 363
    if-eqz v1, :cond_2

    .line 365
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Uninit()I

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    .line 367
    const v0, -0x7ffffeff

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v0

    .line 352
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->setEventListener(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;)V

    .line 371
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->setRequestListener(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;)V

    .line 374
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_rightVolumeValue:F

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_leftVolumeValue:F

    .line 376
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;-><init>(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    .line 378
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x27

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 381
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 386
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAmzn:Z

    if-eqz v0, :cond_3

    .line 387
    new-instance v2, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0, p0}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;-><init>(Landroid/content/Context;Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;)V

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mAudioCapabilityReceiver:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    .line 389
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mAudioCapabilityReceiver:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->register()V

    .line 392
    :cond_3
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurPlayingTime:J

    .line 394
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isAudioAvailable(I)Z
    .locals 2

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2253
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2256
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->IsAudioAvailable(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2258
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isLiveStreaming()Z
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3445
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3447
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3471
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v2

    .line 3450
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nLiveStreaming:I

    if-ne v3, v0, :cond_2

    .line 3452
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetProgramInfo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSProgramInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3453
    if-nez v0, :cond_1

    .line 3471
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3456
    :cond_1
    :try_start_2
    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->VOOSMP_SRC_PROGRAM_TYPE_LIVE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSProgramInfo;->getProgramType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 3457
    const/4 v0, 0x1

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nLiveStreaming:I

    .line 3469
    :cond_2
    :goto_1
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nLiveStreaming:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v1, :cond_5

    move v0, v1

    .line 3471
    :goto_2
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v0

    goto :goto_0

    .line 3459
    :cond_3
    :try_start_3
    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->VOOSMP_SRC_PROGRAM_TYPE_VOD:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSProgramInfo;->getProgramType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    move-result-object v0

    if-ne v3, v0, :cond_4

    .line 3460
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nLiveStreaming:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3471
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 3463
    :cond_4
    const/4 v0, -0x1

    :try_start_4
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nLiveStreaming:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3471
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 3469
    goto :goto_2
.end method

.method public isOutputControlActive(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4435
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4437
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4438
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "isOutputControlActive, Player VO_OSMP_ERR_UNINITIALIZE"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4467
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    :goto_0
    return v0

    .line 4443
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v3, 0x64

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4446
    if-eqz v0, :cond_1

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 4447
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4454
    sparse-switch v0, :sswitch_data_0

    .line 4463
    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "isOutputControlActive, GetParam id is VOOSMP_PID_OUTPUT_CONTROL_ACTIVE, return value is invalid %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4467
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    .line 4450
    :cond_1
    :try_start_2
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "GetParam(voOSType.VOOSMP_PID_OUTPUT_CONTROL_ACTIVE, %s) return null or invalid value"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4467
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v2

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 4454
    :sswitch_data_0
    .sparse-switch
        -0x7ffffff2 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public isOutputControlEnforce(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4473
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4475
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4476
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "isOutputControlEnforce, Player VO_OSMP_ERR_UNINITIALIZE"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4504
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    :goto_0
    return v0

    .line 4480
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v3, 0x65

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4483
    if-eqz v0, :cond_1

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 4484
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4491
    sparse-switch v0, :sswitch_data_0

    .line 4500
    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "isOutputControlEnforce, GetParam id is VOOSMP_PID_OUTPUT_CONTROL_ENFORCE, return value is invalid %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4504
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    .line 4487
    :cond_1
    :try_start_2
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "GetParam(voOSType.VOOSMP_PID_OUTPUT_CONTROL_ENFORCE, %s) return null or invalid value"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4504
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v2

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 4491
    :sswitch_data_0
    .sparse-switch
        -0x7ffffff2 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public isSubtitleAvailable(I)Z
    .locals 2

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2266
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2271
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2269
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->IsSubtitleAvailable(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2271
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isVideoAvailable(I)Z
    .locals 2

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2240
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2245
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2243
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->IsVideoAvailable(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2245
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public loadAdCall(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3846
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3848
    :try_start_0
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;-><init>()V

    .line 3849
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3850
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->VO_OSMP_FLAG_SRC_OPEN_ASYNC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_AUTO_DETECT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3852
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3854
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public loadVideo(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 4706
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4708
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    if-nez v0, :cond_1

    .line 4709
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4744
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4712
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->stop()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4713
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->Close()I

    .line 4714
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->Uninit()I

    .line 4715
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAdsManager(Z)V

    .line 4716
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mAdsEventListener:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setOnEventListener(Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$adsListener;)V

    .line 4717
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setContext(Landroid/content/Context;)V

    .line 4718
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsPlaybackComplete:Z

    .line 4720
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;

    invoke-direct {v0, p2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)V

    .line 4721
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setVideoID(Ljava/lang/String;)V

    .line 4722
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLibPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;->setWorkingPath(Ljava/lang/String;)V

    .line 4723
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---loadVideo(...)--- param.getDecoderType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getDecoderType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4724
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->getDecoderType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setDecoderType(I)V

    .line 4726
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->Init(Lcom/visualon/OSMPPlayerImpl/VOOSMPAdOpenParamInner;)I

    move-result v0

    .line 4727
    if-eqz v0, :cond_2

    .line 4729
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "loadVideoById open error!!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4730
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAdsManager(Z)V

    .line 4731
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4744
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 4734
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->Open()I

    move-result v0

    .line 4735
    if-eqz v0, :cond_3

    .line 4737
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "loadVideoById open error!!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4738
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAdsManager(Z)V

    .line 4739
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 4744
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 4742
    :cond_3
    :try_start_3
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4744
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public loadVideoById(Ljava/lang/String;Ljava/lang/String;IILcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 3718
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;-><init>()V

    .line 3719
    invoke-virtual {v1, p2}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setAdvertisingID(Ljava/lang/String;)V

    .line 3720
    and-int v0, p4, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setDebug(Z)V

    .line 3721
    const v0, 0x7fffffff

    and-int/2addr v0, p4

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v0

    .line 3722
    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setFlag(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;)V

    .line 3723
    invoke-virtual {v1, p5}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)V

    .line 3724
    invoke-virtual {v1, p6}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setStrOnceUXURL(Ljava/lang/String;)V

    .line 3725
    invoke-virtual {p0, p1, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->loadVideo(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0

    .line 3720
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadVideoByUrl(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3832
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3834
    :try_start_0
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;-><init>()V

    .line 3835
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3836
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->VO_OSMP_FLAG_SRC_OPEN_ASYNC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_AUTO_DETECT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3838
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3840
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public mute()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2948
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2949
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2950
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2966
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2955
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetVolume(FF)I

    .line 2957
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2959
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 2960
    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v0

    .line 2961
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_MUTEON:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 2964
    :cond_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2966
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onEvent(IIILjava/lang/Object;)I
    .locals 16

    .prologue
    .line 1547
    invoke-static/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    move-result-object v15

    .line 1549
    const-string v4, "@@@VOCommonPlayerImpl"

    const-string v5, "onEvent. id is 0x%X, name is %s, param1 is 0x%X, param2 is 0x%X. "

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v15}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    if-nez v4, :cond_0

    .line 1552
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    .line 1833
    :goto_0
    return v4

    .line 1554
    :cond_0
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1556
    const v4, 0x2000020

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 1557
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1558
    invoke-virtual/range {p0 .. p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPosition()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1559
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v5, v0, v1, v2, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setID3Infor(IILjava/lang/Object;I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1562
    :cond_1
    const v4, 0x2000010

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 1563
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1564
    invoke-virtual/range {p0 .. p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getDuration()J

    move-result-wide v4

    .line 1565
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v6, :cond_2

    .line 1566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetDuration()I

    move-result v4

    int-to-long v4, v4

    .line 1567
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    .line 1568
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    const v7, 0x1230add2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setParam(ILjava/lang/Object;)I

    .line 1572
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v4

    .line 1573
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v4

    .line 1574
    const/4 v5, 0x3

    move/from16 v0, p1

    if-ne v0, v5, :cond_4

    .line 1575
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1576
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v6, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_BUFSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 1580
    :cond_4
    const/4 v5, 0x5

    move/from16 v0, p1

    if-ne v0, v5, :cond_5

    .line 1581
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1582
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v6, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_BUFSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 1586
    :cond_5
    const/4 v5, 0x4

    move/from16 v0, p1

    if-ne v0, v5, :cond_6

    .line 1587
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1588
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v6, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_BUFEND:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 1592
    :cond_6
    const/4 v5, 0x6

    move/from16 v0, p1

    if-ne v0, v5, :cond_7

    .line 1593
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1594
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v6, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_BUFEND:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 1598
    :cond_7
    const/16 v5, 0x12

    move/from16 v0, p1

    if-ne v0, v5, :cond_9

    .line 1599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    sget-object v5, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    sget-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_MEDIATYPE_CHANGE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->getValue()I

    move-result v6

    move/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v4, v5, v6, v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v4

    .line 1604
    if-nez v4, :cond_8

    .line 1605
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1606
    :cond_8
    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1609
    :cond_9
    const v5, 0x2000030

    move/from16 v0, p1

    if-ne v0, v5, :cond_12

    .line 1610
    const/4 v5, 0x6

    move/from16 v0, p2

    if-ne v0, v5, :cond_c

    .line 1612
    const-string v4, "@@@VOCommonPlayerImpl"

    const-string v5, "VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_DOWNLOADOK"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1613
    const/4 v4, 0x0

    .line 1614
    if-eqz p4, :cond_a

    .line 1616
    check-cast p4, Lcom/visualon/OSMPUtils/voOSChunkInfo;

    .line 1617
    new-instance v4, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Type()I

    move-result v5

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->RootUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Url()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->StartTime()J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Duration()J

    move-result-wide v10

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->TimeScale()J

    move-result-wide v12

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Reserved1()I

    move-result v14

    invoke-direct/range {v4 .. v14}, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;-><init>(ILjava/lang/String;Ljava/lang/String;JJJI)V

    .line 1619
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    sget-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    sget-object v7, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_DOWNLOADOK:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    invoke-virtual {v7}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->getValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8, v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v4

    .line 1624
    if-nez v4, :cond_b

    .line 1625
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1626
    :cond_b
    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1628
    :cond_c
    const/4 v5, 0x5

    move/from16 v0, p2

    if-ne v0, v5, :cond_f

    .line 1630
    const-string v4, "@@@VOCommonPlayerImpl"

    const-string v5, "VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_DROPPED"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1631
    const/4 v4, 0x0

    .line 1632
    if-eqz p4, :cond_d

    .line 1634
    check-cast p4, Lcom/visualon/OSMPUtils/voOSChunkInfo;

    .line 1635
    new-instance v4, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Type()I

    move-result v5

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->RootUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Url()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->StartTime()J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Duration()J

    move-result-wide v10

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->TimeScale()J

    move-result-wide v12

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Reserved1()I

    move-result v14

    invoke-direct/range {v4 .. v14}, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;-><init>(ILjava/lang/String;Ljava/lang/String;JJJI)V

    .line 1637
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    sget-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    sget-object v7, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_DROPPED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    invoke-virtual {v7}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->getValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8, v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v4

    .line 1642
    if-nez v4, :cond_e

    .line 1643
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1644
    :cond_e
    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1646
    :cond_f
    const/4 v5, 0x7

    move/from16 v0, p2

    if-ne v0, v5, :cond_12

    .line 1648
    const-string v4, "@@@VOCommonPlayerImpl"

    const-string v5, "VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_PLAYLIST_DOWNLOADOK"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1649
    const/4 v4, 0x0

    .line 1650
    if-eqz p4, :cond_10

    .line 1652
    check-cast p4, Lcom/visualon/OSMPUtils/voOSPlaylistData;

    .line 1653
    new-instance v4, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSPlaylistData;->getSZRootUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSPlaylistData;->getSZUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSPlaylistData;->getSZNewUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSPlaylistData;->getData()[B

    move-result-object v8

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSPlaylistData;->getReserved1()I

    move-result v9

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSPlaylistData;->getReserved2()I

    move-result v10

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSPlaylistData;->getPlaylistType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;

    move-result-object v11

    invoke-virtual {v11}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PLAYLIST_TYPE;->getValue()I

    move-result v11

    invoke-static {v11}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/visualon/OSMPPlayerImpl/VOOSMPPlaylistDataImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIILcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_PLAYLIST_TYPE;)V

    .line 1656
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    sget-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    sget-object v7, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_PLAYLIST_DOWNLOADOK:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;

    invoke-virtual {v7}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT;->getValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8, v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v4

    .line 1661
    if-nez v4, :cond_11

    .line 1662
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1663
    :cond_11
    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1666
    :cond_12
    const v5, 0x2000050

    move/from16 v0, p1

    if-ne v0, v5, :cond_13

    .line 1667
    packed-switch p2, :pswitch_data_0

    .line 1689
    :cond_13
    const/16 v5, 0x1c

    move/from16 v0, p1

    if-ne v0, v5, :cond_17

    .line 1690
    new-instance v4, Lcom/visualon/OSMPPlayerImpl/VOOSMPPCMBufferImpl;

    move/from16 v0, p2

    int-to-long v6, v0

    check-cast p4, [B

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v4, v6, v7, v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPPCMBufferImpl;-><init>(JI[B)V

    .line 1691
    sget-object v5, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_PCM_OUTPUT:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v4

    .line 1692
    if-nez v4, :cond_16

    .line 1693
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1672
    :pswitch_0
    const-string v4, "@@@VOCommonPlayerImpl"

    const-string v5, "VOOSMP_SRC_CB_Adaptive_Stream_Warning :%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1673
    const/4 v4, 0x0

    .line 1674
    if-eqz p4, :cond_14

    .line 1676
    check-cast p4, Lcom/visualon/OSMPUtils/voOSChunkInfo;

    .line 1677
    new-instance v4, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Type()I

    move-result v5

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->RootUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Url()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->StartTime()J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Duration()J

    move-result-wide v10

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->TimeScale()J

    move-result-wide v12

    invoke-interface/range {p4 .. p4}, Lcom/visualon/OSMPUtils/voOSChunkInfo;->Reserved1()I

    move-result v14

    invoke-direct/range {v4 .. v14}, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;-><init>(ILjava/lang/String;Ljava/lang/String;JJJI)V

    .line 1679
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    sget-object v6, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_ADAPTIVE_STREAMING_WARNING:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    const/4 v7, 0x0

    move/from16 v0, p2

    invoke-interface {v5, v6, v0, v7, v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v4

    .line 1683
    if-nez v4, :cond_15

    .line 1684
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1685
    :cond_15
    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1694
    :cond_16
    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1696
    :cond_17
    const/16 v5, 0x19

    move/from16 v0, p1

    if-ne v0, v5, :cond_1e

    .line 1698
    sget-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_EVENT_PIC_TIMING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    invoke-virtual {v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->getValue()I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_1a

    .line 1700
    const-string v4, "@@@VOCommonPlayerImpl"

    const-string v5, "VO_OSMP_CB_SEI_INFO event, SEI type, param1 is %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1701
    const/4 v4, 0x0

    .line 1702
    if-eqz p4, :cond_18

    .line 1704
    new-instance v4, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;

    check-cast p4, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;-><init>(Lcom/visualon/OSMPUtils/voOSSEIPicTiming;)V

    .line 1706
    :cond_18
    sget-object v5, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_SEI_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1, v6, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v4

    .line 1707
    if-nez v4, :cond_19

    .line 1708
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1709
    :cond_19
    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1711
    :cond_1a
    sget-object v5, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_USER_DATA_UNREGISTERED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    invoke-virtual {v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->getValue()I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_1f

    .line 1713
    const/4 v4, 0x0

    .line 1714
    if-eqz p4, :cond_1b

    .line 1716
    new-instance v4, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;

    invoke-direct {v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;-><init>()V

    .line 1717
    check-cast p4, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->setData(Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;)V

    .line 1719
    :cond_1b
    if-nez v4, :cond_1c

    .line 1720
    const-string v5, "@@@VOCommonPlayerImpl"

    const-string v6, "VO_OSMP_CB_SEI_INFO event, SEI type, param1 is %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1723
    :goto_1
    sget-object v5, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_SEI_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1, v6, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v4

    .line 1724
    if-nez v4, :cond_1d

    .line 1725
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1722
    :cond_1c
    const-string v5, "@@@VOCommonPlayerImpl"

    const-string v6, "VO_OSMP_CB_SEI_INFO event, SEI type, param1 = %d,FieldCount = %d, FieldLength = %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->getFieldCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIUserDataUnregisteredImpl;->getFieldLength(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1726
    :cond_1d
    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1728
    :cond_1e
    const/16 v5, 0xd

    move/from16 v0, p1

    if-ne v0, v5, :cond_1f

    .line 1729
    const-string v5, "@@@VOCommonPlayerImpl"

    const-string v6, "java VOOSMP_CB_SeekComplete, param1 is %d, param2 is :%d vo_ads_manager"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1730
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bIsSeeking:Z

    .line 1731
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v5}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->isAdsManagerEnable()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1733
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v6, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SEEKEND:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 1737
    :cond_1f
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_27

    .line 1739
    const-string v5, "@@@VOCommonPlayerImpl"

    const-string v6, "ADS wrapper java VOOSMP_CB_PlayComplete"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1741
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1743
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSeekContentPos:I

    if-eq v5, v6, :cond_20

    .line 1745
    move-object/from16 v0, p0

    iget v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSeekContentPos:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPositionInner(J)J

    .line 1746
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSeekContentPos:I

    .line 1748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    const v5, 0x1230adcf

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setParam(ILjava/lang/Object;)I

    .line 1750
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1754
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v5}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getCustomerEngine()Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    move-result-object v5

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v5}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getCustomerEngine()Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    move-result-object v5

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v5}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getCustomerEngine()Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    if-eq v5, v6, :cond_22

    .line 1756
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v6, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_PLAYBACKCOMPLETE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 1757
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsPlaybackComplete:Z

    .line 1790
    :cond_22
    :goto_2
    const v5, 0x2000010

    move/from16 v0, p1

    if-ne v0, v5, :cond_23

    .line 1791
    if-eqz p2, :cond_23

    .line 1793
    invoke-virtual/range {p0 .. p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->close()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1797
    :cond_23
    const v5, 0x2000071

    move/from16 v0, p1

    if-eq v0, v5, :cond_24

    const v5, 0x2000072

    move/from16 v0, p1

    if-ne v0, v5, :cond_25

    .line 1800
    :cond_24
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nLiveStreaming:I

    .line 1803
    :cond_25
    const/16 v5, 0x16

    move/from16 v0, p1

    if-ne v0, v5, :cond_26

    .line 1805
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1808
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    const v6, 0x1230add0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getParam(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1809
    if-eqz v4, :cond_26

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_26

    .line 1811
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1812
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    if-eqz v4, :cond_26

    .line 1815
    new-instance v5, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v6, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_START_RENDER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    const-wide/16 v8, 0x0

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 1817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    invoke-interface {v4, v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1823
    :cond_26
    invoke-static/range {p1 .. p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->valueOf(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    move-result-object v4

    sget-object v5, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_EVENT_ID_MAX:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    if-ne v4, v5, :cond_29

    .line 1825
    const-string v4, "@@@VOCommonPlayerImpl"

    const-string v5, "Don\'t send event, onEvent. id is 0x%X, name is %s, param1 is 0x%X, param2 is 0x%X. "

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v15}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1827
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1760
    :cond_27
    const/16 v5, 0x2f

    move/from16 v0, p1

    if-ne v5, v0, :cond_22

    .line 1761
    const-string v5, "@@@VOCommonPlayerImpl"

    const-string v6, "ADS wrapper java VOOSMP_CB_Whole_PlayComplete"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1763
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1765
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSeekContentPos:I

    if-eq v5, v6, :cond_28

    .line 1767
    move-object/from16 v0, p0

    iget v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSeekContentPos:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPositionInner(J)J

    .line 1768
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSeekContentPos:I

    .line 1770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    const v5, 0x1230adcf

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setParam(ILjava/lang/Object;)I

    .line 1772
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1777
    :cond_28
    const-string v5, "@@@VOCommonPlayerImpl"

    const-string v6, "send VO_ADSMANAGER_ACTION_PLAYBACKCOMPLETE mCurPlayingTime = %d\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurPlayingTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1778
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v6, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_PLAYBACKCOMPLETE:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v6}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurPlayingTime:J

    long-to-int v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 1779
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsPlaybackComplete:Z

    goto/16 :goto_2

    .line 1830
    :cond_29
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v4

    .line 1831
    if-nez v4, :cond_2a

    .line 1832
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1833
    :cond_2a
    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v4

    goto/16 :goto_0

    .line 1667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onHdmiConnectChanged(Lcom/visualon/OSMPUtils/VOSupportEncoding;)V
    .locals 9

    .prologue
    const/high16 v8, 0x200000

    .line 5022
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAmzn:Z

    if-nez v0, :cond_0

    .line 5115
    :goto_0
    return-void

    .line 5025
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5027
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntSupportedEncoding:Lcom/visualon/OSMPUtils/VOSupportEncoding;

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPUtils/VOSupportEncoding;->equals(Ljava/lang/Object;)Z

    .line 5028
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[connect changed] : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/VOSupportEncoding;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5034
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntSupportedEncoding:Lcom/visualon/OSMPUtils/VOSupportEncoding;

    .line 5035
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[STATUS] : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5039
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/VOSupportEncoding;->getIsPlugged()I

    move-result v0

    if-nez v0, :cond_2

    .line 5041
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    if-eq v0, v1, :cond_1

    .line 5042
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_MY_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    .line 5043
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->do_pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 5044
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "PS_MY_PAUSE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5114
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 5052
    :cond_2
    const-wide/16 v0, 0x0

    .line 5053
    :try_start_1
    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayerImpl$VOCommonPlayerImpl$PLAY_STATE:[I

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5103
    :goto_1
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    sget-object v3, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_STOP:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    if-eq v2, v3, :cond_3

    .line 5104
    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPosition(J)J

    .line 5105
    const-string v2, "@@@VOCommonPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setPosition : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5107
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_START:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_MY_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    if-ne v0, v1, :cond_5

    .line 5108
    :cond_4
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "do_start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5109
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->do_start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5114
    :cond_5
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 5056
    :pswitch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->do_pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 5060
    :pswitch_1
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPosition()J

    move-result-wide v2

    .line 5061
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[curnt_position] : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5063
    :goto_2
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsSloaneFlow:Z

    if-eqz v0, :cond_9

    .line 5064
    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/VOSupportEncoding;->getCapableEncodings()Ljava/util/HashMap;

    move-result-object v4

    .line 5065
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5066
    const-string v6, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "[Src Format:] "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "[Coordi Codec:] "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v1, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5067
    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v1, v6, :cond_7

    .line 5069
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v6

    or-int/2addr v6, v8

    const-string v7, "NULL"

    invoke-virtual {v1, v6, v7}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 5074
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v6

    or-int/2addr v6, v8

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 5079
    :cond_7
    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v1, v6, :cond_6

    .line 5080
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingEAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v6

    or-int/2addr v6, v8

    const-string v7, "NULL"

    invoke-virtual {v1, v6, v7}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 5084
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingEAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v6

    or-int/2addr v6, v8

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 5114
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_8
    move-wide v0, v2

    .line 5090
    goto/16 :goto_1

    .line 5092
    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v1

    or-int/2addr v1, v8

    const-string v4, "NULL"

    invoke-virtual {v0, v1, v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 5096
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "notifyRecreateAudioTrack"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v0, v2

    goto/16 :goto_1

    :pswitch_2
    move-wide v2, v0

    goto/16 :goto_2

    .line 5053
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRequest(IIILjava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 3249
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    if-nez v1, :cond_1

    .line 3250
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 3380
    :cond_0
    :goto_0
    return v0

    .line 3252
    :cond_1
    const v1, 0x2000020

    if-ne p1, v1, :cond_3

    move-object v0, p4

    .line 3253
    check-cast v0, Lcom/visualon/OSMPUtils/voOSTimedTag;

    .line 3254
    if-eqz v0, :cond_2

    .line 3256
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    const v2, -0xf0ffffe

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->VO_OSMP_SRC_CUSTOMERTAGID_TIMEDTAG:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->getValue()I

    move-result v3

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Data()[B

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3257
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    invoke-virtual {v2, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3258
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3259
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getPosition()J

    move-result-wide v2

    long-to-int v1, v2

    .line 3260
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->VO_OSMP_SRC_CUSTOMERTAGID_TIMEDTAG:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_SRC_CUSTOMERTAGID;->getValue()I

    move-result v3

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {v2, v3, v0, p4, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setID3Infor(IILjava/lang/Object;I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3263
    :cond_2
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    goto :goto_0

    .line 3267
    :cond_3
    const v1, 0x3000001

    if-ne p1, v1, :cond_6

    .line 3268
    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->VOOSMP_SRC_AUTHENTICATION_DRM_REQUEST_SERVER_INFO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_AUTHENTICATION_REQUEST_TYPE;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 3270
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "onRequest arg0 is %s, VOOSMP_SRC_PID_DODRMVERIFICATION"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3273
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;->VO_OSMP_SRC_CB_SYNC_AUTHENTICATION_DRM_SERVER_INFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->trylockAndSendSyncEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 3276
    if-nez v0, :cond_4

    .line 3277
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    goto :goto_0

    .line 3278
    :cond_4
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    goto :goto_0

    .line 3280
    :cond_5
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_PARAMID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    goto :goto_0

    .line 3284
    :cond_6
    const v1, 0x3000002

    if-ne p1, v1, :cond_7

    .line 3286
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_START_DOWNLOAD:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3287
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3289
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 3293
    :cond_7
    const v1, 0x3000003

    if-ne p1, v1, :cond_9

    .line 3295
    const/4 v0, 0x0

    .line 3297
    instance-of v1, p4, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;

    if-eqz v1, :cond_8

    .line 3299
    check-cast p4, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;

    .line 3300
    invoke-virtual {p4}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getReason()Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->getValue()I

    move-result v0

    .line 3301
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;

    move-result-object v1

    .line 3302
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;

    invoke-virtual {p4}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getResponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPHTTPDownloadFailureImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPHTTPDownloadFailure$VO_OSMP_HTTP_DOWNLOAD_FAILURE_REASON;Ljava/lang/String;Ljava/lang/String;)V

    .line 3305
    :cond_8
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_IO_HTTP_DOWNLOAD_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v3

    invoke-virtual {v2, v3, p2, p3, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3308
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 3311
    :cond_9
    const v1, 0x3000004

    if-ne p1, v1, :cond_e

    .line 3312
    check-cast p4, Lcom/visualon/OSMPUtils/voOSDRMInit;

    .line 3313
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;

    invoke-virtual {p4}, Lcom/visualon/OSMPUtils/voOSDRMInit;->getDRMInitDataHandle()J

    move-result-wide v2

    invoke-virtual {p4}, Lcom/visualon/OSMPUtils/voOSDRMInit;->getDRMInitData()[B

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;-><init>(J[B)V

    .line 3315
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3317
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;

    if-eqz v1, :cond_c

    .line 3319
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;->VO_OSMP_SRC_CB_DRM_INIT_DATA:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;

    invoke-interface {v1, v2, p2, p3, v0}, Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;->onSyncDrmEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 3322
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-ne v0, v1, :cond_b

    .line 3323
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;

    invoke-interface {v1}, Lcom/visualon/OSMPPlayerImpl/DRM/LicenseManagerInterface;->getCustomData()Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;

    move-result-object v1

    .line 3324
    if-eqz v1, :cond_a

    .line 3325
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setDRMInitData(Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3338
    :cond_a
    :goto_1
    if-nez v0, :cond_d

    .line 3339
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 3328
    :cond_b
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_MULTIPLE_INSTANCES_NOT_SUPPORTED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-ne v0, v1, :cond_a

    .line 3329
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_1

    .line 3333
    :cond_c
    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;->VO_OSMP_SRC_CB_DRM_INIT_DATA:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;

    invoke-direct {p0, v1, p2, p3, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->trylockAndSendSyncEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_SYNC_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    goto :goto_1

    .line 3340
    :cond_d
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    goto/16 :goto_0

    .line 3343
    :cond_e
    const v1, 0x2000030

    if-ne p1, v1, :cond_10

    .line 3345
    const/16 v1, 0xb

    if-ne p2, v1, :cond_f

    .line 3347
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3349
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "[ADS] VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_DISCONTINUE_SAMPLE"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3352
    check-cast p4, Lcom/visualon/OSMPUtils/voOSChunkSample;

    .line 3355
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    const v1, 0x1230adcd

    invoke-virtual {v0, v1, p4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setParam(ILjava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    .line 3358
    :cond_f
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 3360
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3362
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "[ADS] VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_CHUNK_BEGINDOWNLOAD"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3365
    check-cast p4, Lcom/visualon/OSMPUtils/voOSChunkInfo;

    .line 3368
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    const v1, 0x1230adcc

    invoke-virtual {v0, v1, p4}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setParam(ILjava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    .line 3375
    :cond_10
    const v1, 0x2000050

    if-eq p1, v1, :cond_0

    const v1, 0x2000040

    if-ne p1, v1, :cond_0

    goto/16 :goto_0
.end method

.method public open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->do_open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 515
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-ne v1, v0, :cond_0

    .line 516
    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_OPEN:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    .line 518
    :cond_0
    return-object v0
.end method

.method public openSource(JLcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .prologue
    .line 611
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 613
    :try_start_0
    const-string v0, "source: 0x%X flag: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->VO_OSMP_FLAG_SRC_PUSH_BUFFER_FUNCTION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;

    if-ne p3, v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x40

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_AUTO_DETECT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->getValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Open(Ljava/lang/Object;IIII)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 619
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 617
    :cond_0
    :try_start_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->do_pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 801
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-ne v1, v0, :cond_0

    .line 802
    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_PAUSE:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    .line 804
    :cond_0
    return-object v0
.end method

.method public previewSubtitle(Ljava/lang/String;Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4350
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4352
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4353
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-direct {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    .line 4356
    :cond_0
    new-instance v0, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;-><init>()V

    .line 4357
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;->setSampleText(Ljava/lang/String;)V

    .line 4358
    invoke-virtual {v0, p2}, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;->setView(Landroid/view/View;)V

    .line 4361
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x5e

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4363
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4365
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public redrawVideo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 2998
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public refreshSubtitle()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2475
    :try_start_0
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refresh Subtitle, --- m_bEnable= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSubtitle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_bAdHide= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bAdHideSubtitle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_bShow= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSubtitleShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2478
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bEnableSubtitle:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bAdHideSubtitle:Z

    if-nez v0, :cond_1

    .line 2479
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSubtitleShow:Z

    if-nez v0, :cond_0

    .line 2480
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "--- SetParam CC active"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2481
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2a

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 2482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSubtitleShow:Z

    .line 2493
    :cond_0
    :goto_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2495
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 2486
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSubtitleShow:Z

    if-eqz v0, :cond_0

    .line 2487
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, " --- SetParam CC Not active"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2488
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 2489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSubtitleShow:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2495
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public resetSubtitleParameter()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2864
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2865
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2876
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2867
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2869
    if-nez v0, :cond_1

    .line 2870
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2876
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2872
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->reset()V

    .line 2874
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2876
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public resume(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 8

    .prologue
    .line 4556
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4558
    :try_start_0
    const-string v0, "resumeMode: %s, resumePosition: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4559
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4561
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4596
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4564
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->resume(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;J)Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;

    move-result-object v2

    .line 4567
    if-nez v2, :cond_2

    .line 4569
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "resume return seekInfo error!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4570
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4596
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 4573
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->getAdsSequnceNumber()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 4575
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->getContentSeekPos()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPositionInner(J)J

    move-result-wide v0

    .line 4591
    :goto_1
    const-string v3, "@@@VOCommonPlayerImpl"

    const-string v4, "Resume to %d, seekInfo.getAdsSequnceNumber is %d, getContentSeekPosis %d."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->getAdsSequnceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->getContentSeekPos()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4594
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4596
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 4579
    :cond_3
    :try_start_3
    new-instance v0, Lcom/visualon/OSMPUtils/voOSPeriodTime;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voOSPeriodTime;-><init>()V

    .line 4580
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->getAdsSequnceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voOSPeriodTime;->setPeriodSequenceNumber(I)V

    .line 4581
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v3, 0x3000022

    invoke-virtual {v1, v3, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v1

    .line 4583
    if-eqz v1, :cond_4

    .line 4584
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 4596
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 4587
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSeekInfo;->getContentSeekPos()J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSeekContentPos:I

    .line 4588
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSPeriodTime;->getTimeStamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPositionInner(J)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v0

    goto :goto_1

    .line 4596
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public resume(Ljava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 8

    .prologue
    .line 1121
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1123
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sv: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "VOCommonPlayerImpl resume."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    instance-of v2, p1, Landroid/view/SurfaceView;

    if-nez v2, :cond_0

    instance-of v2, p1, Landroid/view/Surface;

    if-nez v2, :cond_0

    .line 1127
    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "parameter should be SurfaceView or Surface"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1128
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_ARGUMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v2

    .line 1130
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v2, :cond_1

    .line 1131
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1160
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1133
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v3

    .line 1138
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1139
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mVideoView:Landroid/view/View;

    .line 1148
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1150
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v2

    .line 1151
    invoke-direct {p0, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v2

    .line 1152
    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v5, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_RESUME:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v5}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 1153
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v2, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->resume(Ljava/lang/Object;)V

    .line 1156
    :cond_3
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    const v4, -0xf0feffd

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1157
    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v2, v6, v7}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1160
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v2, v3

    goto :goto_0

    .line 1140
    :cond_4
    :try_start_3
    instance-of v2, p1, Landroid/view/Surface;

    if-eqz v2, :cond_2

    .line 1141
    move-object v0, p1

    check-cast v0, Landroid/view/Surface;

    move-object v2, v0

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1160
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public selectAudio(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2214
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 2215
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2219
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2216
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nSelectedAudio:I

    .line 2217
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SelectAudio(I)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2219
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public selectSubtitle(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2227
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 2228
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2232
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2229
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_nSelectedSubtitle:I

    .line 2230
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SelectSubtitle(I)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2232
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public selectVideo(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2202
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 2203
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2206
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2204
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SelectVideo(I)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2206
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLua:Lcom/visualon/OSMPUtils/voLua;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLua:Lcom/visualon/OSMPUtils/voLua;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/visualon/OSMPUtils/voLua;->onVOEvent(IIILjava/lang/Object;)I

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    if-nez v0, :cond_1

    .line 331
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 333
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;->onVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    goto :goto_0
.end method

.method public setADSkipAction()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 4825
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4827
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    if-nez v0, :cond_1

    .line 4828
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4837
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4830
    :cond_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setADSkipAction"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4831
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 4832
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->SkipPeriod(J)Ljava/lang/Object;

    .line 4835
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4837
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAdTrackingAPI(Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 11

    .prologue
    .line 3885
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3887
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    if-nez v0, :cond_0

    .line 3889
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3908
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3892
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mScreenWidth:I

    .line 3893
    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mScreenHeight:I

    .line 3898
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v2, p1, v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setTracking(Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;II)I

    move-result v0

    .line 3900
    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mScreenWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mScreenHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 3901
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_WINDIMENSION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    invoke-direct/range {v1 .. v10}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 3903
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    .line 3904
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    invoke-interface {v2, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3906
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3908
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAnalyticsAgentAppID(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1918
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 1919
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1925
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1921
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VOCommonPlayerImpl setAnalyticsAgentAppID(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1922
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x92

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 1923
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1925
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAnalyticsAgentCUID(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1933
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 1934
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1939
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1935
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VOCommonPlayerImpl setAnalyticsAgentCUID(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1936
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 1937
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1939
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAnalyticsDisplayType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4690
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4692
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4693
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4699
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4696
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x6d

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4697
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4699
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAnalyticsExportListener(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1988
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 1989
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1994
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1990
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setAnalyticsExportListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1991
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x8d

    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$AnalyticsExportListenerWrap;

    invoke-direct {v2, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$AnalyticsExportListenerWrap;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 1992
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1994
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAnalyticsFoundationCUID(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1874
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 1875
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1876
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VOCommonPlayerImpl setAnalyticsFoundationCUID(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1877
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x83

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 1878
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1880
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAnewBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3579
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3580
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3584
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3582
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000014

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3584
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAudioEffectEndpointType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4789
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4791
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4792
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4799
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4796
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x81

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4797
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4799
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAudioPlaybackSpeed(F)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3651
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3652
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3656
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3654
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x50

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3656
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setBitrateThreshold(II)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4252
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4254
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4255
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4266
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4258
    :cond_0
    :try_start_1
    new-instance v0, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;-><init>()V

    .line 4259
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->setUpper(I)I

    .line 4260
    invoke-virtual {v0, p2}, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->setLower(I)I

    .line 4262
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x3000026

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4264
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4266
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setColorType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1321
    :try_start_0
    const-string v0, "type: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1322
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setColorType "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1323
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1323
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1327
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setDRMAdapter(Ljava/lang/Object;Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3619
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3620
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3643
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3624
    :cond_0
    if-eqz p2, :cond_2

    .line 3626
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    if-nez v0, :cond_1

    .line 3628
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Initlize DRM Wrap setDRMAdapter "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3629
    new-instance v0, Lcom/visualon/OSMPUtils/voOSMPDRM;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voOSMPDRM;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    .line 3636
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDrmHandle:Ljava/lang/Long;

    .line 3637
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDRMWrap:Lcom/visualon/OSMPUtils/voOSMPDRM;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDrmHandle:Ljava/lang/Long;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mLibPath:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/visualon/OSMPUtils/voOSMPDRM;->creatDRM(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Initlize DRM Wrap setDRMAdapter , handle is 0x%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDrmHandle:Ljava/lang/Long;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3639
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x300001f

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mDrmHandle:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3643
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3632
    :cond_1
    :try_start_2
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "ERROR! Call setDRMAdapter twice."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3633
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3643
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3641
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x300001f

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 3643
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setDRMFilePath(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4843
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4845
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4846
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4854
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4848
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VOCommonPlayerImpl setDRMFilePath. filePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4849
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000038

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4852
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4854
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setDRMInitData(Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    .line 3102
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3104
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3105
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3119
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3106
    :cond_0
    :try_start_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_PARAMID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 3107
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->getThirdPartyFunctionSet()I

    move-result v1

    .line 3108
    if-eqz v1, :cond_1

    .line 3109
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x3000006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3111
    :cond_1
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->getDRMInitData()[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->getDRMInitDataHandle()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 3112
    :cond_2
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3119
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3114
    :cond_3
    :try_start_2
    new-instance v0, Lcom/visualon/OSMPUtils/voOSDRMInit;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->getDRMInitDataHandle()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;->getDRMInitData()[B

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/visualon/OSMPUtils/voOSDRMInit;-><init>(J[B)V

    .line 3116
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x3000023

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3117
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 3119
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setDRMLibrary(Ljava/lang/String;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2127
    :try_start_0
    const-string v0, "libName: %s, libApiName: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2128
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2129
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2140
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2131
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setDRMLibrary. "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2132
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000001

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 2134
    if-eqz v0, :cond_1

    .line 2135
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2140
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2137
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000002

    invoke-virtual {v0, v1, p2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 2138
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 2140
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setDRMUniqueIdentifier(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 3097
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setDRMVerificationInfo(Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3076
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3077
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3091
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3080
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->getVerificationString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3082
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_POINTER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3091
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3085
    :cond_1
    :try_start_2
    new-instance v0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->getVerificationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->getDataFlag()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPUtils/voOSVerificationInfo;-><init>(ILjava/lang/String;I[B)V

    .line 3087
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x300000e

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3089
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 3091
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setDefaultAudioLanguage(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 4407
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4409
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4410
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4415
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4413
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPreferredAudioLanguage([Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4415
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setDefaultSubtitleLanguage(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 4421
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4423
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4424
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4429
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4427
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPreferredSubtitleLanguage([Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4429
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setDeviceCapabilityByFile(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1363
    :try_start_0
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setDeviceCapabilityByFile "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1364
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1364
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x300000c

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1368
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setHDCPPolicy(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4860
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4862
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4863
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4870
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4865
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VOCommonPlayerImpl setHDCPPolicy. policyType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4866
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x10006

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4868
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4870
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setHTTPHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3506
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3508
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3509
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3523
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3512
    :cond_0
    if-nez p1, :cond_1

    .line 3513
    :try_start_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_ARGUMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3523
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3514
    :cond_1
    :try_start_2
    const-string v0, "Del-Cookies"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3515
    const-string p2, ""

    .line 3520
    :cond_2
    new-instance v0, Lcom/visualon/OSMPUtils/voOSHTTPHeader;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/visualon/OSMPUtils/voOSHTTPHeader;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3521
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x300001a

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 3523
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3517
    :cond_3
    if-nez p2, :cond_2

    .line 3518
    :try_start_3
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_ARGUMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3523
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setHTTPProxy(Lcom/visualon/OSMPPlayer/VOOSMPHTTPProxy;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    .line 3529
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3531
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3532
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3538
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3535
    :cond_0
    :try_start_1
    new-instance v0, Lcom/visualon/OSMPUtils/voOSHTTPProxy;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPHTTPProxy;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPHTTPProxy;->getProxyPort()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPUtils/voOSHTTPProxy;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 3536
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x300001c

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3538
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setHTTPRetryTimeout(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4371
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4373
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4374
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4381
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4378
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x300002b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4379
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4381
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setHTTPVerificationInfo(Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    .line 3021
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3023
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3024
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3033
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3027
    :cond_0
    :try_start_1
    new-instance v0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->getVerificationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->getDataFlag()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPUtils/voOSVerificationInfo;-><init>(ILjava/lang/String;I[B)V

    .line 3029
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x3000009

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3031
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3033
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setHWDecoderMaxResolution(II)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    .line 4960
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4962
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4963
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4970
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4965
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "maxWidth: %d, maxHeight: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4966
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 4967
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x10010

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4968
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4970
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setInitialBitrate(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1376
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 1377
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1379
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setInitialBitrate "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    new-instance v0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;-><init>(IIIIII)V

    .line 1382
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x300000d

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1385
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setInitialBufferTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3136
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setInitialBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3138
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setInitialBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3146
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3147
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3154
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3150
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000013

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3152
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3154
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setLicenseContent([B)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1274
    :try_start_0
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setLicenseContent "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1275
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1278
    :goto_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->initLua()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1275
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1281
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setLicenseFilePath(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1289
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1290
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setLicenseFilePath "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1291
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1294
    :goto_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->initLua()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1291
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1297
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setMaxBufferTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 3553
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3555
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setMaxBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3557
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setMaxBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3563
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3565
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3566
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3570
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3568
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000019

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3570
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1249
    :try_start_0
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    .line 1250
    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1251
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setOnEventListener "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1252
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1250
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1254
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setPDConnectionRetryCount(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4168
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4170
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4171
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4179
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4174
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000021

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4177
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4179
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1438
    :try_start_0
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VOCommonPlayerImpl setParameter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1439
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1439
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1442
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setPlayIFrameOnly(ZF)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4976
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4978
    :try_start_0
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v2, :cond_0

    .line 4979
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4986
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4981
    :cond_0
    :try_start_1
    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "enable: %d, speed: %f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4982
    new-instance v0, Lcom/visualon/OSMPUtils/voIFramePlayInfoImpl;

    invoke-direct {v0, p1, p2}, Lcom/visualon/OSMPUtils/voIFramePlayInfoImpl;-><init>(ZF)V

    .line 4983
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x8f

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4984
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4986
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4981
    goto :goto_1

    .line 4986
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setPlaybackBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4239
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4241
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4242
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4246
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4244
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000014

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4246
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setPosition(J)J
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 912
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bPreferenceSeekPrecice:Z

    if-eqz v0, :cond_0

    .line 913
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPosition(JII)J

    move-result-wide v0

    .line 915
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2, v2, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPosition(JII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public setPreAgreedLicense(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1305
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "str: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1306
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setPreAgreedLicense "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1310
    :goto_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->initLua()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1307
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1313
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setPreference(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4876
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4878
    :try_start_0
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPreference: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4879
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_PREFERENCE:[I

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4908
    :goto_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4910
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 4881
    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bPreferenceSeekPrecice:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4910
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 4884
    :pswitch_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bPreferenceSeekPrecice:Z

    goto :goto_0

    .line 4887
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bPreferenceAudioSmooth:Z

    goto :goto_0

    .line 4890
    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bPreferenceAudioSmooth:Z

    goto :goto_0

    .line 4893
    :pswitch_4
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x89

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    goto :goto_0

    .line 4896
    :pswitch_5
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x89

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_NO_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    goto :goto_0

    .line 4899
    :pswitch_6
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x89

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_BA_START_DEFAULT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    goto :goto_0

    .line 4902
    :pswitch_7
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x89

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_BA_START_FAST:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4879
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setPreferredAudioLanguage([Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 4526
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4528
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4529
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4535
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4532
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000031

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4533
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4535
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setPreferredSubtitleLanguage([Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 4541
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4543
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4544
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4550
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4547
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000032

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4548
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4550
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setPresentationDelay(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3705
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3707
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3708
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3712
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3710
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000020

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3712
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setRTSPConnectionPort(Lcom/visualon/OSMPPlayer/VOOSMPRTSPPort;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    const v3, 0xffff

    const/16 v2, 0x400

    .line 3477
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3479
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3480
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3499
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3483
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPRTSPPort;->getAudioConnectionPort()I

    move-result v0

    .line 3484
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPRTSPPort;->getVideoConnectionPort()I

    move-result v1

    .line 3489
    if-gt v0, v3, :cond_1

    if-ge v0, v2, :cond_2

    .line 3490
    :cond_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3499
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3491
    :cond_2
    if-gt v1, v3, :cond_3

    if-ge v1, v2, :cond_4

    .line 3492
    :cond_3
    :try_start_2
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3499
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3494
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v3, 0x300001b

    new-instance v4, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;

    invoke-direct {v4, v0, v1}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3497
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 3499
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setRTSPConnectionTimeout(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4617
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4619
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4620
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4626
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4623
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000033

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4624
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4626
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setRTSPConnectionType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3040
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3042
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v1, :cond_0

    .line 3043
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3067
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3048
    :cond_0
    :try_start_1
    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE:[I

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3063
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x300000a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3065
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3067
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 3053
    :pswitch_1
    const/4 v0, 0x1

    .line 3054
    goto :goto_1

    .line 3056
    :pswitch_2
    const/4 v0, -0x1

    .line 3057
    goto :goto_1

    .line 3067
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 3048
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setRTSPMaxSocketErrorCount(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4602
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4604
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4605
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4611
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4608
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000034

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4609
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4611
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setRTSPOverHTTPConnectionPort(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4302
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4304
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4305
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4311
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4308
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000029

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4309
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4311
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setRenderType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1335
    :try_start_0
    const-string v0, "type: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1336
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setRenderType "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1337
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_RenderType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    .line 1338
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1338
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x16

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1342
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setScreenBrightness(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3419
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3420
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3425
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3422
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetScreenBrightness(I)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3425
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setScreenBrightnessMode(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 3387
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3389
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3390
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3396
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3393
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetScreenBrightnessMode(I)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3396
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSegmentDownloadRetryCount(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 4272
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4274
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4275
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4281
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4278
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000027

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4279
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4281
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSegmentStartParam(Ljava/util/HashMap;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4
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
    .line 4805
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4807
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    if-nez v0, :cond_1

    .line 4808
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4819
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4810
    :cond_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VOCommonPlayerImpl setSegmentStartParam. param:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4811
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 4812
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v1, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setSegmentStartParam(Ljava/util/HashMap;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4813
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v1

    .line 4814
    invoke-direct {p0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v1

    .line 4815
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_SEGMENTSTART:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 4817
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4819
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSmoothBAWhiteListFile(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 4771
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4773
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4774
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4781
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4778
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->setSmoothBAWhiteListFile(Ljava/lang/String;)I

    move-result v0

    .line 4779
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4781
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleBoundingBox(IIII)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    .line 2817
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2819
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2820
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2831
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2822
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2824
    if-nez v0, :cond_1

    .line 2825
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2831
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2827
    :cond_1
    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_2
    invoke-interface/range {v0 .. v5}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setSubtitleBoundingBox(IIIIZ)V

    .line 2829
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2831
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleFontBackgroundColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2583
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2584
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2596
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2586
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2588
    if-nez v0, :cond_1

    .line 2589
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2596
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2591
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getOpaqueColor(I)I

    move-result v1

    .line 2592
    invoke-interface {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setBackgroundColor(I)V

    .line 2594
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2596
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleFontBackgroundOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    const/16 v1, 0x64

    .line 2602
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2604
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2605
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2622
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2607
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x2901

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2609
    if-nez v0, :cond_1

    .line 2610
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2622
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2612
    :cond_1
    if-gez p1, :cond_3

    .line 2613
    const/4 v2, 0x0

    .line 2615
    :goto_1
    if-le v2, v1, :cond_2

    .line 2618
    :goto_2
    :try_start_2
    invoke-interface {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setBackgroundOpacity(I)V

    .line 2620
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2622
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v2, p1

    goto :goto_1
.end method

.method public setSubtitleFontBold(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2696
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2697
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2707
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2699
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2701
    if-nez v0, :cond_1

    .line 2702
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2707
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2704
    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setFontBold(Z)V

    .line 2705
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2707
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleFontColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2510
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2511
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2523
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2513
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2515
    if-nez v0, :cond_1

    .line 2516
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2523
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2518
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getOpaqueColor(I)I

    move-result v1

    .line 2519
    invoke-interface {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setFontColor(I)V

    .line 2521
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2523
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleFontEdgeColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2772
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2773
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2785
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2775
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2777
    if-nez v0, :cond_1

    .line 2778
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2785
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2780
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getOpaqueColor(I)I

    move-result v1

    .line 2781
    invoke-interface {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setEdgeColor(I)V

    .line 2783
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2785
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleFontEdgeOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    const/16 v1, 0x64

    .line 2791
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2793
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2794
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2811
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2796
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x2901

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2798
    if-nez v0, :cond_1

    .line 2799
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2811
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2801
    :cond_1
    if-gez p1, :cond_3

    .line 2802
    const/4 v2, 0x0

    .line 2804
    :goto_1
    if-le v2, v1, :cond_2

    .line 2807
    :goto_2
    :try_start_2
    invoke-interface {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setEdgeOpacity(I)V

    .line 2809
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2811
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v2, p1

    goto :goto_1
.end method

.method public setSubtitleFontEdgeType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2753
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2754
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2764
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2756
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2758
    if-nez v0, :cond_1

    .line 2759
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2764
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2760
    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setEdgeType(I)V

    .line 2762
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2764
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleFontItalic(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2677
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2678
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2688
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2680
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2682
    if-nez v0, :cond_1

    .line 2683
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2688
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2685
    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setFontItalic(Z)V

    .line 2686
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2688
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleFontName(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2732
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2734
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2735
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2745
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2737
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2739
    if-nez v0, :cond_1

    .line 2740
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2745
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2742
    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setFontName(Ljava/lang/String;)V

    .line 2743
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2745
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleFontOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    const/16 v1, 0x64

    .line 2529
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2531
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2532
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2549
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2534
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x2901

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2536
    if-nez v0, :cond_1

    .line 2537
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2549
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2539
    :cond_1
    if-gez p1, :cond_3

    .line 2540
    const/4 v2, 0x0

    .line 2542
    :goto_1
    if-le v2, v1, :cond_2

    .line 2545
    :goto_2
    :try_start_2
    invoke-interface {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setFontOpacity(I)V

    .line 2547
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2549
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v2, p1

    goto :goto_1
.end method

.method public setSubtitleFontPosition(IIIIZ)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setSubtitleBoundingBox(IIII)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public setSubtitleFontSizeScale(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2557
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2558
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2575
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2560
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2562
    if-nez v0, :cond_1

    .line 2563
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2575
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2571
    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setFontSizeScale(I)V

    .line 2573
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2575
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleFontUnderline(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2713
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2715
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2716
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2726
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2718
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2720
    if-nez v0, :cond_1

    .line 2721
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2726
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2723
    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setFontUnderline(Z)V

    .line 2724
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2726
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleGravity(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 2837
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2839
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2840
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2851
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2842
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2844
    if-nez v0, :cond_1

    .line 2845
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2851
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2847
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->getValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setSubtitleGravity(II)V

    .line 2849
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2851
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitlePath(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2409
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2410
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2416
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2412
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->subtitleFileNameSet:Z

    .line 2413
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x37

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 2414
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2416
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleTrim(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2459
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2460
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2468
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2461
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2463
    if-nez v0, :cond_1

    .line 2464
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_POINTER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2468
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2465
    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setSubtitleTrim(Ljava/lang/String;)V

    .line 2466
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2468
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleTypeface(Landroid/graphics/Typeface;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 4387
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4389
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4390
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4401
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4393
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 4395
    if-nez v0, :cond_1

    .line 4396
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4401
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 4398
    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4399
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4401
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleWindowBackgroundColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2630
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2631
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2643
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2633
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2901

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2635
    if-nez v0, :cond_1

    .line 2636
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2643
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2638
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getOpaqueColor(I)I

    move-result v1

    .line 2639
    invoke-interface {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setWindowColor(I)V

    .line 2641
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2643
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSubtitleWindowBackgroundOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    const/16 v1, 0x64

    .line 2649
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2651
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2652
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2669
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2654
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x2901

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;

    .line 2656
    if-nez v0, :cond_1

    .line 2657
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2669
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 2659
    :cond_1
    if-gez p1, :cond_3

    .line 2660
    const/4 v2, 0x0

    .line 2662
    :goto_1
    if-le v2, v1, :cond_2

    .line 2665
    :goto_2
    :try_start_2
    invoke-interface {v0, v1}, Lcom/visualon/OSMPSubTitle/voSubTitleFormatSetting;->setWindowOpacity(I)V

    .line 2667
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2669
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v2, p1

    goto :goto_1
.end method

.method public setSurface(Landroid/view/Surface;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 474
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surface: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 476
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 477
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mSurface:Landroid/view/Surface;

    .line 478
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetSurface(Landroid/view/Surface;)V

    .line 479
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl set Surface."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setSurfaceChangeFinished()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1393
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1394
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setSurfaceChangeFinished "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1395
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1395
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x1027

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1399
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setURLQueryString(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 5009
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5011
    :try_start_0
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "string: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5012
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5016
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 5012
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000045

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 5016
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setUTCPosition(J)J
    .locals 5

    .prologue
    .line 4660
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4662
    :try_start_0
    const-string v0, "msec: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4663
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 4669
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 4667
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000036

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 4669
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setVideoAspectRatio(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1166
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1168
    :try_start_0
    const-string v3, "ar: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v3, :cond_0

    .line 1170
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1173
    :cond_0
    :try_start_1
    sget-object v3, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$4;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_ASPECT_RATIO:[I

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 1206
    :goto_1
    :pswitch_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1207
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v3, 0x30

    invoke-virtual {v2, v3, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 1208
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "VOCommonPlayerImpl setVideoAspectRatio."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1211
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1182
    goto :goto_1

    .line 1185
    :pswitch_2
    const/4 v0, 0x2

    .line 1186
    goto :goto_1

    .line 1189
    :pswitch_3
    const/4 v0, 0x3

    .line 1190
    goto :goto_1

    .line 1193
    :pswitch_4
    const/4 v0, 0x4

    .line 1194
    goto :goto_1

    .line 1197
    :pswitch_5
    const/4 v0, 0x5

    .line 1198
    goto :goto_1

    :pswitch_6
    move v0, v2

    .line 1201
    goto :goto_1

    .line 1211
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 1173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setView(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 457
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 459
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 461
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mVideoView:Landroid/view/View;

    .line 462
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetView(Landroid/view/View;)I

    .line 463
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl SetView."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setViewSize(II)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 11

    .prologue
    .line 488
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 490
    :try_start_0
    const-string v0, "width: %d, height: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 492
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 494
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetDisplaySize(II)V

    .line 495
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mScreenWidth:I

    .line 496
    iput p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mScreenHeight:I

    .line 497
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    if-eqz v0, :cond_1

    .line 499
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 500
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;->VO_OSMP_ADS_TRACKING_EVENT_WINDIMENSION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    invoke-direct/range {v1 .. v10}, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;-><init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mTracking:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 504
    :cond_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setViewSize, width is %d, height is %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setVolume(F)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 1069
    invoke-virtual {p0, p1, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setVolume(FF)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public setVolume(FF)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1076
    :try_start_0
    const-string v0, "leftVolume: %f, rightVolume: %f"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1077
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 1078
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1080
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_leftVolumeValue:F

    .line 1081
    iput p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_rightVolumeValue:F

    .line 1082
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetVolume(FF)I

    move-result v0

    .line 1084
    const-string v1, "@@@VOCommonPlayerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VOCommonPlayerImpl SetVolume, return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1089
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setZoomMode(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;Landroid/graphics/Rect;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1450
    if-eqz p2, :cond_0

    .line 1451
    :try_start_0
    const-string v0, "mode: %s, rect: left: %d - top: %d - right: %d - bottom: %d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1455
    :goto_0
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl setVideoDisplayArea. "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1456
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_1

    .line 1457
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v0

    .line 1453
    :cond_0
    :try_start_1
    const-string v0, "mode: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1477
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 1459
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0xf

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 1461
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;->VO_OSMP_ZOOM_ZOOMIN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;

    if-ne p1, v1, :cond_3

    .line 1464
    if-nez p2, :cond_2

    .line 1466
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_PARAMID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1477
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 1469
    :cond_2
    :try_start_3
    new-instance v0, Lcom/visualon/OSMPUtils/voOSRectImpl;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPUtils/voOSRectImpl;-><init>(IIII)V

    .line 1471
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 1477
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 1475
    :cond_3
    :try_start_4
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 1477
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1
.end method

.method public start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->do_start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 723
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-ne v1, v0, :cond_0

    .line 724
    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_START:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    .line 726
    :cond_0
    return-object v0
.end method

.method public startAnalyticsNotification(ILcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2016
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2017
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2040
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2019
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl startAnalyticsNotification. "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2020
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->closeTimer()Z

    .line 2022
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$1;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timerTask:Ljava/util/TimerTask;

    .line 2032
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 2033
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timer:Ljava/util/Timer;

    .line 2036
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->timerTask:Ljava/util/TimerTask;

    int-to-long v2, p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2038
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2040
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public startSEINotification(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3914
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3916
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3917
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3924
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3920
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x40

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3922
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3924
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stop()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->do_stop()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 838
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-ne v1, v0, :cond_0

    .line 839
    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;->PS_STOP:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mCurntPlayState:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$PLAY_STATE;

    .line 841
    :cond_0
    return-object v0
.end method

.method public stopAnalyticsNotification()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2048
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2049
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2055
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2051
    :cond_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl stopAnalyticsNotification. "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2052
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->closeTimer()Z

    .line 2053
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2055
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stopSEINotification()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 3930
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3932
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 3933
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3940
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 3936
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x40

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 3938
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3940
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public suspend(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1096
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1098
    :try_start_0
    const-string v2, "keepAudio: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1099
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "VOCommonPlayerImpl suspend."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_1

    .line 1101
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 1098
    goto :goto_0

    .line 1103
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_bSuspendPlayAudio:Z

    .line 1104
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1106
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 1107
    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v0

    .line 1108
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "suspend set Action: VO_ADSMANAGER_ACTION_FORCESTOP"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1109
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_FORCESTOP:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 1112
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x3a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 1113
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public unmute()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    .line 2972
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2974
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2975
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 2976
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2991
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 2980
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_leftVolumeValue:F

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->m_rightVolumeValue:F

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetVolume(FF)I

    .line 2982
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->isAdsManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2984
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 2985
    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->modifyCurPosition(I)I

    move-result v0

    .line 2986
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->VO_ADSMANAGER_ACTION_MUTEOFF:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager$VO_OSMP_ADSMANAGER_ACTION;->getValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->setAction(II)I

    .line 2989
    :cond_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2991
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public updatePlaybackInfo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5118
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mADManager:Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPADSManager;->getPlaybackInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdInfoImpl;

    .line 5119
    sget-object v1, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_PLAYBACKINFO:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sendVOEvent(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 5120
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public updateSourceURL(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 4317
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4319
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 4320
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4326
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 4323
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mPlayer:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x300002a

    invoke-virtual {v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 4324
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4326
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
