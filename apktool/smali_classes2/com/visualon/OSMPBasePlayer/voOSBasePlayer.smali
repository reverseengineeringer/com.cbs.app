.class public Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;
.implements Lcom/visualon/OSMPDataSource/voOSDataSource$onRequestListener;
.implements Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;
.implements Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$2;,
        Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$Mycomparator;,
        Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;,
        Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;,
        Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$NullAnalyticsExportListener;,
        Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;,
        Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;,
        Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;,
        Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@OSMPBasePlayer"

.field static final messageAnalyticsExportEvent:I = -0xf0ffff2

.field private static final messageCCClearWidget:I = -0xf0ffff8

.field private static final messageCCCreate:I = -0xf0ffff7

.field private static final messageCCEnable:I = -0xf0ffffb

.field private static final messageCCMetadataArrive:I = -0xf0ffffa

.field private static final messageCCSetView:I = -0xf0ffff4

.field private static final messageCCSetXYRate:I = -0xf0ffff9

.field private static final messageCCShowSubtitle:I = -0xf0ffff3

.field private static final messageDestroyCC_UI:I = -0xf0ffffe

.field private static final messageShowCC_UI:I = -0xf0ffffd


# instance fields
.field private closeCaptionOutput:Z

.field private isSubtitleDisplayAllowed:Z

.field private isSubtitleDisplayEnable:Z

.field private lastIFrameMode:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

.field private mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

.field private mAnalyticsCollectorInited:Z

.field private mAnalyticsDisplayEnable:Ljava/lang/Integer;

.field private mAnalyticsExportListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;

.field private mAnalyticsType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

.field private mAudioLanguage:Ljava/lang/String;

.field private mAudioTrack:I

.field private mBlockCC:Z

.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

.field private mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

.field private mEventListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

.field private final mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

.field private mMute:Z

.field private mOffsetTime:I

.field private mOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/visualon/OSMPUtils/voOSOption;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mParamDict:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerType:I

.field private mPlayingCompleted:Z

.field private mRenderType:I

.field public mRequestListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;

.field private mRunIsFirstCalled:Z

.field private mRunning:Z

.field private mSetDisplaySizeFlag:Z

.field private mSetViewFlag:Z

.field private mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

.field private mSourceUrl:Ljava/lang/String;

.field private mSubtitleInEngine:Z

.field private mSurface:Landroid/view/Surface;

.field private mSuspendInfo:Lcom/visualon/OSMPUtils/voOSSuspendInfo;

.field private mTrackType:I

.field private mView:Landroid/view/View;

.field private m_bIsSWPlaying:Z

.field private m_nAspectRationType:Ljava/lang/Integer;

.field private m_nHeightOfAspectRatio:I

.field private m_nVideoHeight:I

.field private m_nVideoWidth:I

.field private m_nWidthOfAspectRatio:I

.field private mbAsyncOpen:Z

.field private mbOMXAL:Z

.field private metadata_Arrive:Z

.field private openedTimes:I

.field private subtitleFileNameSet:Z

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    .line 119
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$NullAnalyticsExportListener;

    invoke-direct {v0, v7}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$NullAnalyticsExportListener;-><init>(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsExportListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;

    .line 124
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSetViewFlag:Z

    .line 125
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSetDisplaySizeFlag:Z

    .line 126
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mbOMXAL:Z

    .line 127
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mbAsyncOpen:Z

    .line 128
    iput v8, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioTrack:I

    .line 129
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioLanguage:Ljava/lang/String;

    .line 131
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunIsFirstCalled:Z

    .line 135
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->closeCaptionOutput:Z

    .line 136
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayEnable:Z

    .line 137
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timer:Ljava/util/Timer;

    .line 138
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timerTask:Ljava/util/TimerTask;

    .line 139
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSubtitleInEngine:Z

    .line 140
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    .line 141
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSurface:Landroid/view/Surface;

    .line 143
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSourceUrl:Ljava/lang/String;

    .line 144
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->subtitleFileNameSet:Z

    .line 145
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayAllowed:Z

    .line 159
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->metadata_Arrive:Z

    .line 160
    iput v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->openedTimes:I

    .line 163
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunning:Z

    .line 166
    iput v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nWidthOfAspectRatio:I

    .line 167
    iput v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nHeightOfAspectRatio:I

    .line 168
    iput v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoWidth:I

    .line 169
    iput v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoHeight:I

    .line 170
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nAspectRationType:Ljava/lang/Integer;

    .line 173
    new-instance v0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    .line 174
    iput v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRenderType:I

    .line 175
    iput v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mOffsetTime:I

    .line 176
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mPlayingCompleted:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_bIsSWPlaying:Z

    .line 180
    iput v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mPlayerType:I

    .line 184
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->I_FRAME_MODE_DISABLED:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->lastIFrameMode:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    .line 524
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    new-instance v1, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;-><init>(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    .line 526
    const-string v1, "@@@OSMPBasePlayer"

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

    .line 534
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    invoke-interface {v0, p0}, Lcom/visualon/OSMPUtils/voID3Container;->setID3Listener(Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;)V

    .line 536
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    .line 537
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    .line 538
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    .line 539
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    .line 540
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRequestListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;

    .line 541
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    .line 542
    iput v8, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mTrackType:I

    .line 543
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    .line 544
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsCollectorInited:Z

    .line 545
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->VOOSMP_DISPLAY_NULL:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    .line 546
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsDisplayEnable:Ljava/lang/Integer;

    .line 547
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mMute:Z

    .line 548
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    .line 549
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSuspendInfo:Lcom/visualon/OSMPUtils/voOSSuspendInfo;

    .line 550
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mBlockCC:Z

    .line 551
    return-void

    .line 527
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 528
    new-instance v1, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;-><init>(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    .line 529
    const-string v1, "@@@OSMPBasePlayer"

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

    .line 531
    :cond_1
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    goto :goto_0
.end method

.method private ChangeBitrate(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;Ljava/lang/Object;)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1219
    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v2

    .line 1223
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$2;->$SwitchMap$com$visualon$OSMPBasePlayer$voOSBasePlayer$EnumSelectFunc:[I

    invoke-virtual {p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 1241
    :goto_0
    if-eqz v0, :cond_0

    .line 1243
    const-string v2, "@@@OSMPBasePlayer"

    const-string v3, "Change audio or subtitle, return err %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1250
    :goto_1
    return v0

    .line 1225
    :pswitch_0
    iget-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SelectTrack(I)I

    move-result v0

    goto :goto_0

    .line 1247
    :cond_0
    const-string v3, "@@@OSMPBasePlayer"

    const-string v4, "Change audio or subtitle, then Seek to %s, audiotracker or subtitle id %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    check-cast p2, Ljava/lang/Integer;

    aput-object p2, v5, v7

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1248
    invoke-virtual {p0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetPos(I)I

    goto :goto_1

    .line 1223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private CreateAnalytics()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1075
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v1, :cond_0

    .line 1100
    :goto_0
    return v0

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1080
    const v0, -0x7fffffed

    goto :goto_0

    .line 1084
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "libvoAnalyticsJni_OSMP.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1086
    const v0, -0x7ffffff2

    goto :goto_0

    .line 1089
    :cond_2
    new-instance v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-direct {v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    .line 1090
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-nez v1, :cond_3

    .line 1091
    const v0, -0x7ffffff9

    goto :goto_0

    .line 1094
    :cond_3
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Init(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1095
    if-eqz v1, :cond_4

    .line 1096
    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Uninit()I

    .line 1097
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    .line 1098
    const-string v2, "@@@OSMPBasePlayer"

    const-string v3, "Get Analytics FunctionSet is NULL, failed %x."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v0, v1

    .line 1100
    goto :goto_0
.end method

.method private DestroyAnalytics()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 1129
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-nez v1, :cond_0

    .line 1136
    :goto_0
    return v0

    .line 1131
    :cond_0
    const v1, 0x3000035

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 1132
    const/16 v1, 0x69

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 1133
    iput-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsCollectorInited:Z

    .line 1134
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Uninit()I

    move-result v0

    .line 1135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    goto :goto_0
.end method

.method private GetAspectWidthHeight(II[I)F
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 780
    const v2, 0x3faa9fbe    # 1.333f

    .line 781
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_3

    .line 785
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 786
    iget v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoWidth:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoHeight:I

    if-eqz v0, :cond_4

    .line 787
    iget v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoWidth:I

    .line 788
    iget v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoHeight:I

    .line 790
    :goto_0
    iget v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nWidthOfAspectRatio:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nHeightOfAspectRatio:I

    if-eqz v4, :cond_0

    .line 791
    iget v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nWidthOfAspectRatio:I

    .line 792
    iget v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nHeightOfAspectRatio:I

    .line 795
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nAspectRationType:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 796
    iget-object v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nAspectRationType:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 828
    :cond_1
    :goto_2
    :pswitch_0
    if-eqz p3, :cond_2

    .line 829
    const/4 v4, 0x0

    aput v1, p3, v4

    .line 830
    aput v0, p3, v3

    .line 832
    :cond_2
    if-lez v0, :cond_3

    .line 833
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 835
    :goto_3
    return v0

    .line 798
    :pswitch_1
    iget v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoWidth:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoHeight:I

    if-eqz v4, :cond_1

    .line 799
    iget v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoWidth:I

    .line 800
    iget v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoHeight:I

    goto :goto_2

    :pswitch_2
    move v0, v3

    move v1, v3

    .line 808
    goto :goto_2

    .line 810
    :pswitch_3
    const/4 v1, 0x4

    .line 811
    const/4 v0, 0x3

    .line 812
    goto :goto_2

    .line 814
    :pswitch_4
    const/16 v1, 0x10

    .line 815
    const/16 v0, 0x9

    .line 816
    goto :goto_2

    .line 818
    :pswitch_5
    const/4 v0, 0x2

    move v1, v0

    move v0, v3

    .line 820
    goto :goto_2

    .line 822
    :pswitch_6
    const/16 v1, 0xe9

    .line 823
    const/16 v0, 0x64

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, p2

    move v1, p1

    goto :goto_0

    :cond_5
    move v0, p2

    move v1, p1

    goto :goto_1

    .line 796
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method private HWsuspend()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3443
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "HW suspend - "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3444
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_1

    .line 3446
    :cond_0
    const v0, -0x7ffffff7

    .line 3477
    :goto_0
    return v0

    .line 3449
    :cond_1
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->closeTimer()Z

    .line 3452
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    .line 3454
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Pause()I

    move-result v0

    .line 3455
    if-eqz v0, :cond_2

    .line 3457
    const-string v1, "@@@OSMPBasePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSource.Pause() occur error, error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3460
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->Stop()I

    move-result v0

    .line 3461
    if-eqz v0, :cond_3

    .line 3463
    const-string v1, "@@@OSMPBasePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mEngine.Stop() occur error, error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3467
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    .line 3468
    if-eqz v1, :cond_4

    .line 3469
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/visualon/widget/ClosedCaptionManager;->show(Z)V

    .line 3470
    invoke-virtual {v1}, Lcom/visualon/widget/ClosedCaptionManager;->clearWidget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3476
    :cond_4
    :goto_1
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "HW suspend + "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3473
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v2, -0xf0ffff8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3474
    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v2, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private IsAudioLanguageChanged()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3397
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getCurrentStreamInfo()Lcom/visualon/OSMPUtils/voOSStreamInfo;

    move-result-object v0

    .line 3398
    if-nez v0, :cond_1

    .line 3438
    :cond_0
    :goto_0
    return v1

    .line 3402
    :cond_1
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSStreamInfo;->getTrackInfo()[Lcom/visualon/OSMPUtils/voOSTrackInfo;

    move-result-object v5

    .line 3403
    if-eqz v5, :cond_0

    move v0, v1

    move v2, v1

    .line 3408
    :goto_1
    array-length v3, v5

    if-ge v0, v3, :cond_0

    .line 3409
    aget-object v3, v5, v0

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSTrackInfo;->getTrackType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    move-result-object v3

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_AUDIO:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    if-eq v3, v6, :cond_2

    aget-object v3, v5, v0

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSTrackInfo;->getTrackType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    move-result-object v3

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_AUDIO_GROUP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    if-ne v3, v6, :cond_6

    .line 3413
    :cond_2
    aget-object v3, v5, v0

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSTrackInfo;->getAudioInfo()Lcom/visualon/OSMPUtils/voOSAudioInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3416
    aget-object v3, v5, v0

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSTrackInfo;->getAudioInfo()Lcom/visualon/OSMPUtils/voOSAudioInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSAudioInfo;->Language()Ljava/lang/String;

    move-result-object v3

    .line 3417
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 3418
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "A"

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3420
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3422
    aget-object v6, v5, v0

    invoke-interface {v6}, Lcom/visualon/OSMPUtils/voOSTrackInfo;->getSelectInfo()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    .line 3425
    iget-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioLanguage:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioLanguage:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 3427
    :cond_4
    iput-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioLanguage:Ljava/lang/String;

    .line 3428
    const-string v2, "@@@OSMPBasePlayer"

    const-string v3, "voOSAnalytics audio, old AudioTrack is %d new AudioTrack is %d, new language is %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioTrack:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aget-object v1, v5, v0

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSTrackInfo;->getTrackID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    const/4 v1, 0x2

    iget-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioLanguage:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v2, v3, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3430
    aget-object v0, v5, v0

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTrackInfo;->getTrackID()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioTrack:I

    move v1, v4

    .line 3433
    goto/16 :goto_0

    :cond_5
    move v2, v3

    .line 3408
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    move-object v8, v3

    move v3, v2

    move-object v2, v8

    goto :goto_2
.end method

.method private OpenInternal(Ljava/lang/Object;IIII)I
    .locals 18

    .prologue
    .line 879
    const-string v2, "@@@OSMPBasePlayer"

    const-string v3, "voOSBasePlayer Open -"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 880
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunIsFirstCalled:Z

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v2, :cond_1

    .line 882
    :cond_0
    const v2, -0x7ffffeff

    .line 1070
    :goto_0
    return v2

    .line 883
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mbOMXAL:Z

    if-eqz v2, :cond_2

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const v3, 0x3000011

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    .line 886
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSetViewFlag:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSetDisplaySizeFlag:Z

    if-nez v2, :cond_4

    .line 888
    :cond_3
    const-string v2, "@@@OSMPBasePlayer"

    const-string v3, "before open should call SetView, SetDisplaySize firstly"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    const v2, -0x7ffffff2

    goto :goto_0

    .line 892
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->openedTimes:I

    if-lez v2, :cond_5

    .line 893
    const-string v2, "@@@OSMPBasePlayer"

    const-string v3, "Do not open again before player is closed. times is %d."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->openedTimes:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    const v2, -0x7ffffff7

    goto :goto_0

    .line 896
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->openedTimes:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->openedTimes:I

    .line 898
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    move v14, v2

    .line 899
    :goto_1
    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move v13, v2

    .line 900
    :goto_2
    if-eqz p1, :cond_7

    if-eqz v14, :cond_6

    const-class v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v13, :cond_a

    const-class v2, Ljava/lang/Long;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 904
    :cond_7
    const-string v2, "@@@OSMPBasePlayer"

    const-string v3, "Param pSource and param nSourceFlag is not match."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 905
    const v2, -0x7ffffff2

    goto/16 :goto_0

    .line 898
    :cond_8
    const/4 v2, 0x0

    move v14, v2

    goto :goto_1

    .line 899
    :cond_9
    const/4 v2, 0x0

    move v13, v2

    goto :goto_2

    .line 908
    :cond_a
    if-eqz p1, :cond_b

    if-eqz v14, :cond_b

    .line 909
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSourceUrl:Ljava/lang/String;

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSourceUrl:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/visualon/OSMPUtils/voID3Container;->setSourceUrl(Ljava/lang/String;)V

    .line 913
    :cond_b
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mTrackType:I

    .line 914
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nWidthOfAspectRatio:I

    .line 915
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nHeightOfAspectRatio:I

    .line 916
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mPlayingCompleted:Z

    .line 917
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioTrack:I

    .line 918
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioLanguage:Ljava/lang/String;

    .line 920
    const/4 v12, 0x0

    .line 921
    const/4 v11, 0x0

    .line 923
    const-wide/16 v6, 0x0

    .line 924
    const/4 v8, 0x0

    .line 925
    const/4 v3, 0x0

    .line 926
    const-wide/16 v4, 0x0

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    if-eqz v2, :cond_23

    .line 930
    const/4 v2, 0x0

    move-object v10, v8

    move-wide v8, v6

    move-object v7, v3

    move v6, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v6, v2, :cond_f

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 934
    const v3, 0x3010012

    if-ne v15, v3, :cond_c

    move-object v3, v2

    .line 936
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 939
    :cond_c
    const v3, 0x3010014

    if-ne v15, v3, :cond_d

    move-object v3, v2

    .line 941
    check-cast v3, Ljava/lang/String;

    move-object v10, v3

    .line 944
    :cond_d
    const v3, 0x3010015

    if-ne v15, v3, :cond_e

    move-object v3, v2

    .line 946
    check-cast v3, Ljava/lang/String;

    move-object v7, v3

    .line 949
    :cond_e
    const v3, 0x3010016

    if-ne v15, v3, :cond_22

    .line 951
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 930
    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v2

    goto :goto_3

    :cond_f
    move-object v3, v7

    move-wide v6, v8

    .line 956
    :goto_5
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_21

    .line 958
    const/16 v8, 0x8

    .line 960
    new-instance v2, Lcom/visualon/OSMPUtils/voOSInitParam;

    invoke-direct {v2}, Lcom/visualon/OSMPUtils/voOSInitParam;-><init>()V

    .line 961
    invoke-virtual {v2, v6, v7}, Lcom/visualon/OSMPUtils/voOSInitParam;->setFileSize(J)V

    .line 962
    const-string v6, "@@@OSMPBasePlayer"

    const-string v7, "init param fileSize is 0x%x %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSInitParam;->getFileSize()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v6, v7, v9}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 965
    :goto_6
    if-eqz v10, :cond_11

    .line 967
    or-int/lit8 v8, v8, 0x2

    .line 968
    if-nez v2, :cond_10

    .line 969
    new-instance v2, Lcom/visualon/OSMPUtils/voOSInitParam;

    invoke-direct {v2}, Lcom/visualon/OSMPUtils/voOSInitParam;-><init>()V

    .line 970
    :cond_10
    invoke-virtual {v2, v10}, Lcom/visualon/OSMPUtils/voOSInitParam;->setIOFileName(Ljava/lang/String;)V

    .line 971
    const-string v6, "@@@OSMPBasePlayer"

    const-string v7, "init param is IOFileName 0x%x, VOOSMP_SRC_PID_INIT_PARAM_IO_FILE_NAME %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSInitParam;->getIOFileName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v9}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 975
    :cond_11
    if-eqz v3, :cond_13

    .line 977
    or-int/lit8 v8, v8, 0x4

    .line 978
    if-nez v2, :cond_12

    .line 979
    new-instance v2, Lcom/visualon/OSMPUtils/voOSInitParam;

    invoke-direct {v2}, Lcom/visualon/OSMPUtils/voOSInitParam;-><init>()V

    .line 980
    :cond_12
    invoke-virtual {v2, v3}, Lcom/visualon/OSMPUtils/voOSInitParam;->setIOApiName(Ljava/lang/String;)V

    .line 981
    const-string v3, "@@@OSMPBasePlayer"

    const-string v6, "init param IOApiName is 0x%x, VOOSMP_SRC_PID_INIT_PARAM_IO_API_NAME %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSInitParam;->getIOApiName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v3, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    :cond_13
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_15

    .line 987
    or-int/lit8 v8, v8, 0x20

    .line 988
    if-nez v2, :cond_14

    .line 989
    new-instance v2, Lcom/visualon/OSMPUtils/voOSInitParam;

    invoke-direct {v2}, Lcom/visualon/OSMPUtils/voOSInitParam;-><init>()V

    .line 990
    :cond_14
    invoke-virtual {v2, v4, v5}, Lcom/visualon/OSMPUtils/voOSInitParam;->setDuration(J)V

    .line 991
    const-string v3, "@@@OSMPBasePlayer"

    const-string v4, "init param duration is 0x%x %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSInitParam;->getDuration()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    move-object v7, v2

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v2, :cond_17

    .line 996
    const-string v2, ""

    .line 997
    if-eqz v14, :cond_18

    move-object/from16 v2, p1

    .line 998
    check-cast v2, Ljava/lang/String;

    .line 1002
    :cond_16
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v4, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v5, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Open:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1006
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mOptions:Ljava/util/List;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Init(Ljava/util/List;Ljava/lang/Object;IILcom/visualon/OSMPUtils/voOSInitParam;I)I

    move-result v2

    .line 1008
    if-eqz v2, :cond_19

    .line 1010
    const-string v3, "@@@OSMPBasePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mSource.Init failed, Error message is 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 999
    :cond_18
    if-eqz v13, :cond_16

    .line 1000
    const-string v2, "PushPD"

    goto :goto_7

    .line 1014
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->setEventListener(Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->setRequestListener(Lcom/visualon/OSMPDataSource/voOSDataSource$onRequestListener;)V

    .line 1017
    and-int/lit8 v2, p2, 0x20

    if-lez v2, :cond_1a

    .line 1019
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mbAsyncOpen:Z

    .line 1020
    const-string v2, "@@@OSMPBasePlayer"

    const-string v3, "Async open!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1021
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1b

    .line 1022
    invoke-virtual/range {p0 .. p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->showSubtitle()V

    .line 1027
    :cond_1a
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->setParamInDict()V

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Open()I

    move-result v2

    .line 1030
    if-eqz v2, :cond_1c

    .line 1032
    const-string v3, "@@@OSMPBasePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mSource.Open failed, Error message is 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1024
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v4, -0xf0ffff3

    invoke-virtual {v3, v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8

    .line 1036
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const v3, 0x3000004

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetParam(I)Ljava/lang/Object;

    move-result-object v3

    .line 1037
    if-nez v3, :cond_1d

    .line 1039
    const-string v2, "@@@OSMPBasePlayer"

    const-string v4, "GetParam(voOSType.VOOSMP_SRC_PID_FUNC_READ_BUF) Error!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    :cond_1d
    if-eqz v13, :cond_1e

    .line 1044
    new-instance v2, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOMP_REFER_WALL_CLOCK;

    invoke-direct {v2}, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOMP_REFER_WALL_CLOCK;-><init>()V

    .line 1045
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOMP_REFER_WALL_CLOCK;->bEnable:Z

    .line 1046
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOMP_REFER_WALL_CLOCK;->bLowLatency:Z

    .line 1047
    const/16 v4, 0xc8

    iput v4, v2, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOMP_REFER_WALL_CLOCK;->nVideoAdjustTime:I

    .line 1048
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/32 v6, 0x10002

    invoke-virtual {v4, v6, v7, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/32 v4, 0x10005

    invoke-virtual {v2, v4, v5}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const v5, 0x10005

    invoke-virtual {v4, v5, v2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const v4, 0x1000a

    invoke-virtual {v2, v4}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetParam(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/32 v6, 0x1000a

    invoke-virtual {v4, v6, v7, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const v4, 0x3000013

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const v4, 0x3000014

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    :cond_1e
    move-object v2, v3

    .line 1059
    check-cast v2, Ljava/lang/Long;

    .line 1060
    if-nez v3, :cond_1f

    .line 1061
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1062
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v2, v4, v5}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->Open(Ljava/lang/Object;J)I

    move-result v2

    .line 1063
    if-eqz v2, :cond_20

    .line 1065
    const-string v3, "@@@OSMPBasePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mEngine.Open failed, Error message is 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1069
    :cond_20
    const-string v3, "@@@OSMPBasePlayer"

    const-string v4, "voOSBasePlayer Open +, return %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_21
    move-object v2, v11

    move v8, v12

    goto/16 :goto_6

    :cond_22
    move-wide v2, v4

    goto/16 :goto_4

    :cond_23
    move-object v10, v8

    goto/16 :goto_5
.end method

.method private PauseInner(Z)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1463
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_1

    .line 1465
    :cond_0
    const v0, -0x7ffffff7

    .line 1504
    :goto_0
    return v0

    .line 1468
    :cond_1
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "Pause - "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1470
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->closeTimer()Z

    .line 1472
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    .line 1473
    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1475
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1476
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1478
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "Current player status isn\'t running, don\'t call pause function. status is %d."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1479
    const v0, -0x7ffffff2

    goto :goto_0

    .line 1485
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->Pause()I

    move-result v0

    .line 1486
    if-eqz v0, :cond_3

    .line 1488
    const-string v1, "@@@OSMPBasePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mEngine.Pause() occur error, error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1491
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Pause()I

    move-result v0

    .line 1492
    if-eqz v0, :cond_4

    .line 1494
    const-string v1, "@@@OSMPBasePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSource.Pause() occur error, error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1497
    :cond_4
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 1499
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v3, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Pause:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1503
    :cond_5
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "Pause + "

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private ReadCapTableFromFile(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSPerformanceData;
    .locals 11

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v2, 0x26

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSCPUInfo;

    .line 2885
    if-nez v0, :cond_0

    .line 2887
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "mEngine.GetParam(voOSType.VOOSMP_PID_CPU_INFO) Failed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2888
    const/4 v0, 0x0

    .line 3046
    :goto_0
    return-object v0

    .line 2894
    :cond_0
    const/4 v3, 0x0

    .line 2897
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2899
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 2901
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 2902
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2903
    :try_start_1
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 2905
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 2908
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    .line 2910
    const-string v3, "item"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 2911
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_d

    .line 2913
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 2915
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2917
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 2918
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_c

    .line 2920
    invoke-interface {v7, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 2922
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Core"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    .line 2924
    const-string v9, "Core"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2918
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2925
    :cond_2
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Neon"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_4

    .line 2927
    const-string v9, "Neon"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2955
    :catch_0
    move-exception v1

    :goto_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2963
    if-eqz v2, :cond_3

    .line 2964
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 2970
    :cond_3
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 2971
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2928
    :cond_4
    :try_start_4
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Frequency"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5

    .line 2930
    const-string v9, "Frequency"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 2957
    :catch_1
    move-exception v1

    :goto_6
    :try_start_5
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2963
    if-eqz v2, :cond_3

    .line 2964
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 2966
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2931
    :cond_5
    :try_start_7
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CodecType"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_6

    .line 2933
    const-string v9, "CodecType"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 2960
    :catch_3
    move-exception v1

    :goto_7
    :try_start_8
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2963
    if-eqz v2, :cond_3

    .line 2964
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    .line 2966
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2934
    :cond_6
    :try_start_a
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "BitRate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8

    .line 2936
    const-string v9, "BitRate"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 2962
    :catchall_0
    move-exception v0

    .line 2963
    :goto_8
    if-eqz v2, :cond_7

    .line 2964
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 2967
    :cond_7
    :goto_9
    throw v0

    .line 2937
    :cond_8
    :try_start_c
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "VideoWidth"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9

    .line 2939
    const-string v9, "VideoWidth"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2940
    :cond_9
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "VideoHeight"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_a

    .line 2942
    const-string v9, "VideoHeight"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2943
    :cond_a
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ProfileLevel"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_b

    .line 2945
    const-string v9, "ProfileLevel"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2946
    :cond_b
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "FPS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    .line 2948
    const-string v9, "FPS"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2952
    :cond_c
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2911
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2964
    :cond_d
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_5

    .line 2966
    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 2973
    :cond_e
    new-instance v1, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$Mycomparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$Mycomparator;-><init>(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;)V

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2976
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSCPUInfo;->CoreCount()I

    move-result v6

    .line 2977
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSCPUInfo;->CPUType()I

    move-result v7

    .line 2978
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSCPUInfo;->Frequency()I

    move-result v8

    .line 2980
    const/4 v4, -0x1

    .line 2981
    const/4 v1, -0x1

    .line 2983
    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    :goto_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_16

    .line 2985
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2986
    const-string v1, "Core"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v6, v1, :cond_10

    .line 3026
    :cond_f
    :goto_b
    const/4 v0, -0x1

    if-eq v3, v0, :cond_13

    .line 3028
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    move-object v6, v0

    .line 3037
    :goto_c
    const-string v0, "Cap File is %s. \nCore is %d, Neon is %d, Frequency is %d, CodecType is %d, BitRate is %d, VideoWidth is %d, VideoHeight is %d ProfileLevel is %d, FPS is %d"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const/4 v4, 0x1

    const-string v5, "Core"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "Neon"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "Frequency"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "CodecType"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "BitRate"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "VideoWidth"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "VideoHeight"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "ProfileLevel"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "FPS"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lowFrequencyIndex is %d, iIndex is %d ."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3044
    const-string v1, "@@@OSMPBasePlayer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3046
    new-instance v0, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;

    const-string v1, "CodecType"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "BitRate"

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "VideoWidth"

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "VideoHeight"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "ProfileLevel"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v7, "FPS"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/visualon/OSMPUtils/voOSPerformanceDataImpl;-><init>(IIIIII)V

    goto/16 :goto_0

    .line 2992
    :cond_10
    const-string v1, "Core"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v6, v1, :cond_11

    const-string v1, "Neon"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v7, v1, :cond_f

    .line 2999
    :cond_11
    const-string v1, "Core"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v6, v1, :cond_12

    const-string v1, "Neon"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v7, v1, :cond_12

    const-string v1, "Frequency"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v8, v1, :cond_f

    .line 3007
    :cond_12
    const-string v1, "Core"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v6, v1, :cond_15

    const-string v1, "Neon"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v7, v1, :cond_15

    const-string v1, "Frequency"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v8, v0, :cond_15

    move v1, v2

    .line 2983
    :goto_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto/16 :goto_a

    .line 3029
    :cond_13
    const/4 v0, -0x1

    if-ne v3, v0, :cond_14

    const/4 v0, -0x1

    if-eq v2, v0, :cond_14

    .line 3031
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    move-object v6, v0

    goto/16 :goto_c

    .line 3034
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2962
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto/16 :goto_8

    .line 2960
    :catch_8
    move-exception v1

    move-object v2, v3

    goto/16 :goto_7

    .line 2957
    :catch_9
    move-exception v1

    move-object v2, v3

    goto/16 :goto_6

    .line 2955
    :catch_a
    move-exception v1

    move-object v2, v3

    goto/16 :goto_4

    :cond_15
    move v1, v3

    goto :goto_d

    :cond_16
    move v2, v4

    goto/16 :goto_b
.end method

.method private ReportAudioEvent(I)V
    .locals 5

    .prologue
    .line 3344
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-nez v0, :cond_1

    .line 3369
    :cond_0
    :goto_0
    return-void

    .line 3347
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3351
    :pswitch_0
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v3, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Audio:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioLanguage:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioLanguage:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    const-string v0, "unknow"

    goto :goto_1

    .line 3356
    :pswitch_1
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->IsAudioLanguageChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3358
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v3, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Audio:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mMute:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 3347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private RunInner(Z)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1406
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_1

    .line 1408
    :cond_0
    const v0, -0x7ffffff7

    .line 1449
    :goto_0
    return v0

    .line 1411
    :cond_1
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "Run - "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1414
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Run()I

    move-result v0

    .line 1415
    if-eqz v0, :cond_2

    .line 1417
    const-string v1, "@@@OSMPBasePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSource.Run() occur error, error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1421
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->Run()I

    move-result v0

    .line 1422
    if-eqz v0, :cond_3

    .line 1424
    iput-boolean v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunIsFirstCalled:Z

    .line 1425
    const-string v1, "@@@OSMPBasePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mEngine.Run() occur error, error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1429
    :cond_3
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mPlayingCompleted:Z

    .line 1431
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v1, :cond_4

    .line 1433
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->start()I

    .line 1436
    :cond_4
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 1438
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v3, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Start:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1443
    :cond_5
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v2, -0xf0ffff7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v6, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1444
    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v2, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1446
    iput-boolean v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunIsFirstCalled:Z

    .line 1448
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "Run + "

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private SaveParameters(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 1920
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    .line 1921
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1923
    return-void
.end method

.method private SetPosToleranceInner(IIIZF)I
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1645
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_1

    .line 1647
    :cond_0
    const/4 v0, -0x1

    .line 1718
    :goto_0
    return v0

    .line 1649
    :cond_1
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "SetPos - "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1651
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1653
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    .line 1654
    if-nez v0, :cond_8

    .line 1656
    iput-boolean v5, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunning:Z

    move-object v0, v1

    .line 1663
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 1665
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunning:Z

    .line 1669
    :goto_2
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "SetPos - step2, get player status"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1671
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunning:Z

    if-ne v0, v6, :cond_2

    .line 1673
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->Pause()I

    .line 1674
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "SetPos - step3, Engine pause"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1676
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Pause()I

    .line 1677
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "SetPos - step4, Source pause"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1680
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    .line 1681
    if-eqz v0, :cond_3

    .line 1682
    invoke-virtual {v0, v6}, Lcom/visualon/widget/ClosedCaptionManager;->clearData(Z)V

    .line 1686
    :cond_3
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "SetPos - step5, Clear CC"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1688
    if-eqz p4, :cond_4

    .line 1690
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const v1, 0x10014

    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->lastIFrameMode:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    invoke-virtual {v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    .line 1691
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/32 v2, 0x10014

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->lastIFrameMode:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    invoke-virtual {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 1692
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const v1, 0x10013

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    .line 1693
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/32 v2, 0x10013

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 1696
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetPosTolerance(III)I

    move-result v0

    .line 1697
    if-nez v0, :cond_5

    .line 1700
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "seek, mSource.SetPos(%d), return is 0."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, p1

    .line 1702
    :cond_5
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "SetPos - step6, mSource.SetPos"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1704
    if-ltz v0, :cond_6

    .line 1706
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetPosTolerance(JII)I

    .line 1707
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "seek, Setup pos is %d, new pos is %d."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1709
    :cond_6
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "SetPos - step7, mEngine.SetPos"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1711
    iget-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunning:Z

    if-ne v1, v6, :cond_7

    .line 1713
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Run()I

    .line 1714
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->Run()I

    .line 1716
    :cond_7
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voID3Container;->reset()V

    .line 1717
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "SetPos +  "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1659
    :cond_8
    check-cast v0, Ljava/lang/Integer;

    goto/16 :goto_1

    .line 1667
    :cond_9
    iput-boolean v5, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunning:Z

    goto/16 :goto_2
.end method

.method private StopInner(Z)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1536
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_1

    .line 1538
    :cond_0
    const v0, -0x7ffffff7

    .line 1590
    :goto_0
    return v0

    .line 1541
    :cond_1
    const-string v0, "@@@OSMPBasePlayer"

    const-string v2, "Stop - "

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1542
    iput-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunIsFirstCalled:Z

    .line 1543
    iput-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mBlockCC:Z

    .line 1544
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->closeTimer()Z

    .line 1545
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_7

    .line 1546
    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->showSubtitle()V

    .line 1550
    :goto_1
    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v3

    .line 1553
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->Stop()I

    move-result v0

    .line 1554
    if-eqz v0, :cond_2

    .line 1556
    const-string v2, "@@@OSMPBasePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mEngine.Stop() occur error, error code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1559
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Stop()I

    move-result v2

    .line 1560
    if-eqz v2, :cond_3

    .line 1562
    const-string v0, "@@@OSMPBasePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mSource.Stop() occur error, error code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1565
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_5

    .line 1567
    if-eqz p1, :cond_4

    .line 1569
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mPlayingCompleted:Z

    if-nez v0, :cond_8

    .line 1570
    const/4 v0, 0x1

    .line 1572
    :goto_2
    iget-object v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v5, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v6, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Stop:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v6, v3, v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1576
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->stop()I

    .line 1580
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_6

    .line 1582
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/visualon/widget/ClosedCaptionManager;->clearData(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voID3Container;->reset()V

    .line 1589
    const-string v0, "@@@OSMPBasePlayer"

    const-string v3, "Stop + "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 1590
    goto/16 :goto_0

    .line 1548
    :cond_7
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v3, -0xf0ffff3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->clearSubtitle()V

    .line 1586
    const-string v3, "@@@OSMPBasePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CloseCaption ccMan.clearData exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPEngine/voOnStreamSDK;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayEnable:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;Z)Z
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mBlockCC:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSAnalytics;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSubtitleInEngine:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->openedTimes:I

    return v0
.end method

.method static synthetic access$1800(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunIsFirstCalled:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->closeCaptionOutput:Z

    return v0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;ILjava/lang/Object;)I
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->setCommonCCParser(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->createCloseCaptionUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/widget/ClosedCaptionManager;
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;Z)Z
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayAllowed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->destroySubtitleManager()V

    return-void
.end method

.method static synthetic access$700(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsExportListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mOffsetTime:I

    return v0
.end method

.method static synthetic access$900(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;I)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->ReportAudioEvent(I)V

    return-void
.end method

.method private checkEventVOOSMP_CB_Metadata_Arrive(IIILjava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2834
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 2836
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 2838
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2839
    const/16 v0, 0x2a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 2840
    :cond_0
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "event VOOSMP_CB_Metadata_Arrive in onDataSourceEvent"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2841
    iput-boolean v5, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->metadata_Arrive:Z

    .line 2843
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v1, -0xf0ffffa

    invoke-virtual {v0, v1, v4, v4, p4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2844
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v1, v0, v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2846
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2848
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_ID3:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 2858
    :cond_1
    return-void
.end method

.method private clearSubtitle()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1518
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayEnable:Z

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v1, -0xf0ffff8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1520
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1523
    :cond_0
    return-void
.end method

.method private closeTimer()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3113
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 3114
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3115
    :cond_0
    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timerTask:Ljava/util/TimerTask;

    .line 3116
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 3117
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3118
    :cond_1
    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timer:Ljava/util/Timer;

    .line 3119
    const/4 v0, 0x1

    return v0
.end method

.method private createCloseCaptionUI()V
    .locals 2

    .prologue
    .line 3088
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->startTimer()Z

    .line 3090
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayEnable:Z

    if-nez v0, :cond_1

    .line 3109
    :cond_0
    :goto_0
    return-void

    .line 3092
    :cond_1
    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->showSubtitle()V

    .line 3093
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    .line 3094
    if-eqz v0, :cond_2

    .line 3095
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->setActivity(Landroid/content/Context;)V

    .line 3096
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->setSurfaceView(Landroid/view/View;)V

    .line 3098
    :cond_2
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3100
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3102
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getOrCreateSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    .line 3103
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->setActivity(Landroid/content/Context;)V

    .line 3104
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->setSurfaceView(Landroid/view/View;)V

    .line 3106
    :cond_3
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->metadata_Arrive:Z

    if-nez v1, :cond_0

    .line 3107
    invoke-virtual {v0}, Lcom/visualon/widget/ClosedCaptionManager;->clearWidget()V

    goto :goto_0
.end method

.method private destroySubtitleManager()V
    .locals 1

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_0

    .line 3494
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->destroySubtitleManager()V

    .line 3495
    :cond_0
    return-void
.end method

.method private getCurrentStreamInfo()Lcom/visualon/OSMPUtils/voOSStreamInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3373
    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetProgramCount()I

    move-result v0

    if-gtz v0, :cond_0

    move-object v0, v2

    .line 3392
    :goto_0
    return-object v0

    .line 3376
    :cond_0
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetProgramInfo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSProgramInfo;

    .line 3377
    if-nez v0, :cond_1

    move-object v0, v2

    .line 3378
    goto :goto_0

    .line 3380
    :cond_1
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSProgramInfo;->getStreamCount()I

    move-result v3

    if-gtz v3, :cond_2

    move-object v0, v2

    .line 3381
    goto :goto_0

    .line 3383
    :cond_2
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSProgramInfo;->getStreamInfo()[Lcom/visualon/OSMPUtils/voOSStreamInfo;

    move-result-object v3

    .line 3384
    if-nez v3, :cond_3

    move-object v0, v2

    .line 3385
    goto :goto_0

    :cond_3
    move v0, v1

    .line 3387
    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_5

    .line 3388
    aget-object v1, v3, v0

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSStreamInfo;->getSelInfo()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 3389
    aget-object v0, v3, v0

    goto :goto_0

    .line 3387
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 3392
    goto :goto_0
.end method

.method private getOrCreateSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;
    .locals 1

    .prologue
    .line 3481
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_0

    .line 3482
    const/4 v0, 0x0

    .line 3483
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->getOrCreateSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;
    .locals 1

    .prologue
    .line 3487
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_0

    .line 3488
    const/4 v0, 0x0

    .line 3489
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    goto :goto_0
.end method

.method private initAnalyticsCollector()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1105
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-nez v0, :cond_0

    .line 1106
    const v0, -0x7ffffff9

    .line 1124
    :goto_0
    return v0

    .line 1108
    :cond_0
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsCollectorInited:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 1109
    goto :goto_0

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->GetFunctionSet()J

    move-result-wide v2

    .line 1112
    const-string v0, "@@@OSMPBasePlayer"

    const-string v4, "Set Analytics FunctionSet is successful, VOOSMP_PID_ANALYTICS_OBJECT, pointer is 0x%X."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    const/16 v0, 0x69

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 1114
    const v0, 0x3000035

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 1115
    iput-boolean v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsCollectorInited:Z

    .line 1117
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsDisplayEnable:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->enableDisplay(I)I

    .line 1118
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->setDisplayType(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;)I

    .line 1119
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v3, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_ID:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    iget v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mPlayerType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1121
    const/16 v0, 0x49

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSModuleVersion;

    .line 1122
    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v3, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v4, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Version:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSModuleVersion;->GetVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    move v0, v1

    .line 1124
    goto :goto_0
.end method

.method private isFroyoOrAbove()Z
    .locals 2

    .prologue
    .line 3327
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3331
    :cond_0
    const/4 v0, 0x0

    .line 3333
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reportAnalyticsEvent(III)V
    .locals 1

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_0

    .line 2652
    sparse-switch p1, :sswitch_data_0

    .line 2668
    :cond_0
    :goto_0
    return-void

    .line 2662
    :sswitch_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->ReportEvent(III)I

    goto :goto_0

    .line 2652
    :sswitch_data_0
    .sparse-switch
        -0x7ffffff0 -> :sswitch_0
        -0x7fffffe3 -> :sswitch_0
        -0x7dfffff8 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x2000010 -> :sswitch_0
        0x2000040 -> :sswitch_0
    .end sparse-switch
.end method

.method private setCloseCaptionOutput(ILjava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1963
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_1

    .line 1987
    :cond_0
    :goto_0
    return v3

    .line 1965
    :cond_1
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->metadata_Arrive:Z

    if-nez v0, :cond_0

    .line 1975
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1977
    iput-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->closeCaptionOutput:Z

    .line 1978
    iput-boolean v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayAllowed:Z

    .line 1985
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v1, -0xf0ffffd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1986
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1982
    :cond_2
    iput-boolean v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->closeCaptionOutput:Z

    .line 1983
    iput-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayAllowed:Z

    goto :goto_1
.end method

.method private setCommonCCParser(ILjava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1927
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_1

    .line 1958
    :cond_0
    :goto_0
    return v2

    .line 1929
    :cond_1
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->metadata_Arrive:Z

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1932
    :cond_2
    if-eqz p2, :cond_5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1934
    iput-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayAllowed:Z

    .line 1935
    iput-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayEnable:Z

    .line 1936
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1938
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getOrCreateSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    .line 1939
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 1940
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->setActivity(Landroid/content/Context;)V

    .line 1941
    :cond_3
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1942
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->setSurfaceView(Landroid/view/View;)V

    .line 1944
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v1, -0xf0ffff7

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1945
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1951
    :cond_5
    iput-boolean v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayAllowed:Z

    .line 1952
    iput-boolean v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayEnable:Z

    .line 1953
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v1, -0xf0ffffd

    invoke-virtual {v0, v1, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1954
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setParamInDict()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1992
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2028
    :cond_0
    return-void

    .line 1993
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    .line 1995
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1998
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 2000
    const-string v0, "@@@OSMPBasePlayer"

    const-string v5, "ent.getKey()  id is %s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2002
    const v0, 0x300000a

    if-ne v4, v0, :cond_2

    .line 2003
    const-string v0, "@@@OSMPBasePlayer"

    const-string v5, "SetParam(voOSType.VOOSMP_SRC_PID_SOCKET_CONNECTION_TYPE, %s) "

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2004
    :cond_2
    const v0, 0x3000009

    if-ne v4, v0, :cond_3

    .line 2005
    const-string v5, "@@@OSMPBasePlayer"

    const-string v6, "SetParam(voOSType.VOOSMP_SRC_PID_DOHTTPVERIFICATION, %s) "

    new-array v7, v8, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->getVerificationData()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2006
    :cond_3
    const/4 v0, 0x6

    if-ne v4, v0, :cond_4

    .line 2007
    const-string v0, "@@@OSMPBasePlayer"

    const-string v5, "SetParam(voOSType.VOOSMP_PID_MIN_BUFFTIME, %s) "

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2009
    :cond_4
    const v0, 0x300000c

    if-ne v4, v0, :cond_7

    .line 2010
    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->ReadCapTableFromFile(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSPerformanceData;

    move-result-object v0

    .line 2011
    if-nez v0, :cond_6

    .line 2012
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "ReadCapTableFromFile error, don\'t setup cap data!"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1995
    :cond_5
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2014
    :cond_6
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    goto :goto_1

    .line 2020
    :cond_7
    const v0, 0x3010012

    if-eq v4, v0, :cond_5

    const v0, 0x3010014

    if-eq v4, v0, :cond_5

    const v0, 0x3010015

    if-eq v4, v0, :cond_5

    const v0, 0x3010016

    if-eq v4, v0, :cond_5

    .line 2026
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, v4, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    goto :goto_1
.end method

.method private setPlayIFrameOnly(Lcom/visualon/OSMPUtils/voIFramePlayInfo;)I
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2547
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voIFramePlayInfo;->isEnable()Z

    move-result v1

    .line 2548
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voIFramePlayInfo;->getSpeedRate()F

    move-result v5

    .line 2550
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->I_FRAME_MODE_DISABLED:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    .line 2551
    if-eqz v1, :cond_0

    .line 2553
    cmpg-float v0, v3, v5

    if-gez v0, :cond_1

    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->I_FRAME_MODE_FORWARD:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    .line 2558
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->lastIFrameMode:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    if-ne v0, v1, :cond_4

    .line 2560
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const v1, 0x10013

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    .line 2561
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/32 v6, 0x10013

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v6, v7, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 2569
    :goto_1
    return v2

    .line 2554
    :cond_1
    cmpl-float v0, v3, v5

    if-lez v0, :cond_2

    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->I_FRAME_MODE_BACKWARD:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    goto :goto_0

    .line 2555
    :cond_2
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->I_FRAME_MODE_DISABLED:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->lastIFrameMode:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;->I_FRAME_MODE_FORWARD:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->lastIFrameMode:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    goto :goto_0

    .line 2565
    :cond_4
    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->lastIFrameMode:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$I_FRAME_MODE;

    .line 2566
    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v1

    const/4 v4, 0x1

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetPosToleranceInner(IIIZF)I

    goto :goto_1
.end method

.method private startTimer()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 3123
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3203
    :goto_0
    return v6

    .line 3127
    :cond_0
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;-><init>(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;)V

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timerTask:Ljava/util/TimerTask;

    .line 3193
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 3195
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timer:Ljava/util/Timer;

    .line 3199
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 3200
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 3202
    :cond_2
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "Start ClosedCaption!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public AfterCommitSelection()V
    .locals 0

    .prologue
    .line 1531
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->clearSubtitle()V

    .line 1532
    return-void
.end method

.method public declared-synchronized Close()I
    .locals 4

    .prologue
    .line 1337
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->openedTimes:I

    .line 1338
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1340
    :cond_0
    const v0, -0x7ffffff7

    .line 1386
    :goto_0
    monitor-exit p0

    return v0

    .line 1342
    :cond_1
    :try_start_1
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "close - "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v2, 0xe

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1348
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1349
    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Stop()I

    .line 1352
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->Close()I

    move-result v0

    .line 1353
    if-eqz v0, :cond_3

    .line 1355
    const-string v1, "@@@OSMPBasePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mEngine.Close() occur error, error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1358
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Close()I

    move-result v0

    .line 1359
    if-eqz v0, :cond_4

    .line 1361
    const-string v1, "@@@OSMPBasePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSource.Close() occur error, error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1366
    :cond_4
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voID3Container;->reset()V

    .line 1369
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-eqz v1, :cond_5

    .line 1370
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Uninit()I

    .line 1374
    :cond_5
    const/4 v1, 0x0

    iput v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nWidthOfAspectRatio:I

    .line 1375
    const/4 v1, 0x0

    iput v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nHeightOfAspectRatio:I

    .line 1381
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->subtitleFileNameSet:Z

    .line 1382
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->metadata_Arrive:Z

    .line 1383
    const/4 v1, -0x1

    iput v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioTrack:I

    .line 1384
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAudioLanguage:Ljava/lang/String;

    .line 1385
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "close + "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public GetCurTrackInfo(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 1283
    const/4 v0, 0x0

    .line 1285
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetCurTrackInfo(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public GetDuration()I
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 1604
    const v0, -0x7ffffff7

    .line 1606
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetDuration()I

    move-result v0

    goto :goto_0
.end method

.method public GetFrameScrubbingThumbnail(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3215
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    if-eqz v0, :cond_0

    .line 3216
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    invoke-interface {v0, p1}, Lcom/visualon/OSMPUtils/voID3Container;->getThumbnailByTime(I)Ljava/lang/String;

    move-result-object v0

    .line 3218
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetParam(I)Ljava/lang/Object;
    .locals 5

    .prologue
    const v4, 0x3000001

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1842
    const v1, 0x300000f

    if-ne p1, v1, :cond_0

    .line 1843
    new-instance v0, Lcom/visualon/OSMPUtils/voOSUniqID;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/visualon/OSMPUtils/voOSUniqID;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSUniqID;->getDeviceUUIDString()Ljava/lang/String;

    move-result-object v0

    .line 1913
    :goto_0
    return-object v0

    .line 1846
    :cond_0
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1848
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v1, :cond_1

    .line 1850
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "mEngine is null!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1853
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1856
    :cond_2
    const/16 v1, 0x70

    if-ne p1, v1, :cond_4

    .line 1858
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-nez v0, :cond_3

    .line 1859
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1860
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->getFPS()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1863
    :cond_4
    const/16 v1, 0x8c

    if-ne p1, v1, :cond_6

    .line 1865
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->getExportPacket()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, ""

    goto :goto_0

    .line 1868
    :cond_6
    const/16 v1, 0x2901

    if-ne p1, v1, :cond_a

    .line 1870
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1872
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v1, :cond_7

    .line 1874
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "mEngine is null!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1877
    :cond_7
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayEnable:Z

    if-nez v0, :cond_8

    .line 1878
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1879
    :cond_8
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getOrCreateSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    .line 1880
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->setActivity(Landroid/content/Context;)V

    .line 1881
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->setSurfaceView(Landroid/view/View;)V

    .line 1882
    invoke-virtual {v0}, Lcom/visualon/widget/ClosedCaptionManager;->getSettings()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    move-result-object v0

    goto :goto_0

    .line 1885
    :cond_9
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/widget/ClosedCaptionManager;->getSettings()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    move-result-object v0

    goto/16 :goto_0

    .line 1887
    :cond_a
    const v1, 0xffff

    and-int/2addr v1, p1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_b

    if-ge p1, v4, :cond_b

    .line 1890
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 1893
    :cond_b
    const v1, 0x3010011

    if-ne p1, v1, :cond_c

    .line 1895
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    goto/16 :goto_0

    .line 1898
    :cond_c
    if-lt p1, v4, :cond_e

    .line 1900
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v1, :cond_d

    .line 1902
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "mSource is null!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1905
    :cond_d
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 1908
    :cond_e
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v1, :cond_f

    .line 1910
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "mSource is null!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1913
    :cond_f
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public GetParam(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1802
    const v0, 0x3000001

    if-lt p1, v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-eqz v0, :cond_1

    .line 1805
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetParam(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1812
    :goto_0
    return-object v0

    .line 1809
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_1

    .line 1810
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1812
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetPos()I
    .locals 1

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_0

    .line 1731
    const/4 v0, 0x0

    .line 1733
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetPos()I

    move-result v0

    goto :goto_0
.end method

.method public GetProgramCount()I
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 1191
    const/4 v0, -0x1

    .line 1192
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetProgramCount()I

    move-result v0

    goto :goto_0
.end method

.method public GetProgramInfo(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 1265
    const/4 v0, 0x0

    .line 1269
    :goto_0
    return-object v0

    .line 1267
    :cond_0
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "GetProgramInfo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1269
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetProgramInfo(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public GetSEITimingInfo(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;J)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_0

    .line 2643
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2644
    const v0, -0x7ffffeff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2646
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetSEITimingInfo(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public GetSample(II)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1152
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v1, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return-object v0

    .line 1156
    :cond_1
    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_SUBTITLE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1158
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v1, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetSample(II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public GetScreenBrightness()I
    .locals 4

    .prologue
    .line 3314
    const/16 v0, 0xff

    .line 3316
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3321
    :goto_0
    int-to-float v0, v0

    float-to-double v0, v0

    const-wide v2, 0x4004666666666666L    # 2.55

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 3322
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public GetScreenBrightnessMode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3268
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isFroyoOrAbove()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3278
    :goto_0
    return v0

    .line 3273
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3278
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public GetSubtitleLanguageInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visualon/OSMPUtils/voOSSubtitleLanguage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_2

    .line 2583
    :cond_0
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2584
    const/4 v0, 0x0

    .line 2594
    :cond_1
    :goto_0
    return-object v0

    .line 2586
    :cond_2
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->subtitleFileNameSet:Z

    if-eqz v0, :cond_3

    .line 2587
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetSubtitleLanguageInfo()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2590
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetSubtitleLanguageInfo()Ljava/util/List;

    move-result-object v0

    .line 2591
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2594
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetSubtitleLanguageInfo()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public Init(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/visualon/OSMPUtils/voOSOption;",
            ">;III)I"
        }
    .end annotation

    .prologue
    .line 573
    invoke-static {p2}, Lcom/visualon/OSMPUtils/voLog;->initLogLib(Ljava/lang/String;)I

    .line 574
    const-string v2, "@@@OSMPBasePlayer"

    const-string v3, "voOSBasePlayer Init -"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->destroySubtitleManager()V

    .line 576
    const/4 v2, 0x0

    iput v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->openedTimes:I

    .line 577
    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 578
    :cond_0
    const v2, -0x7ffffff7

    .line 615
    :goto_0
    return v2

    .line 580
    :cond_1
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    .line 581
    move/from16 v0, p4

    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mPlayerType:I

    .line 596
    iput-object p2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mPackageName:Ljava/lang/String;

    .line 597
    iput-object p3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mOptions:Ljava/util/List;

    .line 598
    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v2, :cond_2

    .line 599
    new-instance v2, Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-direct {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    .line 600
    :cond_2
    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v2, :cond_3

    .line 601
    new-instance v2, Lcom/visualon/OSMPDataSource/voOSDataSource;

    iget-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    .line 602
    :cond_3
    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    .line 603
    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    iget-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    move/from16 v0, p4

    int-to-long v6, v0

    move/from16 v0, p5

    int-to-long v8, v0

    move/from16 v0, p6

    int-to-long v10, v0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v11}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->Init(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JJJ)I

    move-result v3

    .line 604
    if-eqz p4, :cond_4

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mbOMXAL:Z

    .line 606
    iget-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v2, p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setEventListener(Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;)V

    .line 607
    new-instance v2, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 608
    iget-object v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v6, 0x1029

    invoke-virtual {v4, v6, v7, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 610
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mMute:Z

    .line 612
    new-instance v2, Lcom/visualon/OSMPUtils/voOSSuspendInfo;

    invoke-direct {v2}, Lcom/visualon/OSMPUtils/voOSSuspendInfo;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSuspendInfo:Lcom/visualon/OSMPUtils/voOSSuspendInfo;

    .line 613
    const-string v2, "@@@OSMPBasePlayer"

    const-string v4, "voOSBasePlayer Init +, return is %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 615
    goto :goto_0

    .line 604
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public Open(Ljava/lang/Object;IIII)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 863
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 865
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "SurfaceView/Surface should be set before open function"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    const v0, -0x7ffffeff

    .line 874
    :cond_0
    :goto_0
    return v0

    .line 868
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->OpenInternal(Ljava/lang/Object;IIII)I

    move-result v0

    .line 869
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 871
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    const v2, 0x2000010

    invoke-virtual {v1, v2, v0, v3}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->ReportEvent(III)I

    goto :goto_0
.end method

.method public Pause()I
    .locals 1

    .prologue
    .line 1458
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->PauseInner(Z)I

    move-result v0

    return v0
.end method

.method public Run()I
    .locals 3

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 1398
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "SurfaceView/Surface should be set before run function"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1399
    const v0, -0x7ffffeff

    .line 1401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->RunInner(Z)I

    move-result v0

    goto :goto_0
.end method

.method public SelectProgram(I)I
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 1297
    const v0, -0x7fffefff

    .line 1299
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SelectProgram(I)I

    move-result v0

    goto :goto_0
.end method

.method public SelectStream(I)I
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 1311
    const v0, -0x7fffefff

    .line 1313
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SelectStream(I)I

    move-result v0

    goto :goto_0
.end method

.method public SelectSubtitleLanguage(I)I
    .locals 3

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_1

    .line 2607
    :cond_0
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2608
    const v0, -0x7ffffeff

    .line 2611
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->SelectSubtitleLanguage:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->ChangeBitrate(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public SelectTrack(I)I
    .locals 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-nez v0, :cond_0

    .line 1325
    const v0, -0x7fffefff

    .line 1327
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;->SelectTrack:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->ChangeBitrate(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EnumSelectFunc;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public SetDisplaySize(II)V
    .locals 5

    .prologue
    .line 735
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_0

    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSetDisplaySizeFlag:Z

    .line 741
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetDisplaySize(II)V

    .line 742
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_ViewSize:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 748
    :cond_0
    return-void
.end method

.method public SetParam(ILjava/lang/Object;)I
    .locals 10

    .prologue
    const v9, 0x3010010

    const/16 v8, 0x3b

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2129
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_2

    .line 2130
    :cond_0
    const v2, -0x7ffffeff

    .line 2539
    :cond_1
    :goto_0
    return v2

    .line 2132
    :cond_2
    const-string v0, "@@@OSMPBasePlayer"

    const-string v3, "SetParam ID is 0x%X"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2134
    const/16 v0, 0x56

    if-ne p1, v0, :cond_3

    .line 2135
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mOffsetTime:I

    goto :goto_0

    .line 2139
    :cond_3
    const/16 v0, 0x8f

    if-ne v0, p1, :cond_5

    .line 2141
    instance-of v0, p2, Lcom/visualon/OSMPUtils/voIFramePlayInfo;

    if-nez v0, :cond_4

    .line 2142
    const v2, -0x7fffffed

    goto :goto_0

    .line 2143
    :cond_4
    check-cast p2, Lcom/visualon/OSMPUtils/voIFramePlayInfo;

    invoke-direct {p0, p2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->setPlayIFrameOnly(Lcom/visualon/OSMPUtils/voIFramePlayInfo;)I

    move-result v2

    goto :goto_0

    .line 2145
    :cond_5
    const/16 v0, 0x2b

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    .line 2149
    :cond_6
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    .line 2150
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    goto :goto_0

    .line 2154
    :cond_7
    const/16 v0, 0x5e

    if-ne p1, v0, :cond_b

    .line 2155
    check-cast p2, Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;

    .line 2156
    if-nez p2, :cond_8

    .line 2157
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "CloseCaption voOSPreviewSubtitleInfo is null"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2160
    :cond_8
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    .line 2161
    if-eqz v0, :cond_9

    .line 2162
    invoke-virtual {v0}, Lcom/visualon/widget/ClosedCaptionManager;->clearWidget()V

    .line 2164
    :cond_9
    if-nez v0, :cond_a

    .line 2165
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getOrCreateSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    .line 2166
    :cond_a
    invoke-virtual {v0, p2}, Lcom/visualon/widget/ClosedCaptionManager;->previewSubtitle(Lcom/visualon/OSMPUtils/voOSPreviewSubtitleInfo;)V

    .line 2167
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "CloseCaption previewSubtitle"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2172
    :cond_b
    const/16 v0, 0x30

    if-ne p1, v0, :cond_c

    .line 2173
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nAspectRationType:Ljava/lang/Integer;

    .line 2174
    invoke-virtual {p0, v2, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->updateVideoAspectRatio(II)V

    goto/16 :goto_0

    .line 2177
    :cond_c
    const/16 v0, 0x102b

    if-ne p1, v0, :cond_e

    move-object v0, p2

    .line 2179
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->ReportAudioEvent(I)V

    .line 2180
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_d

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mMute:Z

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto :goto_1

    .line 2184
    :cond_e
    const/16 v0, 0x33

    if-eq p1, v0, :cond_f

    if-ne p1, v8, :cond_10

    .line 2187
    :cond_f
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_12

    move-object v0, p2

    .line 2189
    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    .line 2190
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v0

    .line 2191
    if-eqz v0, :cond_10

    .line 2192
    iget-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/visualon/widget/ClosedCaptionManager;->setSurfaceView(Landroid/view/View;)V

    .line 2201
    :cond_10
    :goto_2
    if-ne p1, v8, :cond_11

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_11

    .line 2203
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v3, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v4, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Render:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 2207
    :cond_11
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_13

    .line 2209
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->setCommonCCParser(ILjava/lang/Object;)I

    move-result v2

    goto/16 :goto_0

    .line 2195
    :cond_12
    instance-of v0, p2, Landroid/view/Surface;

    if-eqz v0, :cond_10

    .line 2197
    iput-object v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    goto :goto_2

    .line 2215
    :cond_13
    const/16 v0, 0x2900

    if-ne p1, v0, :cond_14

    .line 2217
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->setCloseCaptionOutput(ILjava/lang/Object;)I

    move-result v2

    goto/16 :goto_0

    .line 2219
    :cond_14
    const/16 v0, 0x1029

    if-eq p1, v0, :cond_1

    .line 2223
    const/16 v0, 0x1a

    if-eq p1, v0, :cond_15

    const v0, 0x300000d

    if-eq p1, v0, :cond_15

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_15

    const/16 v0, 0xa

    if-eq p1, v0, :cond_15

    const v0, 0x3000018

    if-eq p1, v0, :cond_15

    const/16 v0, 0x9

    if-eq p1, v0, :cond_15

    const v0, 0x3000021

    if-eq p1, v0, :cond_15

    const/16 v0, 0x50

    if-eq p1, v0, :cond_15

    const/16 v0, 0x89

    if-ne p1, v0, :cond_16

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_BA_START_DEFAULT:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->getValue()I

    move-result v3

    if-eq v0, v3, :cond_15

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_BA_START_FAST:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->getValue()I

    move-result v3

    if-ne v0, v3, :cond_16

    .line 2234
    :cond_15
    const-string v0, "@@@OSMPBasePlayer"

    const-string v3, "to set parameter VOOSMP_PID_PERFORMANCE_DATA!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2235
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    move-result v0

    .line 2236
    const/16 v3, 0x50

    if-eq p1, v3, :cond_16

    move v2, v0

    .line 2237
    goto/16 :goto_0

    .line 2240
    :cond_16
    const/4 v0, 0x6

    if-eq p1, v0, :cond_17

    const/16 v0, 0x37

    if-eq p1, v0, :cond_17

    if-ne p1, v9, :cond_1a

    .line 2244
    :cond_17
    const/16 v0, 0x37

    if-eq p1, v0, :cond_18

    if-ne p1, v9, :cond_19

    :cond_18
    move-object v0, p2

    .line 2245
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 2246
    iput-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->subtitleFileNameSet:Z

    .line 2250
    :cond_19
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    move-result v2

    goto/16 :goto_0

    .line 2254
    :cond_1a
    const/16 v0, 0x6b

    if-ne p1, v0, :cond_1c

    .line 2256
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->CreateAnalytics()I

    .line 2258
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsDisplayEnable:Ljava/lang/Integer;

    .line 2259
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2262
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsDisplayEnable:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->enableDisplay(I)I

    move-result v2

    .line 2263
    if-eqz v2, :cond_1b

    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsCollectorInited:Z

    if-nez v0, :cond_1b

    .line 2264
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->DestroyAnalytics()I

    goto/16 :goto_0

    .line 2267
    :cond_1b
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->initAnalyticsCollector()I

    move-result v2

    goto/16 :goto_0

    .line 2270
    :cond_1c
    const/16 v0, 0x6d

    if-ne p1, v0, :cond_1d

    .line 2272
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    .line 2273
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2275
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->setDisplayType(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;)I

    move-result v2

    goto/16 :goto_0

    .line 2278
    :cond_1d
    const/16 v0, 0x82

    if-ne p1, v0, :cond_20

    .line 2280
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->CreateAnalytics()I

    .line 2281
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2283
    check-cast p2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2284
    :goto_3
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->enableFoundation(Z)I

    move-result v2

    .line 2285
    if-eqz v2, :cond_1f

    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsCollectorInited:Z

    if-nez v0, :cond_1f

    .line 2286
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->DestroyAnalytics()I

    goto/16 :goto_0

    :cond_1e
    move v1, v2

    .line 2283
    goto :goto_3

    .line 2289
    :cond_1f
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->initAnalyticsCollector()I

    move-result v2

    goto/16 :goto_0

    .line 2292
    :cond_20
    const/16 v0, 0x83

    if-ne p1, v0, :cond_21

    .line 2294
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2296
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->setFoundationCUID(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 2299
    :cond_21
    const/16 v0, 0x84

    if-ne p1, v0, :cond_24

    .line 2301
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2303
    check-cast p2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2304
    :goto_4
    if-eqz v1, :cond_23

    .line 2305
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->enableLocation()V

    goto/16 :goto_0

    :cond_22
    move v1, v2

    .line 2303
    goto :goto_4

    .line 2307
    :cond_23
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->disableLocation()V

    goto/16 :goto_0

    .line 2312
    :cond_24
    const/16 v0, 0x90

    if-ne p1, v0, :cond_27

    .line 2314
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->CreateAnalytics()I

    .line 2315
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2317
    check-cast p2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 2318
    :goto_5
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->enableAgent(Z)I

    move-result v2

    .line 2319
    if-eqz v2, :cond_26

    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsCollectorInited:Z

    if-nez v0, :cond_26

    .line 2320
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->DestroyAnalytics()I

    goto/16 :goto_0

    :cond_25
    move v1, v2

    .line 2317
    goto :goto_5

    .line 2323
    :cond_26
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->initAnalyticsCollector()I

    move-result v2

    goto/16 :goto_0

    .line 2326
    :cond_27
    const/16 v0, 0x92

    if-ne p1, v0, :cond_28

    .line 2328
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2330
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->setAgentAppID(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 2333
    :cond_28
    const/16 v0, 0x91

    if-ne p1, v0, :cond_29

    .line 2335
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2337
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->setAgentCUID(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 2340
    :cond_29
    const/16 v0, 0x8b

    if-ne p1, v0, :cond_2c

    .line 2342
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->CreateAnalytics()I

    .line 2343
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2345
    check-cast p2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2346
    :goto_6
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->enableExport(Z)I

    move-result v2

    .line 2347
    if-eqz v2, :cond_2b

    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsCollectorInited:Z

    if-nez v0, :cond_2b

    .line 2348
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->DestroyAnalytics()I

    goto/16 :goto_0

    :cond_2a
    move v1, v2

    .line 2345
    goto :goto_6

    .line 2351
    :cond_2b
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->initAnalyticsCollector()I

    move-result v2

    goto/16 :goto_0

    .line 2354
    :cond_2c
    const/16 v0, 0x8d

    if-ne p1, v0, :cond_2e

    .line 2356
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2358
    check-cast p2, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;

    .line 2359
    if-eqz p2, :cond_2d

    .line 2360
    iput-object p2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsExportListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;

    .line 2361
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->enableExportEventMessage(Z)V

    goto/16 :goto_0

    .line 2363
    :cond_2d
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$NullAnalyticsExportListener;

    invoke-direct {v0, v7}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$NullAnalyticsExportListener;-><init>(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsExportListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;

    .line 2364
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->enableExportEventMessage(Z)V

    goto/16 :goto_0

    .line 2369
    :cond_2e
    const v0, 0x3000001

    if-lt p1, v0, :cond_34

    .line 2372
    if-eq p1, v9, :cond_2f

    const v0, 0x3010011

    if-eq p1, v0, :cond_2f

    const v0, 0x3010012

    if-eq p1, v0, :cond_2f

    const v0, 0x3010013

    if-eq p1, v0, :cond_2f

    const v0, 0x3010014

    if-eq p1, v0, :cond_2f

    const v0, 0x3010015

    if-eq p1, v0, :cond_2f

    const v0, 0x3010016

    if-ne p1, v0, :cond_30

    .line 2380
    :cond_2f
    const-string v0, "@@@OSMPBasePlayer"

    const-string v3, "to set parameter to HashMap! id = %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2381
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SaveParameters(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2384
    :cond_30
    const v0, 0x300000c

    if-ne p1, v0, :cond_32

    .line 2386
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SaveParameters(ILjava/lang/Object;)V

    .line 2387
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->ReadCapTableFromFile(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSPerformanceData;

    move-result-object v0

    .line 2388
    if-nez v0, :cond_31

    .line 2390
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "ReadCapTableFromFile error, don\'t setup cap data!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2391
    const v2, -0x7effffff

    goto/16 :goto_0

    .line 2394
    :cond_31
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    move-result v2

    goto/16 :goto_0

    .line 2398
    :cond_32
    const v0, 0x3000002

    if-ne p1, v0, :cond_33

    .line 2400
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    move-result v2

    .line 2403
    new-instance v0, Lcom/visualon/OSMPUtils/voOSUniqID;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/visualon/OSMPUtils/voOSUniqID;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSUniqID;->getDeviceUUIDString()Ljava/lang/String;

    move-result-object v0

    .line 2406
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const v3, 0x300000f

    invoke-virtual {v1, v3, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    goto/16 :goto_0

    .line 2411
    :cond_33
    const-string v0, "@@@OSMPBasePlayer"

    const-string v3, "mSource SetParam ID is %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2412
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    move-result v2

    goto/16 :goto_0

    .line 2415
    :cond_34
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_35

    .line 2417
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "mEngine is null!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2418
    const v2, -0x7fffefff

    goto/16 :goto_0

    .line 2420
    :cond_35
    const/16 v0, 0x48

    if-ne p1, v0, :cond_37

    move-object v0, p2

    .line 2422
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2423
    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->getValue()I

    move-result v3

    if-eq v0, v3, :cond_36

    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->getValue()I

    move-result v3

    if-ne v0, v3, :cond_37

    .line 2427
    :cond_36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    .line 2431
    :cond_37
    const/16 v0, 0x16

    if-ne p1, v0, :cond_3a

    move-object v0, p2

    .line 2433
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2434
    const/4 v3, 0x5

    if-eq v0, v3, :cond_38

    const/4 v3, 0x6

    if-eq v3, v0, :cond_38

    const/16 v3, 0x100

    if-ne v0, v3, :cond_3a

    .line 2438
    :cond_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_39

    .line 2440
    iput-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_bIsSWPlaying:Z

    .line 2441
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    const-string v3, "SDK version is below 14,don\'t run HW,change to run SW"

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2445
    :cond_39
    iput-boolean v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mbOMXAL:Z

    .line 2446
    iput-boolean v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_bIsSWPlaying:Z

    .line 2477
    :cond_3a
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_3f

    .line 2479
    const-string v0, "@@@OSMPBasePlayer"

    const-string v3, "baseplayer Suspend."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2480
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const v3, 0x3000024

    invoke-virtual {v0, v3, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    .line 2481
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 2482
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSuspendInfo:Lcom/visualon/OSMPUtils/voOSSuspendInfo;

    if-eqz v0, :cond_3c

    .line 2484
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v4, 0xe

    invoke-virtual {v0, v4, v5}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    .line 2485
    iput-boolean v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRunning:Z

    .line 2486
    if-eqz v0, :cond_3b

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_3b

    .line 2488
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2489
    const/4 v3, 0x3

    if-ne v3, v0, :cond_3d

    .line 2490
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSuspendInfo:Lcom/visualon/OSMPUtils/voOSSuspendInfo;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->setPausedStatus(Z)V

    .line 2495
    :cond_3b
    :goto_7
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSuspendInfo:Lcom/visualon/OSMPUtils/voOSSuspendInfo;

    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->setSuspendTimeStamp(J)V

    .line 2497
    :cond_3c
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_bIsSWPlaying:Z

    if-eqz v0, :cond_3e

    .line 2498
    invoke-direct {p0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->PauseInner(Z)I

    .line 2502
    :goto_8
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2504
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v3, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Suspend:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4, v7}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 2492
    :cond_3d
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSuspendInfo:Lcom/visualon/OSMPUtils/voOSSuspendInfo;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->setPausedStatus(Z)V

    goto :goto_7

    .line 2500
    :cond_3e
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->HWsuspend()I

    goto :goto_8

    .line 2510
    :cond_3f
    if-ne p1, v8, :cond_42

    .line 2512
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "baseplayer resume."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2513
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    const v1, 0x3000025

    invoke-virtual {v0, v1, v7}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetParam(ILjava/lang/Object;)I

    .line 2514
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 2515
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_bIsSWPlaying:Z

    if-eqz v0, :cond_41

    .line 2516
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSuspendInfo:Lcom/visualon/OSMPUtils/voOSSuspendInfo;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->isPaused()Z

    move-result v0

    if-nez v0, :cond_40

    .line 2517
    invoke-direct {p0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->RunInner(Z)I

    .line 2533
    :cond_40
    :goto_9
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_1

    .line 2534
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v3, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Resume:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-virtual {v0, v1, v3, v7, v7}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 2520
    :cond_41
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSuspendInfo:Lcom/visualon/OSMPUtils/voOSSuspendInfo;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->getSuspendTimeStamp()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetPos(I)I

    .line 2523
    invoke-direct {p0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->RunInner(Z)I

    .line 2524
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSuspendInfo:Lcom/visualon/OSMPUtils/voOSSuspendInfo;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2526
    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    .line 2527
    invoke-direct {p0, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->PauseInner(Z)I

    .line 2529
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetPos(I)I

    goto :goto_9

    .line 2539
    :cond_42
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_0
.end method

.method public SetPos(I)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1618
    invoke-virtual {p0, p1, v0, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetPosTolerance(III)I

    move-result v0

    return v0
.end method

.method public SetPosTolerance(III)I
    .locals 6

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Seek:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1640
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetPosToleranceInner(IIIZF)I

    move-result v0

    return v0
.end method

.method public SetScreenBrightness(I)I
    .locals 6

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3292
    int-to-double v2, p1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 3293
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 3294
    const v0, 0x3dcccccd    # 0.1f

    .line 3296
    :cond_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3297
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3300
    int-to-float v0, p1

    float-to-double v0, v0

    const-wide v2, 0x4004666666666666L    # 2.55

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 3302
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3303
    const/4 v0, 0x0

    .line 3304
    :goto_0
    return v0

    :cond_1
    const v0, -0x7ffffff2

    goto :goto_0
.end method

.method public SetScreenBrightnessMode(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3233
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isFroyoOrAbove()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3234
    const v0, -0x7ffffff6

    .line 3252
    :goto_0
    return v0

    .line 3238
    :cond_0
    if-nez p1, :cond_2

    .line 3245
    :cond_1
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3249
    :catch_0
    move-exception v0

    const v0, -0x7ffffff2

    goto :goto_0

    .line 3240
    :cond_2
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    move p1, v0

    goto :goto_1
.end method

.method public SetSurface(Landroid/view/Surface;)V
    .locals 3

    .prologue
    .line 697
    const-string v0, "@@@OSMPBasePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSurface is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_0

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSetViewFlag:Z

    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    .line 702
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSurface:Landroid/view/Surface;

    .line 703
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetSurface(Landroid/view/Surface;)V

    .line 705
    :cond_0
    return-void
.end method

.method public SetSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 717
    const-string v0, "@@@OSMPBasePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSurfaceHolder is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_0

    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSetViewFlag:Z

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    .line 722
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 724
    :cond_0
    return-void
.end method

.method public SetView(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 675
    const-string v0, "@@@OSMPBasePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDisplay surface is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v2, -0xf0ffff4

    invoke-virtual {v1, v2, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_1

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSetViewFlag:Z

    .line 681
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    .line 682
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetView(Landroid/view/View;)I

    move-result v0

    .line 685
    :goto_0
    return v0

    :cond_1
    const v0, -0x7ffffeff

    goto :goto_0
.end method

.method public SetVolume(FF)I
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_0

    .line 1749
    const v0, -0x7ffffff7

    .line 1751
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetVolume(FF)I

    move-result v0

    goto :goto_0
.end method

.method public Stop()I
    .locals 1

    .prologue
    .line 1514
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->StopInner(Z)I

    move-result v0

    return v0
.end method

.method public Uninit()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 626
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "voOSBasePlayer Uninit -"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    iput-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mContext:Landroid/content/Context;

    .line 628
    iput-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    .line 629
    iput-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRequestListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;

    .line 630
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 633
    :cond_0
    iput v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->openedTimes:I

    .line 634
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->closeTimer()Z

    .line 636
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voID3Container;->reset()V

    .line 637
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->Uninit()I

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPDataSource/voOSDataSource;->setEventListener(Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;)V

    .line 641
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPDataSource/voOSDataSource;->setRequestListener(Lcom/visualon/OSMPDataSource/voOSDataSource$onRequestListener;)V

    .line 642
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Uninit()I

    .line 643
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    invoke-virtual {v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->Destroy()I

    .line 646
    :cond_2
    iput-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    .line 647
    iput-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSource:Lcom/visualon/OSMPDataSource/voOSDataSource;

    .line 648
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_3

    .line 649
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Uninit()I

    .line 651
    :cond_3
    iput-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    .line 652
    iput-boolean v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalyticsCollectorInited:Z

    .line 654
    iput-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mParamDict:Landroid/util/SparseArray;

    .line 655
    iput-boolean v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSetViewFlag:Z

    .line 656
    iput-boolean v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSetDisplaySizeFlag:Z

    .line 657
    iput-boolean v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->subtitleFileNameSet:Z

    .line 658
    iput-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mSuspendInfo:Lcom/visualon/OSMPUtils/voOSSuspendInfo;

    .line 659
    iput-boolean v4, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mBlockCC:Z

    .line 661
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "voOSBasePlayer Uninit +"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    return v4
.end method

.method public enforceSoftwareVideoScaling(Z)I
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_0

    .line 1782
    const v0, -0x7ffffff7

    .line 1784
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->enforceSoftwareVideoScaling(Z)I

    move-result v0

    goto :goto_0
.end method

.method public onDataSourceEvent(IIILjava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2862
    invoke-direct {p0, p1, p2, p3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->reportAnalyticsEvent(III)V

    .line 2864
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->checkEventVOOSMP_CB_Metadata_Arrive(IIILjava/lang/Object;)V

    .line 2868
    const v0, 0x2000010

    if-ne v0, p1, :cond_0

    .line 2870
    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->showSubtitle()V

    .line 2875
    :cond_0
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "onDataSourceEvent ID = %s, nParam1 = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2876
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2877
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2879
    return v5
.end method

.method public onEvent(IIILjava/lang/Object;)I
    .locals 8

    .prologue
    const/4 v0, 0x4

    const/4 v2, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2672
    invoke-direct {p0, p1, p2, p3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->reportAnalyticsEvent(III)V

    .line 2675
    sparse-switch p1, :sswitch_data_0

    .line 2807
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->checkEventVOOSMP_CB_Metadata_Arrive(IIILjava/lang/Object;)V

    .line 2810
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "onEvent ID = %s, nParam1 = %d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2811
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2812
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2814
    return v5

    .line 2678
    :sswitch_0
    new-array v0, v0, [I

    .line 2679
    iget v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoWidth:I

    aput v1, v0, v5

    .line 2680
    iget v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoHeight:I

    aput v1, v0, v6

    .line 2682
    iput p2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoWidth:I

    .line 2683
    iput p3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoHeight:I

    .line 2685
    iget v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoWidth:I

    aput v1, v0, v7

    .line 2686
    iget v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nVideoHeight:I

    aput v1, v0, v2

    .line 2688
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v1, :cond_0

    .line 2690
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v3, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Resolution_Changed:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0

    .line 2697
    :sswitch_1
    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->showSubtitle()V

    .line 2699
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_0

    .line 2701
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_Render:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0

    .line 2707
    :sswitch_2
    packed-switch p2, :pswitch_data_0

    .line 2739
    if-lez p2, :cond_1

    .line 2740
    shr-int/lit8 v0, p2, 0x10

    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nWidthOfAspectRatio:I

    .line 2741
    const v0, 0xffff

    and-int/2addr v0, p2

    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nHeightOfAspectRatio:I

    .line 2748
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v2, -0xf0ffff9

    const v3, 0x3faaaaab

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v5, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2715
    :pswitch_1
    iput v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nWidthOfAspectRatio:I

    .line 2716
    iput v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nHeightOfAspectRatio:I

    goto :goto_1

    .line 2721
    :pswitch_2
    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nWidthOfAspectRatio:I

    .line 2722
    iput v2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nHeightOfAspectRatio:I

    goto :goto_1

    .line 2727
    :pswitch_3
    const/16 v0, 0x10

    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nWidthOfAspectRatio:I

    .line 2728
    const/16 v0, 0x9

    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nHeightOfAspectRatio:I

    goto :goto_1

    .line 2733
    :pswitch_4
    iput v7, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nWidthOfAspectRatio:I

    .line 2734
    iput v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nHeightOfAspectRatio:I

    goto :goto_1

    .line 2757
    :sswitch_3
    iput p2, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mTrackType:I

    .line 2758
    iget v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mTrackType:I

    if-ne v0, v7, :cond_2

    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->metadata_Arrive:Z

    if-eqz v0, :cond_2

    .line 2760
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v1, -0xf0ffff8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v5, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2761
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2763
    iput-boolean v5, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->metadata_Arrive:Z

    .line 2765
    :cond_2
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "VOOSMP_CB_MediaTypeChanged type is %d. VOOSMP_CB_Metadata_Arrive is %b"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mTrackType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-boolean v3, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->metadata_Arrive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2793
    :sswitch_4
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    if-eqz v0, :cond_0

    .line 2795
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mAnalytics:Lcom/visualon/OSMPBasePlayer/voOSAnalytics;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_SeekComplete:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 2802
    :sswitch_5
    iput-boolean v6, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mPlayingCompleted:Z

    goto/16 :goto_0

    .line 2675
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0xd -> :sswitch_4
        0xe -> :sswitch_2
        0xf -> :sswitch_0
        0x12 -> :sswitch_3
        0x16 -> :sswitch_1
    .end sparse-switch

    .line 2707
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onGetPos()J
    .locals 2

    .prologue
    .line 3513
    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public onRequest(IIILjava/lang/Object;)I
    .locals 1

    .prologue
    .line 2818
    const v0, 0x2000020

    if-ne p1, v0, :cond_0

    .line 2819
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mID3Container:Lcom/visualon/OSMPUtils/voID3Container;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPUtils/voID3Container;->onRequest(IIILjava/lang/Object;)I

    move-result v0

    .line 2830
    :goto_0
    return v0

    .line 2822
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRequestListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;

    if-eqz v0, :cond_1

    .line 2824
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRequestListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;->onRequest(IIILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 2830
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSendID3Event(IIILjava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3501
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRequestListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;

    if-eqz v1, :cond_0

    .line 3503
    const-string v1, "@@@OSMPBasePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSendID3Event , param1 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , nParam2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3504
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRequestListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;->onRequest(IIILjava/lang/Object;)I

    move-result v0

    .line 3507
    :goto_0
    return v0

    .line 3506
    :cond_0
    const-string v1, "@@@OSMPBasePlayer"

    const-string v2, "mRequestListener is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setEventListener(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;

    .line 272
    return-void
.end method

.method public setRequestListener(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mRequestListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;

    .line 310
    return-void
.end method

.method public setSmoothBAWhiteListFile(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-nez v0, :cond_0

    .line 1765
    const v0, -0x7ffffff7

    .line 1767
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setSmoothBAWhiteListFile(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public showSubtitle()V
    .locals 2

    .prologue
    .line 2624
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    .line 2625
    if-nez v1, :cond_0

    .line 2628
    :goto_0
    return-void

    .line 2627
    :cond_0
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mBlockCC:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->isSubtitleDisplayEnable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/visualon/widget/ClosedCaptionManager;->show(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateVideoAspectRatio(II)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 759
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    if-eqz v0, :cond_1

    .line 761
    new-array v0, v3, [I

    .line 762
    aput p1, v0, v4

    .line 763
    aput p2, v0, v5

    .line 764
    invoke-direct {p0, p1, p2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetAspectWidthHeight(II[I)F

    move-result v0

    .line 765
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 767
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 769
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    const v2, -0xf0ffff9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v4, v4, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 770
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEventHandler:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 771
    const-string v0, "@@@OSMPBasePlayer"

    const-string v1, "setXYRate updateVideoAspectRatio a1= %d; a2=%d "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nAspectRationType:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->mEngine:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->m_nAspectRationType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setVideoAspectRatio(I)V

    .line 777
    :cond_1
    return-void
.end method
