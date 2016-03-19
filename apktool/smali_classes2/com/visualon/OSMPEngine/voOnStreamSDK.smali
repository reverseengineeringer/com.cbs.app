.class public final Lcom/visualon/OSMPEngine/voOnStreamSDK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;
.implements Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPEngine/voOnStreamSDK$6;,
        Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;,
        Lcom/visualon/OSMPEngine/voOnStreamSDK$SurfaceTextureListenerImpl;,
        Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;,
        Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;
    }
.end annotation


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "voOSEng"

.field private static final TAG:Ljava/lang/String; = "@@@voOnStreamSDK.java"

.field private static mIsKeepLastFrameEnabled:Z = false

.field private static mJNILoaded:Z = false

.field private static mLastAspectRatio:I = 0x0

.field private static m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck; = null

.field private static final messageAddSecondView:I = -0xf0ffff8

.field private static final messageCCEnable:I = -0xf0ffffb

.field private static final messageCCSetView:I = -0xf0ffff3

.field private static final messageCCSetXYRate:I = -0xf0ffff9

.field private static final messageCleanLicDisplay:I = -0xf0ffff4

.field private static final messageCustomTag:I = -0xf0ffffc

.field private static final messageDestroyCC_UI:I = -0xf0ffffe

.field private static final messageDispatchZoomMode:I = -0xf0ffff2

.field private static final messageSetDisplaySize:I = -0xf0ffff5

.field private static final messageSetSurface:I = -0xf0ffff1

.field private static final messageSetSurfaceHolder:I = -0xf0ffff6

.field private static final messageSetView:I = -0xf0ffff7

.field private static final messageShowCC_UI:I = -0xf0ffffd


# instance fields
.field private ccMan:Lcom/visualon/widget/ClosedCaptionManager;

.field private closeCaptionOutput:Z

.field private enableInnerCloseCaption:Z

.field private mAnalyticsDisplayView:Landroid/view/View;

.field private mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;

.field private mAspectRatio:I

.field private mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mChannels:I

.field private mContext:Landroid/content/Context;

.field private mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

.field private mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

.field private mEventFinish:Z

.field private mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

.field private mEventListener:Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;

.field private mEventMsg:I

.field private mEventParam1:I

.field private mEventParam2:I

.field private mFixedSizeHeightCurrent:I

.field private mFixedSizeHeightThreshold:I

.field private mFixedSizeWidthCurrent:I

.field private mFixedSizeWidthThreshold:I

.field private mGSurface1:J

.field private mGSurface2:J

.field private mHDMICheckState:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

.field private mHeightVideo:I

.field private mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

.field private mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

.field private mNativeContext:J

.field private mOldHeightVideo:I

.field private mOldSurface1:J

.field private mOldSurface2:J

.field private mOldWidthVideo:I

.field private mOriginalHeightVideo:I

.field private mOriginalWidthVideo:I

.field private mOverWritedView:Landroid/view/View;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mSampleBit:I

.field private mSampleRate:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSecondView:Landroid/view/View;

.field private mSubtitleInEngine:Z

.field private mSubtitleSampler:Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceChangedCount:I

.field private mSurfaceChangedFinish:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTextureListener:Lcom/visualon/OSMPEngine/voOnStreamSDK$SurfaceTextureListenerImpl;

.field private mThirdLibOp:I

.field mThreadEvent:Ljava/lang/Thread;

.field private mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

.field private mView:Landroid/view/View;

.field private mWhiteListDeviceDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/visualon/OSMPUtils/voOSDeviceData;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthVideo:I

.field private mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

.field private mZoomMode:I

.field private m_nAspectRationType:I

.field private mbAdaptivePlayback:Z

.field private mbEnforceSWVideoScaling:Z

.field private mbIOMX:Z

.field private mbKeepAspectRatio:Z

.field private mbOMXAL:Z

.field private mbVideoRenderStopping:Z

.field private mfAspectRatio:F

.field private mfAspectRatioAppSet:F

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    .line 209
    sput-boolean v1, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mJNILoaded:Z

    .line 1935
    sput v1, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLastAspectRatio:I

    .line 1936
    sput-boolean v1, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mIsKeepLastFrameEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldWidthVideo:I

    .line 150
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldHeightVideo:I

    .line 158
    const/4 v0, 0x6

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_nAspectRationType:I

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    .line 178
    iput v6, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    .line 183
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 184
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 186
    iput-boolean v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->closeCaptionOutput:Z

    .line 187
    iput-boolean v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->enableInnerCloseCaption:Z

    .line 188
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timer:Ljava/util/Timer;

    .line 189
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timerTask:Ljava/util/TimerTask;

    .line 190
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    .line 191
    iput-boolean v6, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleInEngine:Z

    .line 212
    iput v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mFixedSizeWidthThreshold:I

    .line 213
    iput v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mFixedSizeHeightThreshold:I

    .line 214
    iput v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mFixedSizeWidthCurrent:I

    .line 215
    iput v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mFixedSizeHeightCurrent:I

    .line 569
    new-instance v0, Lcom/visualon/OSMPEngine/voOnStreamSDK$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$1;-><init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHDMICheckState:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    .line 656
    new-instance v0, Lcom/visualon/OSMPEngine/voOnStreamSDK$2;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$2;-><init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    .line 713
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleSampler:Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;

    .line 724
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    new-instance v1, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;-><init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    .line 726
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Looper.myLooper()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    :goto_0
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    .line 735
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    .line 737
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    .line 738
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 739
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    .line 740
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;

    .line 741
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    .line 742
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsDisplayView:Landroid/view/View;

    .line 743
    iput-wide v8, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    .line 744
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventListener:Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;

    .line 745
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    .line 746
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    .line 747
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    .line 748
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalWidthVideo:I

    .line 749
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalHeightVideo:I

    .line 750
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldWidthVideo:I

    .line 751
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldHeightVideo:I

    .line 752
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    .line 753
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    .line 754
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    .line 756
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    .line 757
    iput-boolean v6, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbKeepAspectRatio:Z

    .line 759
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSampleRate:I

    .line 760
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mChannels:I

    .line 761
    const/16 v0, 0x10

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSampleBit:I

    .line 763
    iput v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventMsg:I

    .line 764
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventParam1:I

    .line 765
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventParam2:I

    .line 767
    iput-boolean v6, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceChangedFinish:Z

    .line 768
    iput-boolean v6, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventFinish:Z

    .line 769
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceChangedCount:I

    .line 770
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mThirdLibOp:I

    .line 771
    iput-boolean v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbOMXAL:Z

    .line 772
    iput-boolean v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbIOMX:Z

    .line 773
    iput v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    .line 774
    iput-boolean v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbVideoRenderStopping:Z

    .line 775
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    .line 776
    iput-boolean v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbAdaptivePlayback:Z

    .line 777
    iput-boolean v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbEnforceSWVideoScaling:Z

    .line 778
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;

    .line 779
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    .line 780
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWhiteListDeviceDatas:Ljava/util/List;

    .line 782
    iput-wide v8, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mGSurface1:J

    .line 783
    iput-wide v8, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldSurface1:J

    .line 784
    iput-wide v8, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mGSurface2:J

    .line 785
    iput-wide v8, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldSurface2:J

    .line 786
    return-void

    .line 727
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 728
    new-instance v1, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;-><init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    .line 729
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "getMainLooper()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 731
    :cond_1
    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    goto :goto_0
.end method

.method private RequestCallBack(IJJLjava/lang/Object;)I
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const v0, -0x7ffffff2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2411
    const/16 v2, 0x27

    if-ne p1, v2, :cond_5

    .line 2414
    sget-object v2, Lcom/visualon/OSMPEngine/voOnStreamSDK$6;->$SwitchMap$com$visualon$OSMPUtils$voOSType$VOOSMP_OUTPUT_CONTROL_TYPE:[I

    long-to-int v3, p2

    invoke-static {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    move v1, v0

    .line 2451
    :cond_0
    :goto_1
    return v1

    .line 2417
    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    .line 2419
    new-instance v2, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;-><init>(Landroid/content/Context;)V

    .line 2420
    invoke-virtual {v2}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->isHDCPForHDMI()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2422
    :cond_1
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "VOOSMP_CB_Query_Output_Control_Capacity, param1 is %d, param2 is %d. return is %d."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2425
    :cond_2
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "VOOSMP_CB_Query_Output_Control_Capacity, device OS version %s is too old, don\'t support check if support HDCP and get SecureFlag."

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2430
    :pswitch_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_4

    .line 2432
    new-instance v2, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;-><init>(Landroid/content/Context;)V

    .line 2433
    invoke-virtual {v2}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->isHDCPForMiracast()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 2435
    :cond_3
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "VOOSMP_CB_Query_Output_Control_Capacity, param1 is %d, param2 is %d. return is %d."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2438
    :cond_4
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "VOOSMP_CB_Query_Output_Control_Capacity, device OS version %s is too old, don\'t support check if support HDCP and get SecureFlag."

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2446
    :cond_5
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    goto/16 :goto_1

    .line 2414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/visualon/OSMPEngine/voOnStreamSDK;)J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPEngine/voOnStreamSDK;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setCommonCCParser(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleInEngine:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->closeCaptionOutput:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleSampler:Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->enableInnerCloseCaption:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/visualon/OSMPEngine/voOnStreamSDK;I)I
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalWidthVideo:I

    return p1
.end method

.method static synthetic access$1602(Lcom/visualon/OSMPEngine/voOnStreamSDK;I)I
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalHeightVideo:I

    return p1
.end method

.method static synthetic access$1700(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    return v0
.end method

.method static synthetic access$1702(Lcom/visualon/OSMPEngine/voOnStreamSDK;I)I
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    return p1
.end method

.method static synthetic access$1802(I)I
    .locals 0

    .prologue
    .line 117
    sput p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLastAspectRatio:I

    return p0
.end method

.method static synthetic access$1900(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setFixedSizeInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->updateVideoAspectRatioInside()V

    return-void
.end method

.method static synthetic access$202(Lcom/visualon/OSMPEngine/voOnStreamSDK;Lcom/visualon/widget/ClosedCaptionManager;)Lcom/visualon/widget/ClosedCaptionManager;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventListener:Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/visualon/OSMPEngine/voOnStreamSDK;Z)Z
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventFinish:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsDisplayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsDisplayView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPEngine/voAnalyticsRender;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/visualon/OSMPEngine/voOnStreamSDK;Lcom/visualon/OSMPEngine/voAnalyticsRender;)Lcom/visualon/OSMPEngine/voAnalyticsRender;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;

    return-object p1
.end method

.method static synthetic access$300(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->addSecondTextureView()V

    return-void
.end method

.method static synthetic access$3000(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$3100(Lcom/visualon/OSMPEngine/voOnStreamSDK;)I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$3200(Lcom/visualon/OSMPEngine/voOnStreamSDK;II)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setAnalyticsViewSize(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/visualon/OSMPEngine/voOnStreamSDK;JJLjava/lang/Object;)J
    .locals 3

    .prologue
    .line 117
    invoke-direct/range {p0 .. p5}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3400()Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPRender/voAudioRender;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$400(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setViewInternal(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setSurfaceInternal(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$700(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->refreshDisplaySizeInternal()V

    return-void
.end method

.method static synthetic access$800(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/OSMPUtils/voLicenseDisplayRender;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    return-object v0
.end method

.method static synthetic access$802(Lcom/visualon/OSMPEngine/voOnStreamSDK;Lcom/visualon/OSMPUtils/voLicenseDisplayRender;)Lcom/visualon/OSMPUtils/voLicenseDisplayRender;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    return-object p1
.end method

.method static synthetic access$900(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->dispatchZoomModeInMainThread()V

    return-void
.end method

.method private addSecondTextureView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3088
    const-string v0, "@@@voOnStreamSDK.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addSecondTextureView step 1 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3089
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3092
    :try_start_0
    const-string v0, "@@@voOnStreamSDK.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addSecondTextureView step 2 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3093
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3095
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3096
    new-instance v2, Lcom/visualon/OSMPUtils/voTextureView;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/visualon/OSMPUtils/voTextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    .line 3098
    const-string v2, "@@@voOnStreamSDK.java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addSecondTextureView step 3 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3100
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3102
    const-string v0, "@@@voOnStreamSDK.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addSecondTextureView step 4 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3103
    new-instance v0, Lcom/visualon/OSMPEngine/voOnStreamSDK$SurfaceTextureListenerImpl;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$SurfaceTextureListenerImpl;-><init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mTextureListener:Lcom/visualon/OSMPEngine/voOnStreamSDK$SurfaceTextureListenerImpl;

    .line 3104
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    check-cast v0, Lcom/visualon/OSMPUtils/voTextureView;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mTextureListener:Lcom/visualon/OSMPEngine/voOnStreamSDK$SurfaceTextureListenerImpl;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 3105
    const-string v0, "@@@voOnStreamSDK.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addSecondTextureView step 5 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3106
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3107
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-eqz v0, :cond_0

    .line 3109
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    check-cast v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voSurfaceView;->addRelevanceTextureView(Landroid/view/View;)V

    .line 3111
    :cond_0
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Add second textureview, SURFACE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3117
    :cond_1
    :goto_0
    return-void

    .line 3114
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkDeviceAdaptivePlaybackSupport()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3226
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getTextureView()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3232
    :cond_0
    :goto_0
    return-void

    .line 3228
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getTextureView()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3229
    iput-boolean v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbAdaptivePlayback:Z

    .line 3230
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Current device doesn\'t support textureview."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private checkOrientationAndScreenSize()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    .line 3074
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    if-ge v0, v1, :cond_0

    .line 3077
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    .line 3078
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    iput v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    .line 3079
    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    .line 3080
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Exchange screen width and height, new width is %d, new height is %d ."

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3084
    :cond_0
    return-void
.end method

.method private checkRectValid()Z
    .locals 2

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v0

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v0

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->inBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized closeTimer()Z
    .locals 1

    .prologue
    .line 2628
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 2629
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2630
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timerTask:Ljava/util/TimerTask;

    .line 2631
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setSubtitleSampler(Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;)V

    .line 2632
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 2633
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2634
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2635
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2628
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createCloseCaptionUI()V
    .locals 2

    .prologue
    .line 1424
    iget-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->enableInnerCloseCaption:Z

    if-nez v0, :cond_1

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    if-nez v0, :cond_2

    .line 1430
    new-instance v0, Lcom/visualon/widget/ClosedCaptionManager;

    invoke-direct {v0}, Lcom/visualon/widget/ClosedCaptionManager;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    .line 1432
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->setActivity(Landroid/content/Context;)V

    .line 1435
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->setSurfaceView(Landroid/view/View;)V

    .line 1437
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->startTimer()Z

    .line 1438
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->show(Z)V

    goto :goto_0
.end method

.method private createTimerTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 2638
    new-instance v0, Lcom/visualon/OSMPEngine/voOnStreamSDK$4;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$4;-><init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timerTask:Ljava/util/TimerTask;

    .line 2645
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timerTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method private dispatchZoomMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const v5, -0xf0ffff9

    const/4 v4, 0x0

    .line 2972
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3027
    :cond_0
    :goto_0
    return-void

    .line 2974
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-eqz v0, :cond_2

    .line 2976
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    check-cast v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voSurfaceView;->voSetX(F)V

    .line 2977
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    check-cast v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPUtils/voSurfaceView;->voSetY(F)V

    .line 2978
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2980
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 2981
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2984
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->checkOrientationAndScreenSize()V

    .line 2985
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->resolveAspectRatio()V

    .line 2986
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2988
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->panscan()V

    .line 3011
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    if-eqz v0, :cond_3

    .line 3013
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_nAspectRationType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    .line 3015
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v5, v4, v4, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3021
    :goto_2
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3023
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    if-eqz v0, :cond_0

    .line 3024
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3025
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->onScreenOrVideoSizeChanged(IIII)V

    goto :goto_0

    .line 2990
    :cond_4
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 2992
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->zoomin()V

    goto :goto_1

    .line 2994
    :cond_5
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 2996
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->fitWindow()V

    goto :goto_1

    .line 2998
    :cond_6
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 3000
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->original()V

    goto :goto_1

    .line 3002
    :cond_7
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    if-eq v0, v2, :cond_8

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbKeepAspectRatio:Z

    if-eqz v0, :cond_9

    .line 3004
    :cond_8
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->letterboxing()V

    goto :goto_1

    .line 3008
    :cond_9
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "not supported zoom mode:%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3019
    :cond_a
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v5, v4, v4, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_2
.end method

.method private dispatchZoomModeInMainThread()V
    .locals 2

    .prologue
    .line 2958
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2960
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->dispatchZoomMode()V

    .line 2966
    :goto_0
    return-void

    .line 2964
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const v1, -0xf0ffff2

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private fitWindow()V
    .locals 2

    .prologue
    .line 2871
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-nez v0, :cond_0

    .line 2873
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->restoreVideoSize()V

    .line 2875
    :cond_0
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->updateViewSize(II)V

    .line 2876
    return-void
.end method

.method private getCurrentDeviceDatas()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3156
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    if-eqz v0, :cond_0

    .line 3184
    :goto_0
    return-void

    .line 3158
    :cond_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3159
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3160
    const-string v1, ""

    .line 3163
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/system/bin/getprop"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ro.board.platform"

    aput-object v6, v4, v5

    invoke-direct {v0, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 3164
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3165
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3167
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 3168
    goto :goto_1

    .line 3170
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 3171
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3179
    :goto_2
    new-instance v1, Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-direct {v1}, Lcom/visualon/OSMPUtils/voOSDeviceData;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    .line 3180
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setModel(Ljava/lang/String;)V

    .line 3181
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v1, v3}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setVersion(Ljava/lang/String;)V

    .line 3182
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setPlatform(Ljava/lang/String;)V

    .line 3183
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v4, "Current device info, model is %s, relase is %s, platform is %s."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v3, v5, v8

    aput-object v0, v5, v9

    invoke-static {v1, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3173
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 3176
    :goto_3
    const-string v4, "@@@voOnStreamSDK.java"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 3173
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private static getIOMXFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1444
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1445
    const-string v1, "2.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1446
    const-string v0, "voIOMXDec_fry"

    .line 1464
    :goto_0
    return-object v0

    .line 1447
    :cond_0
    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1448
    const-string v0, "voIOMXDec_gb"

    goto :goto_0

    .line 1449
    :cond_1
    const-string v1, "3."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1450
    const-string v0, "voIOMXDec_hc"

    goto :goto_0

    .line 1451
    :cond_2
    const-string v1, "4."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1452
    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "4.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "4.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1453
    :cond_3
    const-string v0, "voIOMXDec_ics"

    goto :goto_0

    .line 1454
    :cond_4
    const-string v1, "4.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1455
    const-string v0, "voIOMXDec_jb"

    goto :goto_0

    .line 1456
    :cond_5
    const-string v1, "4.4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1457
    const-string v0, "voIOMXDec_kk"

    goto :goto_0

    .line 1458
    :cond_6
    const-string v0, "voIOMXDec_kk"

    goto :goto_0

    .line 1460
    :cond_7
    const-string v1, "5."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1461
    const-string v0, "voIOMXDec_L"

    goto :goto_0

    .line 1462
    :cond_8
    const-string v1, "6."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1463
    const-string v0, "voIOMXDec_M"

    goto :goto_0

    .line 1464
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inBoundary()Z
    .locals 2

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v0

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v0

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v0

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v0

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceHardwareSupport()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3207
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3211
    :cond_0
    :goto_0
    return v0

    .line 3209
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3210
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private letterboxing()V
    .locals 6

    .prologue
    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    .line 2827
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    if-eqz v0, :cond_0

    .line 2829
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->restoreVideoSize()V

    .line 2833
    :cond_0
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    .line 2834
    iget-boolean v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbEnforceSWVideoScaling:Z

    if-eqz v2, :cond_1

    .line 2835
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalWidthVideo:I

    .line 2836
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalHeightVideo:I

    .line 2838
    :cond_1
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_nAspectRationType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    .line 2840
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 2842
    int-to-float v1, v0

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 2856
    :cond_2
    :goto_0
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_5

    .line 2858
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    .line 2859
    mul-int/2addr v1, v2

    div-int v0, v1, v0

    move v1, v0

    move v0, v2

    .line 2866
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->updateViewSize(II)V

    .line 2867
    return-void

    .line 2847
    :cond_3
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    .line 2849
    int-to-float v1, v0

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    .line 2851
    :cond_4
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 2853
    int-to-float v1, v0

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    .line 2863
    :cond_5
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    .line 2864
    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private static loadJNI(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 3335
    sget-boolean v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mJNILoaded:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mJNILoaded:Z

    .line 3340
    :goto_0
    return v0

    .line 3336
    :cond_0
    invoke-static {p0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadOneLibInPath(Ljava/lang/String;)Z

    move-result v0

    .line 3337
    sput-boolean v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mJNILoaded:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mJNILoaded:Z

    goto :goto_0

    .line 3338
    :cond_1
    const-string v0, "voOSEng"

    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3339
    sput-boolean v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mJNILoaded:Z

    if-nez v0, :cond_2

    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3340
    :cond_2
    sget-boolean v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mJNILoaded:Z

    goto :goto_0
.end method

.method private matchCurrentDeviceToWhiteList()V
    .locals 4

    .prologue
    .line 3187
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWhiteListDeviceDatas:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3205
    :cond_0
    :goto_0
    return-void

    .line 3189
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getTextureView()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3191
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getModel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3193
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWhiteListDeviceDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3195
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWhiteListDeviceDatas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSDeviceData;

    .line 3196
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3200
    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    goto :goto_0

    .line 3193
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private native nativeClose(J)J
.end method

.method private native nativeCreate(Ljava/lang/Object;Ljava/lang/String;JJJ)J
.end method

.method private native nativeDestroy(J)J
.end method

.method private native nativeGetAudioData(J[B)J
.end method

.method private native nativeGetParam(JJ)Ljava/lang/Object;
.end method

.method private native nativeGetParam(JJLjava/lang/Object;)Ljava/lang/Object;
.end method

.method private native nativeGetPos(J)J
.end method

.method private native nativeGetSEITimingInfo(JIJ)Ljava/lang/Object;
.end method

.method private native nativeGetSubTitleSample(JI)Ljava/lang/Object;
.end method

.method private native nativeGetSubtitleLanguageCount(J)I
.end method

.method private native nativeGetSubtitleLanguageInfo(JI)Ljava/lang/Object;
.end method

.method private native nativeGetVideoData(J[B)J
.end method

.method private native nativeOnLog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeOpen(JLjava/lang/Object;J)J
.end method

.method private native nativePause(J)J
.end method

.method private native nativeRun(J)J
.end method

.method private native nativeSelectSubtitleLanguage(JI)I
.end method

.method private native nativeSetParam(JJLjava/lang/Object;)J
.end method

.method private native nativeSetPos(JJ)J
.end method

.method private native nativeSetPosTolerance(JJII)J
.end method

.method private native nativeSetSurface(J)J
.end method

.method private native nativeStop(J)J
.end method

.method private original()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2880
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    if-gt v0, v1, :cond_2

    .line 2882
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-nez v0, :cond_1

    .line 2884
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->restoreVideoSize()V

    .line 2886
    :cond_1
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalWidthVideo:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalHeightVideo:I

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->updateViewSize(II)V

    .line 2905
    :goto_0
    return-void

    .line 2890
    :cond_2
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalWidthVideo:I

    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalHeightVideo:I

    .line 2891
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalWidthVideo:I

    iget v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    if-le v1, v4, :cond_4

    .line 2893
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalWidthVideo:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    .line 2894
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalWidthVideo:I

    sub-int/2addr v0, v1

    .line 2896
    :goto_1
    iget v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalHeightVideo:I

    iget v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    if-le v4, v5, :cond_3

    .line 2898
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalHeightVideo:I

    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x2

    .line 2899
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalHeightVideo:I

    sub-int/2addr v2, v3

    .line 2901
    :goto_2
    invoke-direct {p0, v1, v3, v0, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setDrawRectToNative(IIII)V

    .line 2902
    sub-int/2addr v0, v1

    sub-int v1, v2, v3

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->updateViewSize(II)V

    goto :goto_0

    :cond_3
    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private osmpCallBack(IJJLjava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2357
    const/16 v2, 0x19

    if-ne p1, v2, :cond_2

    .line 2358
    if-eqz p6, :cond_1

    .line 2360
    :try_start_0
    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_EVENT_PIC_TIMING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->getValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_4

    .line 2361
    move-object/from16 v0, p6

    check-cast v0, [I

    move-object v2, v0

    invoke-static {v2}, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->parse([I)Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2363
    :try_start_1
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v4, "osmpCallBack, VOOSMP_CB_SEI_INFO, VOOSMP_FLAG_SEI_EVENT_PIC_TIMING ok"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2365
    :goto_0
    :try_start_2
    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_USER_DATA_UNREGISTERED:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->getValue()I

    move-result v2

    int-to-long v4, v2

    cmp-long v2, p2, v4

    if-nez v2, :cond_0

    .line 2366
    new-instance v4, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;

    invoke-direct {v4}, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;-><init>()V

    .line 2367
    move-object v0, v3

    check-cast v0, Landroid/os/Parcel;

    move-object v2, v0

    invoke-virtual {v4, v2}, Lcom/visualon/OSMPUtils/voOSSEIUserDataImpl;->parse(Landroid/os/Parcel;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 2369
    :try_start_3
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "osmpCallBack, VOOSMP_CB_SEI_INFO, VOOSMP_FLAG_SEI_USER_DATA_UNREGISTERED ok"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-object v3, v4

    :cond_0
    move-object/from16 p6, v3

    .line 2404
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    long-to-int v3, p2

    long-to-int v4, p4

    move-object/from16 v0, p6

    invoke-virtual {v2, p1, v3, v4, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2405
    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-virtual {v3, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2407
    return-void

    .line 2372
    :catch_0
    move-exception v2

    :goto_2
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "osmpCallBack, VOOSMP_CB_SEI_INFO arg0 is not Parcel object"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2375
    :cond_2
    const/16 v2, 0x1c

    if-ne p1, v2, :cond_3

    .line 2377
    const-string v2, "@@@voOnStreamSDK.java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "osmpCallBack, VOOSMP_CB_PCM_OUTPUT   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2378
    if-eqz p6, :cond_1

    .line 2380
    :try_start_4
    move-object/from16 v0, p6

    check-cast v0, Landroid/os/Parcel;

    move-object v2, v0

    .line 2381
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2382
    new-instance v6, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;

    invoke-direct {v6}, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;-><init>()V

    .line 2383
    invoke-virtual {v6, v2}, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->parse(Landroid/os/Parcel;)Z

    .line 2384
    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->getTimestamp()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v4, v2

    .line 2385
    :try_start_5
    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->getBufferSize()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v2

    int-to-long v2, v2

    .line 2386
    :try_start_6
    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSPCMBufferImpl;->getBuffer()[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object p6

    .line 2392
    :goto_3
    const-string v6, "@@@voOnStreamSDK.java"

    const-string v7, "osmpCallBack, VOOSMP_CB_PCM_OUTPUT ok"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide p4, v2

    move-wide p2, v4

    goto :goto_1

    .line 2389
    :catch_1
    move-exception v2

    move-object v6, v2

    move-wide v4, p2

    move-wide v2, p4

    :goto_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 2390
    const-string v6, "@@@voOnStreamSDK.java"

    const-string v7, "osmpCallBack, VOOSMP_CB_PCM_OUTPUT arg0 is not Parcel object"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 2394
    :cond_3
    const/16 v2, 0x2d

    if-ne p1, v2, :cond_1

    .line 2396
    const-string v2, "@@@voOnStreamSDK.java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "osmpCallBack, VOOSMP_CB_Analytics_Display_Data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2397
    if-eqz p6, :cond_1

    .line 2399
    check-cast p6, Landroid/os/Parcel;

    invoke-static/range {p6 .. p6}, Lcom/visualon/OSMPUtils/voOSAnalyticsDisplayImpl;->parse(Landroid/os/Parcel;)Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;

    move-result-object p6

    goto/16 :goto_1

    .line 2389
    :catch_2
    move-exception v2

    move-object v6, v2

    move-wide v2, p4

    goto :goto_4

    :catch_3
    move-exception v6

    goto :goto_4

    .line 2372
    :catch_4
    move-exception v2

    move-object/from16 p6, v3

    goto/16 :goto_2

    :catch_5
    move-exception v2

    move-object/from16 p6, v3

    goto/16 :goto_2

    :catch_6
    move-exception v2

    move-object/from16 p6, v4

    goto/16 :goto_2

    :cond_4
    move-object/from16 v3, p6

    goto/16 :goto_0
.end method

.method private panscan()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    .line 2767
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    .line 2769
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_nAspectRationType:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_1

    .line 2771
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    float-to-double v4, v1

    cmpl-double v1, v4, v6

    if-lez v1, :cond_0

    .line 2773
    int-to-float v0, v2

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2788
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    instance-of v1, v1, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-eqz v1, :cond_4

    .line 2790
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    mul-int/2addr v3, v0

    if-le v1, v3, :cond_3

    .line 2792
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    .line 2793
    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v2, v8

    int-to-double v4, v0

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 2800
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->updateViewSize(II)V

    .line 2822
    :goto_2
    return-void

    .line 2778
    :cond_1
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    float-to-double v4, v1

    cmpl-double v1, v4, v6

    if-lez v1, :cond_2

    .line 2780
    int-to-float v0, v2

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 2782
    :cond_2
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    float-to-double v4, v1

    cmpl-double v1, v4, v6

    if-lez v1, :cond_0

    .line 2784
    int-to-float v0, v2

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 2797
    :cond_3
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    .line 2798
    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    mul-int/2addr v0, v3

    int-to-double v4, v0

    mul-double/2addr v4, v8

    int-to-double v2, v2

    div-double v2, v4, v2

    double-to-int v0, v2

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_1

    .line 2804
    :cond_4
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    mul-int/2addr v2, v0

    if-le v1, v2, :cond_5

    .line 2806
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    .line 2807
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    div-int/2addr v0, v2

    .line 2808
    and-int/lit8 v0, v0, -0x4

    .line 2818
    :goto_3
    invoke-direct {p0, v10, v10, v1, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setDrawRectToNative(IIII)V

    .line 2819
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->updateViewSize(II)V

    goto :goto_2

    .line 2812
    :cond_5
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    .line 2813
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    div-int/2addr v1, v3

    .line 2814
    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    float-to-double v4, v3

    cmpl-double v3, v4, v6

    if-lez v3, :cond_6

    .line 2815
    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    mul-int/2addr v1, v3

    div-int v0, v1, v0

    .line 2816
    :goto_4
    and-int/lit8 v0, v0, -0x8

    move v1, v0

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4
.end method

.method private readWhiteListDeviceData()V
    .locals 3

    .prologue
    .line 3144
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "device.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 3145
    invoke-static {v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->readXML(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWhiteListDeviceDatas:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3153
    :goto_0
    return-void

    .line 3146
    :catch_0
    move-exception v0

    .line 3150
    const-string v1, "@@@voOnStreamSDK.java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not exist."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static readXML(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/visualon/OSMPUtils/voOSDeviceData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 3252
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 3254
    :try_start_0
    const-string v0, "UTF-8"

    invoke-interface {v4, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3255
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object v2, v1

    move v3, v0

    move-object v0, v1

    .line 3258
    :goto_0
    if-eq v3, v9, :cond_6

    .line 3259
    packed-switch v3, :pswitch_data_0

    .line 3294
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 3261
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3299
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 3301
    :goto_2
    return-object v0

    .line 3265
    :pswitch_2
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3266
    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3267
    new-instance v2, Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-direct {v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;-><init>()V

    goto :goto_1

    .line 3269
    :cond_1
    if-eqz v2, :cond_0

    .line 3270
    const-string v5, "model"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3271
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setModel(Ljava/lang/String;)V

    goto :goto_1

    .line 3272
    :cond_2
    const-string v5, "release"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3273
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setVersion(Ljava/lang/String;)V

    goto :goto_1

    .line 3274
    :cond_3
    const-string v5, "platform"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3275
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setPlatform(Ljava/lang/String;)V

    goto :goto_1

    .line 3276
    :cond_4
    const-string v5, "codecsolution"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3277
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setRenderType(Ljava/lang/String;)V

    goto :goto_1

    .line 3278
    :cond_5
    const-string v5, "textureview"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3279
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPUtils/voOSDeviceData;->setTextureView(Ljava/lang/String;)V

    goto :goto_1

    .line 3285
    :pswitch_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 3286
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3287
    const-string v3, "@@@voOnStreamSDK.java"

    const-string v5, "Parse Device Data, model %s, platform is %s, release is %s, rendertype is %s, textureview is %s."

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getModel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getPlatform()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getVersion()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getTextureView()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v3, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    .line 3290
    goto/16 :goto_1

    .line 3296
    :cond_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 3259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshDisplaySizeInternal()V
    .locals 2

    .prologue
    .line 2606
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    if-eqz v0, :cond_0

    .line 2608
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setFixedSizeInternal()V

    .line 2609
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->dispatchZoomModeInMainThread()V

    .line 2610
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setAnalyticsViewSize(II)V

    .line 2612
    :cond_0
    return-void
.end method

.method private resolveAspectRatio()V
    .locals 6

    .prologue
    const v5, 0xffff

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3031
    const-string v0, "@@@voOnStreamSDK.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resolveAspectRatio: input "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3032
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    packed-switch v0, :pswitch_data_0

    .line 3059
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_0

    .line 3060
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "VOOSMP_RATIO_DEFAULT-1"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3061
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    shr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    and-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    .line 3068
    :goto_0
    const-string v0, "@@@voOnStreamSDK.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resolveAspectRatio: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; isKeepLastFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mIsKeepLastFrameEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3069
    return-void

    .line 3035
    :pswitch_0
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "VOOSMP_RATIO_00"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3036
    iput v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    goto :goto_0

    .line 3039
    :pswitch_1
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "VOOSMP_RATIO_11"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3040
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    goto :goto_0

    .line 3043
    :pswitch_2
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "VOOSMP_RATIO_43"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3044
    const v0, 0x3faaaaab

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    goto :goto_0

    .line 3047
    :pswitch_3
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "VOOSMP_RATIO_169"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3048
    const v0, 0x3fe38e39

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    goto :goto_0

    .line 3051
    :pswitch_4
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "VOOSMP_RATIO_21"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3052
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    goto :goto_0

    .line 3055
    :pswitch_5
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "VOOSMP_RATIO_2331"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3056
    const v0, 0x40151eb8    # 2.33f

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    goto/16 :goto_0

    .line 3063
    :cond_0
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "VOOSMP_RATIO_DEFAULT-2"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3064
    iput v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    goto/16 :goto_0

    .line 3032
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private restoreVideoSize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2758
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-nez v0, :cond_0

    .line 2760
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setDrawRectToNative(IIII)V

    .line 2762
    :cond_0
    return-void
.end method

.method private sendSubtitleMessage(IIILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3328
    return-void
.end method

.method private setAnalyticsViewSize(II)V
    .locals 3

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsDisplayView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3139
    :cond_0
    :goto_0
    return-void

    .line 3125
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsDisplayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3126
    if-le p1, p2, :cond_2

    .line 3128
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;

    invoke-virtual {v1, p1, p2}, Lcom/visualon/OSMPEngine/voAnalyticsRender;->setViewSize(II)V

    .line 3129
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3130
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    .line 3134
    :cond_2
    mul-int v1, p1, p1

    div-int/2addr v1, p2

    .line 3135
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;

    invoke-virtual {v2, p1, v1}, Lcom/visualon/OSMPEngine/voAnalyticsRender;->setViewSize(II)V

    .line 3136
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3137
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private setCommonCCParser(Ljava/lang/Object;)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1968
    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 1970
    iget-wide v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const-wide/16 v4, 0x2a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    .line 1971
    iput-boolean v8, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->enableInnerCloseCaption:Z

    .line 1972
    iget-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleInEngine:Z

    if-eqz v0, :cond_0

    .line 1974
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->createCloseCaptionUI()V

    .line 1975
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    invoke-virtual {v0}, Lcom/visualon/widget/ClosedCaptionManager;->clearWidget()V

    .line 1990
    :cond_0
    :goto_0
    return v7

    .line 1983
    :cond_1
    iput-boolean v7, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->enableInnerCloseCaption:Z

    .line 1984
    iget-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleInEngine:Z

    if-eqz v0, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    invoke-virtual {v0, v7}, Lcom/visualon/widget/ClosedCaptionManager;->show(Z)V

    goto :goto_0
.end method

.method private setDrawRectToNative(IIII)V
    .locals 7

    .prologue
    .line 2750
    iget-wide v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const-wide/16 v4, 0xf

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    .line 2752
    const/4 v0, 0x4

    new-array v6, v0, [I

    const/4 v0, 0x0

    aput p1, v6, v0

    const/4 v0, 0x1

    aput p2, v6, v0

    const/4 v0, 0x2

    aput p3, v6, v0

    const/4 v0, 0x3

    aput p4, v6, v0

    .line 2753
    iget-wide v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const-wide/16 v4, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    .line 2754
    return-void
.end method

.method private setFixedSizeInternal()V
    .locals 4

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    if-lez v0, :cond_2

    .line 2584
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    if-le v0, v1, :cond_3

    .line 2586
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2587
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2595
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    if-lt v2, v1, :cond_0

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    if-ge v2, v0, :cond_1

    .line 2597
    :cond_0
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    .line 2598
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    .line 2600
    :cond_1
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 2602
    :cond_2
    return-void

    .line 2591
    :cond_3
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2592
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private setSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1300
    iput-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    .line 1301
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1302
    const-string v0, "@@@voOnStreamSDK.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDisplay suface is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1304
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    .line 1309
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPRender/voVideoRender;->setSurface(Landroid/view/Surface;)V

    .line 1311
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPRender/voVideoRender;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1313
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetSurface(J)J

    .line 1314
    return-void

    .line 1307
    :cond_1
    iput-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method private setSurfaceInternal(Landroid/view/Surface;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1318
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1319
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "@@@Surface voOnStreamSDK::setSurfaceInternal  surface is inValid  -------"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1321
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    .line 1322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    .line 1323
    const-string v0, "@@@voOnStreamSDK.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@@@setDisplay suface is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1325
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    if-eqz v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPRender/voVideoRender;->setSurface(Landroid/view/Surface;)V

    .line 1327
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPRender/voVideoRender;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1329
    :cond_1
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetSurface(J)J

    .line 1330
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1331
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "@@@Surface voOnStreamSDK::setSurfaceInternal  surface is inValid  +++++++"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1333
    :cond_2
    return-void
.end method

.method private setViewInternal(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    .line 1275
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 1276
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1277
    const-string v0, "@@@voOnStreamSDK.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDisplay suface is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1278
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    .line 1283
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPRender/voVideoRender;->setSurface(Landroid/view/Surface;)V

    .line 1285
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPRender/voVideoRender;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1295
    :cond_0
    :goto_1
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetSurface(J)J

    .line 1296
    return-void

    .line 1281
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    goto :goto_0

    .line 1289
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 1290
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    .line 1291
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPRender/voVideoRender;->setSurface(Landroid/view/Surface;)V

    goto :goto_1
.end method

.method private startDisplayListener()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 1940
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_1

    .line 1942
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Initial HDMI Check module"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1943
    sget-object v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    if-eqz v0, :cond_0

    .line 1945
    sget-object v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->Release()V

    .line 1946
    const/4 v0, 0x0

    sput-object v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    .line 1948
    :cond_0
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;-><init>(Landroid/content/Context;)V

    .line 1950
    sput-object v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHDMICheckState:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->setOnHDMIStateChangeListener(Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;)V

    .line 1951
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Init HDMI Check module successful, Is support HDMI check is %b,  current connect state is %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    invoke-virtual {v3}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isSupported()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    sget-object v4, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    invoke-virtual {v4}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isHDMIConnected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1954
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_2

    .line 1956
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    if-nez v0, :cond_2

    .line 1958
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    .line 1959
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->setHandler(Landroid/os/Handler;)V

    .line 1960
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->setOnExternalDisplayListener(Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;)V

    .line 1961
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->start()V

    .line 1964
    :cond_2
    return-void
.end method

.method private declared-synchronized startTimer()Z
    .locals 6

    .prologue
    .line 2650
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->closeTimer()Z

    .line 2652
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2654
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timer:Ljava/util/Timer;

    .line 2656
    :cond_0
    new-instance v0, Lcom/visualon/OSMPEngine/voOnStreamSDK$5;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$5;-><init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setSubtitleSampler(Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;)V

    .line 2672
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->createTimerTask()Ljava/util/TimerTask;

    move-result-object v1

    .line 2673
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2675
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Start ClosedCaption!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2676
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateVideoAspectRatioInside()V
    .locals 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2512
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldWidthVideo:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldHeightVideo:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    if-eq v0, v1, :cond_2

    .line 2514
    :cond_0
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2516
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldWidthVideo:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldHeightVideo:I

    if-eqz v0, :cond_1

    .line 2518
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldWidthVideo:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2519
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldHeightVideo:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2520
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 2521
    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 2522
    iget-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v4}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v4

    iget-object v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v5}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 2523
    iget-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v4}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v4

    iget-object v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v5}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 2524
    new-instance v4, Lcom/visualon/OSMPUtils/voOSRectImpl;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/visualon/OSMPUtils/voOSRectImpl;-><init>(IIII)V

    iput-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    .line 2527
    :cond_1
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldWidthVideo:I

    .line 2528
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldHeightVideo:I

    .line 2529
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->dispatchZoomModeInMainThread()V

    .line 2531
    :cond_2
    return-void
.end method

.method private updateViewSize(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2714
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2746
    :cond_0
    :goto_0
    return-void

    .line 2717
    :cond_1
    const-string v0, "@@@voOnStreamSDK.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateViewSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2719
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2720
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    .line 2721
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2722
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2724
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2726
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2728
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2729
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2730
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2731
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2733
    :cond_3
    iget-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbEnforceSWVideoScaling:Z

    if-eqz v0, :cond_0

    .line 2734
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbKeepAspectRatio:Z

    if-eqz v0, :cond_0

    .line 2735
    :cond_4
    new-instance v0, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;

    invoke-direct {v0, p1, p2, v3}, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;-><init>(III)V

    .line 2736
    const-wide/32 v2, 0x10009

    invoke-virtual {p0, v2, v3, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    goto :goto_0
.end method

.method private zoomin()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 2910
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->checkRectValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2912
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "For zoomin mode, param is not a valid Rect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2942
    :cond_0
    :goto_0
    return-void

    .line 2916
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    if-eqz v0, :cond_2

    .line 2918
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    int-to-double v0, v0

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    int-to-double v2, v2

    mul-double/2addr v2, v8

    iget-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v4}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v4

    iget-object v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v5}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 2919
    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    int-to-double v2, v1

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    int-to-double v4, v1

    mul-double/2addr v4, v8

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v1

    iget-object v6, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v6}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v6

    sub-int/2addr v1, v6

    int-to-double v6, v1

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 2921
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->updateViewSize(II)V

    .line 2922
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 2923
    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 2924
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v8

    iget-object v6, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v6}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v6

    iget-object v7, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v7}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-double v6, v6

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 2925
    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v3

    int-to-double v4, v3

    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    int-to-double v6, v3

    mul-double/2addr v6, v8

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v3

    iget-object v8, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v8}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v8

    sub-int/2addr v3, v8

    int-to-double v8, v3

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 2926
    sub-int v2, v0, v2

    .line 2927
    sub-int/2addr v1, v3

    .line 2928
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    check-cast v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPUtils/voSurfaceView;->voSetX(F)V

    .line 2929
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    check-cast v0, Lcom/visualon/OSMPUtils/voSurfaceView;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPUtils/voSurfaceView;->voSetY(F)V

    .line 2930
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2932
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 2933
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    .line 2939
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRect;->Left()I

    move-result v0

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSRect;->Top()I

    move-result v1

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v2}, Lcom/visualon/OSMPUtils/voOSRect;->Right()I

    move-result v2

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    invoke-interface {v3}, Lcom/visualon/OSMPUtils/voOSRect;->Bottom()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setDrawRectToNative(IIII)V

    .line 2940
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    iget v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->updateViewSize(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final Close()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 980
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Close -"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeClose(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 983
    const-string v1, "@@@voOnStreamSDK.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Close +, return value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    iput v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    .line 986
    const/4 v1, 0x0

    iput v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    .line 987
    iput v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    .line 988
    iput v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    .line 989
    iput v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalWidthVideo:I

    .line 990
    iput v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalHeightVideo:I

    .line 991
    iput v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldWidthVideo:I

    .line 992
    iput v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldHeightVideo:I

    .line 993
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    .line 994
    return v0
.end method

.method public final GetAudioBitPerSample()I
    .locals 1

    .prologue
    .line 2249
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSampleBit:I

    return v0
.end method

.method public final GetAudioChannels()I
    .locals 1

    .prologue
    .line 2241
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mChannels:I

    return v0
.end method

.method public final GetAudioData([B)J
    .locals 2

    .prologue
    .line 2151
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeGetAudioData(J[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public final GetAudioSampleRate()I
    .locals 1

    .prologue
    .line 2231
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSampleRate:I

    return v0
.end method

.method public final GetEventHandler()Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;
    .locals 1

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    return-object v0
.end method

.method public final GetParam(J)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 2034
    const-wide/16 v4, 0x2901

    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    .line 2036
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    if-nez v0, :cond_0

    .line 2038
    new-instance v0, Lcom/visualon/widget/ClosedCaptionManager;

    invoke-direct {v0}, Lcom/visualon/widget/ClosedCaptionManager;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    .line 2039
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->setActivity(Landroid/content/Context;)V

    .line 2040
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->setSurfaceView(Landroid/view/View;)V

    .line 2042
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    invoke-virtual {v0}, Lcom/visualon/widget/ClosedCaptionManager;->getSettings()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    move-result-object v0

    .line 2129
    :cond_1
    :goto_0
    return-object v0

    .line 2044
    :cond_2
    iget-wide v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v4, v5, p1, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeGetParam(JJ)Ljava/lang/Object;

    move-result-object v0

    .line 2046
    const-wide/16 v4, 0x21

    cmp-long v3, p1, v4

    if-nez v3, :cond_4

    .line 2048
    if-nez v0, :cond_3

    move-object v0, v1

    .line 2049
    goto :goto_0

    .line 2050
    :cond_3
    check-cast v0, [I

    goto :goto_0

    .line 2053
    :cond_4
    const-wide/16 v4, 0x26

    cmp-long v3, p1, v4

    if-nez v3, :cond_6

    .line 2055
    if-nez v0, :cond_5

    move-object v0, v1

    .line 2056
    goto :goto_0

    :cond_5
    move-object v3, v0

    .line 2057
    check-cast v3, [I

    .line 2058
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "CPU info %d %d %d"

    new-array v4, v6, [Ljava/lang/Object;

    aget v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aget v5, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aget v5, v3, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2059
    new-instance v0, Lcom/visualon/OSMPUtils/voOSCPUInfoImpl;

    aget v1, v3, v2

    aget v2, v3, v7

    aget v3, v3, v8

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voOSCPUInfoImpl;-><init>(IIIJ)V

    goto :goto_0

    .line 2061
    :cond_6
    const-wide/16 v4, 0x15

    cmp-long v3, p1, v4

    if-nez v3, :cond_8

    .line 2063
    if-nez v0, :cond_7

    move-object v0, v1

    .line 2064
    goto :goto_0

    .line 2065
    :cond_7
    check-cast v0, [I

    .line 2066
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v3, "VOOSMP_PID_VIDEO_FORMAT %d %d %d"

    new-array v4, v6, [Ljava/lang/Object;

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aget v5, v0, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2067
    new-instance v1, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;

    aget v2, v0, v2

    aget v3, v0, v7

    aget v0, v0, v8

    invoke-direct {v1, v2, v3, v0}, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;-><init>(III)V

    move-object v0, v1

    .line 2068
    goto/16 :goto_0

    .line 2069
    :cond_8
    const-wide/16 v4, 0x14

    cmp-long v3, p1, v4

    if-nez v3, :cond_a

    .line 2071
    if-nez v0, :cond_9

    move-object v0, v1

    .line 2072
    goto/16 :goto_0

    .line 2073
    :cond_9
    check-cast v0, [I

    .line 2074
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v3, "VOOSMP_PID_AUDIO_FORMAT %d %d %d"

    new-array v4, v6, [Ljava/lang/Object;

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aget v5, v0, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2075
    new-instance v1, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;

    aget v2, v0, v2

    aget v3, v0, v7

    aget v0, v0, v8

    invoke-direct {v1, v2, v3, v0}, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;-><init>(III)V

    move-object v0, v1

    .line 2076
    goto/16 :goto_0

    .line 2077
    :cond_a
    const-wide/16 v4, 0x35

    cmp-long v3, p1, v4

    if-nez v3, :cond_e

    .line 2079
    if-nez v0, :cond_b

    .line 2081
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v3, "Get Performace Data Error!!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 2082
    goto/16 :goto_0

    .line 2084
    :cond_b
    check-cast v0, Landroid/os/Parcel;

    .line 2085
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2086
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-nez v3, :cond_c

    move-object v0, v1

    .line 2088
    goto/16 :goto_0

    .line 2091
    :cond_c
    new-instance v1, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;

    invoke-direct {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;-><init>()V

    .line 2092
    invoke-virtual {v1, v0}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->parser(Landroid/os/Parcel;)V

    .line 2096
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v3, "Get Performance Data, LastTime %d, SourceDropNum %d, CodecDropNum %d, RenderDropNum %d, DecodedNum %d, RenderNum %d, SourceTimeNum %d, CodecTimeNum %d, RenderTimeNum %d, JitterNum %d, CodecErrorsNum %d, CPULoad %d, Frequency %d, MaxFrequency %d, WorstDecodeTime %d, WorstRenderTime %d, AverageDecodeTime %d, AverageRenderTime %d, TotalCPULoad %d, TotalPlaybackDuration %d, TotalSourceDropNum %d,TotalCodecDropNum %d, TotalRenderDropNum %d, TotalDecodedNum %d, TotalRendernum %d"

    const/16 v4, 0x19

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->LastTime()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->SourceDropNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->CodecDropNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->RenderDropNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x4

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->DecodedNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->RenderNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->SourceTimeNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->CodecTimeNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->RenderTimeNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->JitterNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->CodecErrorsNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->CPULoad()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->Frequency()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->MaxFrequency()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->WorstDecodeTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xf

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->WorstRenderTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x10

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->AverageDecodeTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x11

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->AverageRenderTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x12

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->TotalCPULoad()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x13

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->TotalPlaybackDuration()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x14

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->TotalSourceDropNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x15

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->TotalCodecDropNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x16

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->TotalRenderDropNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x17

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->TotalDecodedNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x18

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->TotalRenderNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 2108
    :goto_1
    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->CodecErrorsNum()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 2110
    const-string v3, "@@@voOnStreamSDK.java"

    const-string v4, "CodecErrors index = %d, errorcode is %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSVideoPerformanceImpl;->CodecErrors()[I

    move-result-object v6

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    move-object v0, v1

    .line 2113
    goto/16 :goto_0

    .line 2115
    :cond_e
    long-to-int v3, p1

    const v4, 0xffff

    and-int/2addr v3, v4

    const/16 v4, 0x49

    if-ne v3, v4, :cond_1

    .line 2116
    if-nez v0, :cond_f

    move-object v0, v1

    .line 2117
    goto/16 :goto_0

    :cond_f
    move-object v1, v0

    .line 2118
    check-cast v1, Landroid/os/Parcel;

    .line 2119
    new-instance v3, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;

    invoke-direct {v3}, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;-><init>()V

    .line 2120
    invoke-virtual {v3, v1}, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->parse(Landroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2122
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, " get module version %s, module type is %d, version is  %s"

    new-array v4, v6, [Ljava/lang/Object;

    long-to-int v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->GetModuleType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->GetVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v0, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 2123
    goto/16 :goto_0

    .line 2125
    :cond_10
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v3, " get module version error,id is VOOSMP_PID_MODULE_VERSION "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final GetParam(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 2007
    iget-wide v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeGetParam(JJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final GetPos()I
    .locals 2

    .prologue
    .line 1185
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeGetPos(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1187
    return v0
.end method

.method public final GetSEITimingInfo(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;J)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 2701
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->VOOSMP_FLAG_SEI_EVENT_PIC_TIMING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;

    if-ne p1, v0, :cond_0

    .line 2703
    iget-wide v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SEI_EVENT_FLAG;->getValue()I

    move-result v3

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeGetSEITimingInfo(JIJ)Ljava/lang/Object;

    move-result-object v0

    .line 2705
    check-cast v0, [I

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;->parse([I)Lcom/visualon/OSMPUtils/voOSSEIPicTimingImpl;

    move-result-object v0

    .line 2709
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final GetSubTitleSample(I)Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 2352
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeGetSubTitleSample(JI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    return-object v0
.end method

.method public final GetSubtitleLanguageInfo()Ljava/util/List;
    .locals 6
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
    const/4 v0, 0x0

    .line 2543
    iget-wide v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 2545
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2546
    const/4 v0, 0x0

    .line 2559
    :goto_0
    return-object v0

    .line 2550
    :cond_0
    iget-wide v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeGetSubtitleLanguageCount(J)I

    move-result v3

    .line 2552
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v2, "Language count is %d."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v2, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 2554
    :goto_1
    if-ge v2, v3, :cond_1

    .line 2556
    iget-wide v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v4, v5, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeGetSubtitleLanguageInfo(JI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2554
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 2559
    goto :goto_0
.end method

.method public final GetVideoData([B)J
    .locals 2

    .prologue
    .line 2140
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeGetVideoData(J[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public final GetVideoHeight()I
    .locals 1

    .prologue
    .line 2221
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    return v0
.end method

.method public final GetVideoWidth()I
    .locals 1

    .prologue
    .line 2211
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    return v0
.end method

.method public final Init(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JJJ)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/visualon/OSMPUtils/voOSOption;",
            ">;JJJ)I"
        }
    .end annotation

    .prologue
    .line 807
    invoke-static {p2}, Lcom/visualon/OSMPUtils/voLog;->initLogLib(Ljava/lang/String;)I

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    .line 809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbAdaptivePlayback:Z

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbEnforceSWVideoScaling:Z

    .line 812
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    .line 814
    invoke-static {p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->loadJNI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    const v0, -0x7ffffff1

    .line 895
    :goto_0
    return v0

    .line 819
    :cond_0
    new-instance v10, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v1, p0

    move-object v2, p0

    move-object v3, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 822
    invoke-direct/range {v1 .. v9}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeCreate(Ljava/lang/Object;Ljava/lang/String;JJJ)J

    move-result-wide v0

    long-to-int v2, v0

    .line 824
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->startDisplayListener()V

    .line 826
    const-wide/16 v0, 0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_4

    .line 828
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 829
    const-string v1, "4."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "5."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 830
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbOMXAL:Z

    .line 845
    :goto_1
    new-instance v0, Lcom/visualon/OSMPRender/voAudioRender;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPRender/voAudioRender;-><init>(Lcom/visualon/OSMPRender/voAudioRender$onAudioRenderListener;)V

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    .line 846
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->init()V

    .line 865
    if-eqz p3, :cond_6

    .line 867
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 869
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSOption;

    .line 870
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSOption;->getType()Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    move-result-object v3

    sget-object v4, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoVideoRender:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    if-ne v3, v4, :cond_2

    .line 872
    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSOption;->getValue()J

    move-result-wide v4

    long-to-int v0, v4

    .line 873
    const-wide/16 v4, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 874
    const-string v3, "@@@voOnStreamSDK.java"

    const-string v4, "SetParam voOSType.VOOSMP_PID_VIDEO_RENDER_TYPE is %d ."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 833
    :cond_3
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Device OS version is low, OpenMax AL need Android4.0 or above."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    const v0, -0x7ffffff2

    goto/16 :goto_0

    .line 838
    :cond_4
    new-instance v0, Lcom/visualon/OSMPRender/voVideoRender;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPRender/voVideoRender;-><init>(Lcom/visualon/OSMPRender/voVideoRender$onVideoRenderListener;)V

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    .line 840
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    if-eqz v0, :cond_5

    .line 841
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPRender/voVideoRender;->setSurface(Landroid/view/Surface;)V

    .line 843
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbOMXAL:Z

    goto :goto_1

    .line 880
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    .line 883
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 884
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 885
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v3, "init spend time is %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 887
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 889
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 890
    new-instance v0, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v4}, Lcom/visualon/OSMPUtils/voOSVideoFormatImpl;-><init>(III)V

    .line 891
    const-wide/16 v4, 0x102a

    invoke-virtual {p0, v4, v5, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 893
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->readWhiteListDeviceData()V

    move v0, v2

    .line 895
    goto/16 :goto_0
.end method

.method public final IsHardwareRender()Z
    .locals 1

    .prologue
    .line 2687
    iget-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbOMXAL:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbIOMX:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Open(Ljava/lang/Object;J)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 919
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 921
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v2, "SurfaceView/Surface should be set before open function"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 922
    const v0, -0x7ffffeff

    .line 970
    :goto_0
    return v0

    .line 924
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->isDeviceHardwareSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 925
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const v2, -0x7ffffff0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 926
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-virtual {v2, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 930
    :cond_1
    sget-boolean v1, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mIsKeepLastFrameEnabled:Z

    if-eqz v1, :cond_3

    .line 931
    sget v1, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLastAspectRatio:I

    iput v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    .line 937
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatio:F

    .line 938
    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    .line 939
    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    .line 940
    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalWidthVideo:I

    .line 941
    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOriginalHeightVideo:I

    .line 942
    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldWidthVideo:I

    .line 943
    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOldHeightVideo:I

    .line 944
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v2, "Open mAspectRatio=%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    iget-wide v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeOpen(JLjava/lang/Object;J)J

    move-result-wide v0

    .line 947
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 949
    :try_start_0
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-nez v2, :cond_2

    .line 950
    new-instance v2, Lcom/visualon/OSMPEngine/voOnStreamSDK$3;

    invoke-direct {v2, p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$3;-><init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V

    iput-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 964
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 965
    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :cond_2
    :goto_2
    long-to-int v0, v0

    goto :goto_0

    .line 933
    :cond_3
    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public final Pause()I
    .locals 6

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->pause()V

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voVideoRender;->pause()V

    .line 1041
    :cond_1
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativePause(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1042
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v2, "Engine pause return is 0x%X, audio and video Render puase."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    return v0
.end method

.method public final Run()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1004
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 1006
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "SurfaceView/Surface should be set before run function"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1007
    const v0, -0x7ffffeff

    .line 1025
    :cond_0
    :goto_0
    return v0

    .line 1009
    :cond_1
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "run"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1010
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1011
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "@@@Surface voOnStreamSDK::Run surface is inValid ----------"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    :cond_2
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeRun(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1014
    if-eqz v0, :cond_3

    .line 1015
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v2, "run return error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1019
    :cond_3
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    if-eqz v1, :cond_4

    .line 1020
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    invoke-virtual {v1}, Lcom/visualon/OSMPRender/voVideoRender;->run()V

    .line 1021
    :cond_4
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v1, :cond_5

    .line 1022
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-virtual {v1}, Lcom/visualon/OSMPRender/voAudioRender;->run()V

    .line 1023
    :cond_5
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1024
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v2, "@@@Surface voOnStreamSDK::Run surface is inValid +++++++++++++"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final SelectSubtitleLanguage(I)I
    .locals 4

    .prologue
    .line 2570
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2572
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2573
    const v0, -0x7ffffeff

    .line 2576
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSelectSubtitleLanguage(JI)I

    move-result v0

    goto :goto_0
.end method

.method public final SetDisplaySize(II)V
    .locals 3

    .prologue
    .line 2616
    iput p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenWidth:I

    .line 2617
    iput p2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mScreenHeight:I

    .line 2618
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2620
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->refreshDisplaySizeInternal()V

    .line 2624
    :goto_0
    return-void

    .line 2623
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const v2, -0xf0ffff5

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final SetParam(JLjava/lang/Object;)I
    .locals 21

    .prologue
    .line 1529
    const-wide/16 v2, 0x3c

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1531
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, " VOOSMP_PID_READ_SUBTITLE_CALLBACK"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1534
    :cond_0
    const-wide/16 v2, 0x1027

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 1536
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceChangedFinish:Z

    .line 1537
    const/4 v2, 0x0

    .line 1932
    :cond_1
    :goto_0
    return v2

    .line 1539
    :cond_2
    const-wide/16 v2, 0xf

    cmp-long v2, p1, v2

    if-nez v2, :cond_4

    .line 1541
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    .line 1542
    move-object/from16 v0, p0

    iget v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    .line 1544
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->dispatchZoomModeInMainThread()V

    .line 1546
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1547
    :cond_4
    const-wide/16 v2, 0x2

    cmp-long v2, p1, v2

    if-nez v2, :cond_6

    .line 1549
    check-cast p3, Lcom/visualon/OSMPUtils/voOSRect;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomInRect:Lcom/visualon/OSMPUtils/voOSRect;

    .line 1550
    move-object/from16 v0, p0

    iget v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 1551
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->dispatchZoomModeInMainThread()V

    .line 1552
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 1554
    :cond_6
    const-wide/16 v2, 0x33

    cmp-long v2, p1, v2

    if-eqz v2, :cond_7

    const-wide/16 v2, 0x3b

    cmp-long v2, p1, v2

    if-nez v2, :cond_b

    .line 1557
    :cond_7
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_a

    .line 1558
    check-cast p3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetView(Landroid/view/View;)I

    .line 1561
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    .line 1562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1566
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->dispatchZoomModeInMainThread()V

    .line 1567
    const/4 v2, 0x0

    goto :goto_0

    .line 1559
    :cond_a
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/view/Surface;

    if-eqz v2, :cond_8

    .line 1560
    check-cast p3, Landroid/view/Surface;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 1568
    :cond_b
    const-wide/16 v2, 0x45

    cmp-long v2, p1, v2

    if-nez v2, :cond_e

    .line 1570
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/view/SurfaceView;

    if-nez v2, :cond_c

    .line 1572
    const v2, -0x7fffffed

    goto/16 :goto_0

    .line 1574
    :cond_c
    check-cast p3, Landroid/view/SurfaceView;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_d

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    .line 1580
    :goto_2
    const-string v2, "@@@voOnStreamSDK.java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set VOOSMP_PID_IOMX_PROBE suface is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mSurface is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1582
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1583
    const-string v3, "@@@voOnStreamSDK.java"

    const-string v4, "set VOOSMP_PID_IOMX_PROBE result is %d "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1579
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    goto :goto_2

    .line 1586
    :cond_e
    const-wide/16 v2, 0x35

    cmp-long v2, p1, v2

    if-nez v2, :cond_10

    .line 1588
    if-nez p3, :cond_f

    .line 1590
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "Param data is NULL!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1591
    const v2, -0x7ffffff2

    goto/16 :goto_0

    .line 1594
    :cond_f
    const/16 v2, 0x1e

    new-array v8, v2, [I

    .line 1595
    check-cast p3, Lcom/visualon/OSMPUtils/voOSVideoPerformance;

    .line 1597
    const/4 v2, 0x0

    invoke-interface/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->LastTime()I

    move-result v3

    aput v3, v8, v2

    .line 1598
    const/4 v2, 0x6

    invoke-interface/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->SourceTimeNum()I

    move-result v3

    aput v3, v8, v2

    .line 1599
    const/4 v2, 0x7

    invoke-interface/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->CodecTimeNum()I

    move-result v3

    aput v3, v8, v2

    .line 1600
    const/16 v2, 0x8

    invoke-interface/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->RenderTimeNum()I

    move-result v3

    aput v3, v8, v2

    .line 1601
    const/16 v2, 0x9

    invoke-interface/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->JitterNum()I

    move-result v3

    aput v3, v8, v2

    .line 1602
    const/16 v2, 0xc

    invoke-interface/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSVideoPerformance;->CPULoad()I

    move-result v3

    aput v3, v8, v2

    .line 1632
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    move-result-wide v2

    long-to-int v2, v2

    goto/16 :goto_0

    .line 1633
    :cond_10
    const-wide/32 v2, 0x10009

    cmp-long v2, p1, v2

    if-nez v2, :cond_12

    .line 1635
    if-nez p3, :cond_11

    .line 1637
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "Param data is NULL!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1638
    const v2, -0x7ffffff2

    goto/16 :goto_0

    .line 1641
    :cond_11
    const/4 v2, 0x2

    new-array v8, v2, [I

    .line 1642
    check-cast p3, Lcom/visualon/OSMPUtils/voOSVideoFormat;

    .line 1644
    const/4 v2, 0x0

    invoke-interface/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->Width()I

    move-result v3

    aput v3, v8, v2

    .line 1645
    const/4 v2, 0x1

    invoke-interface/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->Height()I

    move-result v3

    aput v3, v8, v2

    .line 1646
    const-string v2, "@@@voOnStreamSDK.java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "intArray[0] = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget v4, v8, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , intArray[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v8, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1647
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    move-result-wide v2

    long-to-int v2, v2

    goto/16 :goto_0

    .line 1649
    :cond_12
    const-wide/16 v2, 0x2a

    cmp-long v2, p1, v2

    if-nez v2, :cond_15

    .line 1651
    if-eqz p3, :cond_14

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 1652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    if-nez v2, :cond_14

    .line 1654
    new-instance v2, Lcom/visualon/widget/ClosedCaptionManager;

    invoke-direct {v2}, Lcom/visualon/widget/ClosedCaptionManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_13

    .line 1656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/visualon/widget/ClosedCaptionManager;->setActivity(Landroid/content/Context;)V

    .line 1657
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    if-eqz v2, :cond_14

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/visualon/widget/ClosedCaptionManager;->setSurfaceView(Landroid/view/View;)V

    .line 1662
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const v3, -0xf0ffffb

    move-wide/from16 v0, p1

    long-to-int v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-virtual {v3, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1665
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1666
    :cond_15
    const-wide/16 v2, 0x2900

    cmp-long v2, p1, v2

    if-nez v2, :cond_19

    .line 1668
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 1670
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->enableInnerCloseCaption:Z

    if-nez v2, :cond_16

    .line 1671
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const-wide/16 v6, 0x2a

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    .line 1672
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleInEngine:Z

    if-eqz v2, :cond_17

    .line 1674
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->closeCaptionOutput:Z

    .line 1675
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->startTimer()Z

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const v3, -0xf0ffffd

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-virtual {v3, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1695
    :cond_17
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1685
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleInEngine:Z

    if-eqz v2, :cond_17

    .line 1687
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->closeCaptionOutput:Z

    .line 1690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const v3, -0xf0ffffd

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-virtual {v3, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 1696
    :cond_19
    const-wide/16 v2, 0x1029

    cmp-long v2, p1, v2

    if-nez v2, :cond_1c

    move-object/from16 v2, p3

    .line 1698
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleInEngine:Z

    .line 1699
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleInEngine:Z

    if-nez v2, :cond_1a

    .line 1701
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->closeTimer()Z

    .line 1702
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    .line 1932
    :cond_1a
    :goto_5
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    move-result-wide v2

    long-to-int v2, v2

    goto/16 :goto_0

    .line 1698
    :cond_1b
    const/4 v2, 0x1

    goto :goto_4

    .line 1704
    :cond_1c
    const-wide/16 v2, 0x1026

    cmp-long v2, p1, v2

    if-nez v2, :cond_1f

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 1706
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1707
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1709
    const-string v2, "im-a760s"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "galaxy nexus"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "xt1058"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1711
    :cond_1d
    const/16 v2, 0x12c

    .line 1712
    const-string v4, "xt1058"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1713
    const/16 v2, 0xbb8

    .line 1714
    :cond_1e
    const-wide/16 v4, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 1717
    const-wide/16 v4, 0x1d

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 1720
    const-wide/16 v4, 0x1c

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 1721
    const-string v2, "@@@voOnStreamSDK.java"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "This device is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", setup audo param!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1723
    :cond_1f
    const-wide/16 v2, 0x16

    cmp-long v2, p1, v2

    if-nez v2, :cond_2c

    move-object/from16 v2, p3

    .line 1725
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    if-eqz v2, :cond_20

    .line 1727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPRender/voVideoRender;->setRenderType(I)V

    .line 1729
    :cond_20
    const-string v2, "@@@voOnStreamSDK.java"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set Render type is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1730
    const/4 v2, 0x5

    if-eq v3, v2, :cond_21

    const/4 v2, 0x6

    if-eq v2, v3, :cond_21

    const/16 v2, 0x100

    if-ne v2, v3, :cond_2b

    .line 1734
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->getCurrentDeviceDatas()V

    .line 1735
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->matchCurrentDeviceToWhiteList()V

    .line 1736
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->isDeviceHardwareSupport()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1737
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1739
    :cond_22
    const/16 v2, 0x100

    if-ne v3, v2, :cond_40

    .line 1741
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbAdaptivePlayback:Z

    if-eqz v2, :cond_40

    .line 1742
    invoke-virtual/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->adjustRenderType()I

    move-result v2

    .line 1743
    if-eqz v2, :cond_40

    .line 1745
    const-string v3, "@@@voOnStreamSDK.java"

    const-string v4, "Auto select hardware white list, Re-Set Render type to %d."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1751
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbAdaptivePlayback:Z

    if-eqz v3, :cond_23

    .line 1752
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->checkDeviceAdaptivePlaybackSupport()V

    .line 1753
    :cond_23
    const/4 v14, 0x0

    .line 1754
    const/4 v8, 0x0

    .line 1756
    const/4 v3, 0x5

    if-eq v3, v2, :cond_24

    const/16 v3, 0x100

    if-ne v3, v2, :cond_26

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_26

    .line 1760
    :cond_24
    const-string v14, "voGetIOMXDecAPI"

    .line 1761
    invoke-static {}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->getIOMXFilename()Ljava/lang/String;

    move-result-object v8

    .line 1762
    const/4 v2, 0x5

    .line 1773
    :cond_25
    :goto_7
    if-nez v8, :cond_28

    .line 1775
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "Device Android version is too low, don\'t run hardware decode and render!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1776
    const v2, -0x7ffffff2

    goto/16 :goto_0

    .line 1764
    :cond_26
    const/4 v3, 0x6

    if-eq v3, v2, :cond_27

    const/16 v3, 0x100

    if-ne v3, v2, :cond_25

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_25

    .line 1768
    :cond_27
    const-string v14, "voGetAMediaCodecAPI"

    .line 1769
    const-string v8, "voAMediaCodec"

    .line 1770
    const/4 v2, 0x6

    goto :goto_7

    .line 1781
    :cond_28
    const/4 v3, 0x5

    if-eq v3, v2, :cond_29

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2a

    .line 1783
    :cond_29
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbIOMX:Z

    .line 1786
    :cond_2a
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const/high16 v3, 0x190000

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingH264:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->ordinal()I

    move-result v6

    or-int/2addr v3, v6

    int-to-long v6, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    .line 1789
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const/high16 v3, 0x240000

    sget-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->VOOSMP_VIDEO_CodingH264:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_VIDEO_CODINGTYPE;->ordinal()I

    move-result v4

    or-int/2addr v3, v4

    int-to-long v12, v3

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    .line 1792
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v20}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1793
    const-string v3, "@@@voOnStreamSDK.java"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Run hardware decode and render type! Decode file name is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", api name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1795
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbAdaptivePlayback:Z

    if-eqz v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 1796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const v4, -0xf0ffff8

    invoke-virtual {v3, v4}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1801
    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbIOMX:Z

    goto/16 :goto_5

    .line 1803
    :cond_2c
    const-wide/16 v2, 0x3

    cmp-long v2, p1, v2

    if-nez v2, :cond_2d

    move-object/from16 v2, p3

    .line 1804
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    if-eqz v3, :cond_1a

    .line 1806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    invoke-virtual {v3, v2}, Lcom/visualon/OSMPRender/voVideoRender;->setColorType(I)V

    goto/16 :goto_5

    .line 1808
    :cond_2d
    const-wide/16 v2, 0x2902

    cmp-long v2, p1, v2

    if-nez v2, :cond_2f

    move-object/from16 v2, p3

    .line 1809
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1810
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    .line 1811
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbKeepAspectRatio:Z

    goto/16 :goto_5

    .line 1812
    :cond_2e
    if-nez v2, :cond_1a

    .line 1813
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbKeepAspectRatio:Z

    goto/16 :goto_5

    .line 1815
    :cond_2f
    const-wide/16 v2, 0x102a

    cmp-long v2, p1, v2

    if-nez v2, :cond_32

    .line 1817
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1818
    const/16 v3, 0x10

    if-lt v2, v3, :cond_31

    .line 1819
    check-cast p3, Lcom/visualon/OSMPUtils/voOSVideoFormat;

    .line 1820
    invoke-interface/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->Height()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_30

    invoke-interface/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->Width()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_30

    .line 1821
    invoke-interface/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->Width()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mFixedSizeWidthThreshold:I

    .line 1822
    invoke-interface/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->Height()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mFixedSizeHeightThreshold:I

    .line 1824
    :cond_30
    const-string v3, "@@@voOnStreamSDK.java"

    const-string v4, "VOOSMP_PID_FIXEDSIZE_THRESHOLD, OS version is %d, width is %d, height is %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mFixedSizeWidthThreshold:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mFixedSizeHeightThreshold:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1832
    :goto_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1828
    :cond_31
    const-string v3, "@@@voOnStreamSDK.java"

    const-string v4, "Do not setParam VOOSMP_PID_FIXEDSIZE_THRESHOLD, OS version is %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 1833
    :cond_32
    const-wide/16 v2, 0x48

    cmp-long v2, v2, p1

    if-nez v2, :cond_37

    move-object/from16 v2, p3

    .line 1837
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1838
    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_33

    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_34

    .line 1840
    :cond_33
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->getCurrentDeviceDatas()V

    .line 1841
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->matchCurrentDeviceToWhiteList()V

    .line 1842
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->isDeviceHardwareSupport()Z

    move-result v3

    if-nez v3, :cond_34

    .line 1843
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1845
    :cond_34
    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_MEDIACODEC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->getValue()I

    move-result v3

    if-ne v3, v2, :cond_35

    .line 1847
    const-string v14, "voGetAudioMCDecAPI"

    .line 1848
    const-string v8, "voAudioMCDec"

    .line 1850
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const/high16 v3, 0x180000

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v6

    or-int/2addr v3, v6

    int-to-long v6, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    .line 1853
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const/high16 v3, 0x230000

    sget-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v4

    or-int/2addr v3, v4

    int-to-long v12, v3

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    .line 1856
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x48

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v20}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1857
    const-string v3, "@@@voOnStreamSDK.java"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Run hardware audio decode! Decode file name is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", api name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1859
    :cond_35
    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->VOOSMP_AUDIO_DECODER_TYPE_IOMX:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_DECODER_TYPE;->getValue()I

    move-result v3

    if-ne v3, v2, :cond_1a

    .line 1861
    const-string v14, "voGetIOMXAudioDecAPI"

    .line 1862
    invoke-static {}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->getIOMXFilename()Ljava/lang/String;

    move-result-object v8

    .line 1864
    if-nez v8, :cond_36

    .line 1866
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "Device Android version is too low, don\'t run IOMX audio!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1867
    const v2, -0x7ffffff2

    goto/16 :goto_0

    .line 1871
    :cond_36
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const/high16 v3, 0x180000

    sget-object v6, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v6

    or-int/2addr v3, v6

    int-to-long v6, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    .line 1874
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const/high16 v3, 0x230000

    sget-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAAC:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v4

    or-int/2addr v3, v4

    int-to-long v12, v3

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    .line 1877
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-wide/from16 v16, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v15, p0

    move-wide/from16 v18, p1

    invoke-direct/range {v15 .. v20}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1878
    const-string v3, "@@@voOnStreamSDK.java"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Run hardware audio decode and render type! Decode file name is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", api name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1883
    :cond_37
    const-wide/16 v2, 0x5c

    cmp-long v2, p1, v2

    if-nez v2, :cond_38

    .line 1885
    const/4 v2, 0x4

    new-array v8, v2, [I

    .line 1886
    check-cast p3, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;

    .line 1887
    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getSampleRate()I

    move-result v3

    aput v3, v8, v2

    .line 1888
    const/4 v2, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getChannels()I

    move-result v3

    aput v3, v8, v2

    .line 1889
    const/4 v2, 0x2

    invoke-virtual/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getSampleBits()I

    move-result v3

    aput v3, v8, v2

    .line 1890
    const/4 v2, 0x3

    invoke-virtual/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSAudioRenderFormat;->getBufferSize()I

    move-result v3

    aput v3, v8, v2

    .line 1891
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    move-result-wide v2

    long-to-int v2, v2

    goto/16 :goto_0

    .line 1892
    :cond_38
    const-wide/16 v2, 0x66

    cmp-long v2, p1, v2

    if-nez v2, :cond_39

    .line 1894
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "VOOSMP_PID_SECOND_SURFACE"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1895
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    move-result-wide v2

    long-to-int v2, v2

    goto/16 :goto_0

    .line 1896
    :cond_39
    const-wide/16 v2, 0x67

    cmp-long v2, p1, v2

    if-nez v2, :cond_3b

    .line 1898
    check-cast p3, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;

    .line 1899
    const/4 v2, 0x2

    new-array v8, v2, [I

    .line 1900
    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;->getCodec()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->getValue()I

    move-result v3

    aput v3, v8, v2

    .line 1901
    const/4 v3, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x1

    :goto_9
    aput v2, v8, v3

    .line 1902
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1903
    invoke-virtual/range {p3 .. p3}, Lcom/visualon/OSMPUtils/voOSLoadAudioCodec;->getCodec()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    move-result-object v3

    sget-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingDOLBY:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    if-ne v3, v4, :cond_1

    .line 1905
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const-wide/16 v6, 0x27

    const/4 v3, 0x1

    aget v3, v8, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    goto/16 :goto_0

    .line 1901
    :cond_3a
    const/4 v2, 0x0

    goto :goto_9

    .line 1908
    :cond_3b
    const-wide/16 v2, 0x60

    cmp-long v2, p1, v2

    if-nez v2, :cond_3c

    .line 1910
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1911
    invoke-direct/range {p0 .. p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->startDisplayListener()V

    goto/16 :goto_0

    .line 1913
    :cond_3c
    const-wide/16 v2, 0x102c

    cmp-long v2, p1, v2

    if-nez v2, :cond_3d

    .line 1915
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbAdaptivePlayback:Z

    .line 1916
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1917
    :cond_3d
    const-wide/16 v2, 0x89

    cmp-long v2, p1, v2

    if-nez v2, :cond_3f

    move-object/from16 v2, p3

    .line 1918
    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1919
    const-string v2, "@@@voOnStreamSDK.java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VOOSMP_PREF_STOP_KEEP_LAST_FRAME: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (last: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLastAspectRatio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1920
    const/4 v2, 0x1

    sput-boolean v2, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mIsKeepLastFrameEnabled:Z

    goto/16 :goto_5

    :cond_3e
    move-object/from16 v2, p3

    .line 1921
    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->VOOSMP_PREF_NO_STOP_KEEP_LAST_FRAME:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_PREFERENCE;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1922
    const-string v2, "@@@voOnStreamSDK.java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VOOSMP_PREF_NO_STOP_KEEP_LAST_FRAME: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAspectRatio:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1923
    const/4 v2, 0x0

    sput-boolean v2, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mIsKeepLastFrameEnabled:Z

    goto/16 :goto_5

    .line 1925
    :cond_3f
    const/high16 v2, 0x200000

    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->VOOSMP_AUDIO_CodingAC3:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_AUDIO_CODINGTYPE;->ordinal()I

    move-result v3

    or-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1a

    move-object/from16 v2, p3

    .line 1927
    check-cast v2, Ljava/lang/String;

    .line 1928
    const-string v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1929
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "[RECONFIG] notifyReconfigAudioTrack"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_40
    move v2, v3

    goto/16 :goto_6
.end method

.method public final SetPos(J)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1145
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetPosTolerance(JII)I

    move-result v0

    return v0
.end method

.method public final SetPosTolerance(JII)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1160
    const-string v0, "@@@voOnStreamSDK.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPospos is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/visualon/widget/ClosedCaptionManager;->clearData(Z)V

    .line 1165
    :cond_0
    iget-wide v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetPosTolerance(JJII)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1166
    if-eqz v0, :cond_1

    .line 1175
    :goto_0
    return v0

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->flush()V

    .line 1172
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    if-eqz v0, :cond_3

    .line 1173
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPRender/voVideoRender;->setPos(J)V

    :cond_3
    move v0, v8

    .line 1175
    goto :goto_0
.end method

.method public final SetSurface(Landroid/view/Surface;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1405
    if-nez p1, :cond_0

    .line 1407
    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    .line 1408
    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    .line 1409
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetSurface(J)J

    .line 1410
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Surface Destroy, value is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1420
    :goto_0
    return-void

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1414
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "@@@Surface voOnStreamSDK::SetSurface surface is inValid"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1417
    invoke-direct {p0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setSurfaceInternal(Landroid/view/Surface;)V

    goto :goto_0

    .line 1419
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const v2, -0xf0ffff1

    invoke-virtual {v1, v2, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final SetSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 1383
    if-nez p1, :cond_0

    .line 1385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    .line 1386
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetSurface(J)J

    .line 1387
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Surface Destroy, value is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1395
    :goto_0
    return-void

    .line 1391
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1392
    invoke-direct {p0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 1394
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const v2, -0xf0ffff6

    invoke-virtual {v1, v2, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final SetView(Landroid/view/View;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1342
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    iget-object v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const v4, -0xf0ffff3

    invoke-virtual {v3, v4, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1345
    :cond_0
    if-nez p1, :cond_1

    .line 1347
    iput-object v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurface:Landroid/view/Surface;

    .line 1348
    iput-object v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mView:Landroid/view/View;

    .line 1349
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetSurface(J)J

    .line 1350
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "SetView Surface Destroy, value is null"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1372
    :goto_0
    return v2

    .line 1355
    :cond_1
    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_4

    move v0, v1

    .line 1358
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_2

    .line 1360
    instance-of v3, p1, Landroid/view/TextureView;

    if-eqz v3, :cond_2

    move v0, v1

    .line 1364
    :cond_2
    if-nez v0, :cond_3

    .line 1366
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "SetView parameter should be SurfaceView or TextureView or voSurfaceView or voTextureView."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1367
    const v2, -0x7ffffff8

    goto :goto_0

    .line 1370
    :cond_3
    invoke-direct {p0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->setViewInternal(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public final SetVolume(FF)I
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPRender/voAudioRender;->arsetVolume(FF)V

    .line 1204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Stop()I
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1054
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "stop-"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    iput-object v8, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    .line 1056
    iput-boolean v7, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->enableInnerCloseCaption:Z

    .line 1057
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->closeTimer()Z

    .line 1058
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 1060
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1061
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsDisplayView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;

    if-eqz v0, :cond_1

    .line 1069
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 1070
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAnalyticsRender:Lcom/visualon/OSMPEngine/voAnalyticsRender;

    invoke-virtual {v0, v8}, Lcom/visualon/OSMPEngine/voAnalyticsRender;->setDispalyData(Lcom/visualon/OSMPUtils/voOSAnalyticsDisplay;)V

    .line 1075
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    if-eqz v0, :cond_2

    .line 1077
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 1078
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mLicDisplayRender:Lcom/visualon/OSMPUtils/voLicenseDisplayRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voLicenseDisplayRender;->clean()V

    .line 1083
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    if-eqz v0, :cond_3

    .line 1085
    iput-boolean v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbVideoRenderStopping:Z

    .line 1086
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mVideoRender:Lcom/visualon/OSMPRender/voVideoRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voVideoRender;->stop()V

    .line 1087
    iput-boolean v7, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbVideoRenderStopping:Z

    .line 1090
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v0, :cond_4

    .line 1091
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->stop()V

    .line 1092
    :cond_4
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 1093
    iget-wide v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    const-wide/16 v4, 0x2a

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeSetParam(JJLjava/lang/Object;)J

    .line 1095
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const v1, -0xf0ffffe

    invoke-virtual {v0, v1, v7, v7, v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1096
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->dispatchMessage(Landroid/os/Message;)V

    .line 1098
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1099
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mOverWritedView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    :cond_5
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "nativeStop-"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1102
    iget-wide v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeStop(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1103
    const-string v1, "@@@voOnStreamSDK.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stop+ nativeStop+, return value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 1131
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSecondView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    :cond_6
    return v0

    .line 1062
    :catch_0
    move-exception v0

    .line 1063
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v2, "%s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1072
    :cond_7
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2, v8}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1080
    :cond_8
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const v2, -0xf0ffff4

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method

.method public final Uninit()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1215
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v1, "Uninit -"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1218
    const-wide/16 v2, 0xe

    invoke-virtual {p0, v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    .line 1219
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1221
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1222
    if-eqz v0, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 1224
    invoke-virtual {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->Stop()I

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v0, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->unInit()V

    .line 1230
    iput-object v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    .line 1234
    :cond_1
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->closeTimer()Z

    .line 1236
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    if-eqz v0, :cond_2

    .line 1237
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mAudioRender:Lcom/visualon/OSMPRender/voAudioRender;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/voAudioRender;->unInit()V

    .line 1239
    :cond_2
    iget-wide v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->nativeDestroy(J)J

    move-result-wide v2

    .line 1241
    cmp-long v0, v8, v2

    if-nez v0, :cond_3

    .line 1242
    iput-wide v8, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mNativeContext:J

    .line 1245
    :cond_3
    iput-object v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventListener:Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;

    .line 1247
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-virtual {v0, v5}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1249
    iput-boolean v6, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbOMXAL:Z

    .line 1250
    iput-boolean v6, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbIOMX:Z

    .line 1251
    iput v6, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mZoomMode:I

    .line 1252
    iput-boolean v6, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbAdaptivePlayback:Z

    .line 1253
    iput-boolean v6, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbEnforceSWVideoScaling:Z

    .line 1254
    sget-object v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    if-eqz v0, :cond_4

    .line 1256
    sget-object v0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->Release()V

    .line 1257
    sput-object v5, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_HDMIStateCheck:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    .line 1260
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v0, v4, :cond_5

    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    if-eqz v0, :cond_5

    .line 1262
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-virtual {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->stop()V

    .line 1263
    iput-object v5, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDisplay:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    .line 1266
    :cond_5
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1267
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1268
    const-string v1, "@@@voOnStreamSDK.java"

    const-string v4, "Uninit + , init spend time is %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1269
    long-to-int v0, v2

    return v0
.end method

.method public final VideoSizeChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2160
    iput-boolean v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceChangedFinish:Z

    .line 2161
    iput-boolean v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventFinish:Z

    .line 2162
    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceChangedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceChangedCount:I

    .line 2163
    const-string v0, "@@@voOnStreamSDK.java"

    const-string v2, "VideoSizeChanged, before send message"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2164
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    const/16 v2, 0xf

    iget v3, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    iget v4, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    invoke-virtual {v0, v2, v3, v4, p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2165
    iget-object v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    .line 2170
    :goto_0
    iget-boolean v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventFinish:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbVideoRenderStopping:Z

    if-nez v2, :cond_0

    .line 2172
    add-int/lit8 v0, v0, 0x1

    .line 2174
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2175
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "waiting VideoSizeChanged"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2179
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2183
    :cond_0
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "VideoSizeChanged, spend %d milliseconds. mSurfaceChangedCount is %d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceChangedCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2184
    iput-boolean v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceChangedFinish:Z

    move v0, v1

    .line 2185
    :goto_1
    iget-boolean v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceChangedFinish:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceChangedCount:I

    if-ne v2, v5, :cond_1

    .line 2187
    const/16 v2, 0xc8

    if-ge v0, v2, :cond_1

    .line 2191
    const-wide/16 v2, 0x32

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2192
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "waiting SurfaceChanged Finished."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2197
    :goto_2
    add-int/lit8 v0, v0, 0x32

    goto :goto_1

    .line 2195
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 2200
    :cond_1
    const-string v2, "@@@voOnStreamSDK.java"

    const-string v3, "After VideoSizeChanged, waiting surfacechanged finished, spend %d milliseconds, mSurfaceChangedFinish is %b, mSurfaceChangedCount is %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    iget-boolean v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceChangedFinish:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v5

    iget v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSurfaceChangedCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2202
    return-void
.end method

.method public final adjustRenderType()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3215
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3222
    :cond_0
    :goto_0
    return v0

    .line 3217
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iomx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3218
    const/4 v0, 0x5

    goto :goto_0

    .line 3219
    :cond_2
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mDeviceDatas:Lcom/visualon/OSMPUtils/voOSDeviceData;

    invoke-virtual {v1}, Lcom/visualon/OSMPUtils/voOSDeviceData;->getRenderType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediacodec"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3220
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public final destroySubtitleManager()V
    .locals 1

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    if-eqz v0, :cond_0

    .line 3320
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    invoke-virtual {v0}, Lcom/visualon/widget/ClosedCaptionManager;->clearWidget()V

    .line 3321
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    .line 3322
    return-void
.end method

.method public final enforceSoftwareVideoScaling(Z)I
    .locals 1

    .prologue
    .line 3305
    iput-boolean p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mbEnforceSWVideoScaling:Z

    .line 3306
    const/4 v0, 0x0

    return v0
.end method

.method public final getOrCreateSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;
    .locals 1

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    if-eqz v0, :cond_0

    .line 3310
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    .line 3311
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visualon/widget/ClosedCaptionManager;

    invoke-direct {v0}, Lcom/visualon/widget/ClosedCaptionManager;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    goto :goto_0
.end method

.method public final getSubtitleManager()Lcom/visualon/widget/ClosedCaptionManager;
    .locals 1

    .prologue
    .line 3315
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;

    return-object v0
.end method

.method public final onAudioRenderEvent(IIILjava/lang/Object;)I
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    if-eqz v0, :cond_0

    .line 2284
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventHandler:Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$EventHandler;->sendEmptyMessage(I)Z

    .line 2287
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onGetAudioFormat()Lcom/visualon/OSMPUtils/voOSAudioFormat;
    .locals 2

    .prologue
    .line 2265
    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSAudioFormat;

    .line 2266
    if-nez v0, :cond_0

    .line 2267
    const/4 v0, 0x0

    .line 2274
    :goto_0
    return-object v0

    .line 2271
    :cond_0
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->SampleRate()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSampleRate:I

    .line 2272
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->Channels()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mChannels:I

    .line 2273
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->SampleBits()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSampleBit:I

    goto :goto_0
.end method

.method public final onGetAudioParam(J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2303
    invoke-virtual {p0, p1, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final onGetFormatID()I
    .locals 2

    .prologue
    .line 2257
    const-wide/16 v0, 0x58

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final onGetVideoFormat()Lcom/visualon/OSMPUtils/voOSVideoFormat;
    .locals 2

    .prologue
    .line 2319
    const-wide/16 v0, 0x15

    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSVideoFormat;

    .line 2322
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->Width()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWidthVideo:I

    .line 2323
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSVideoFormat;->Height()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mHeightVideo:I

    .line 2324
    return-object v0
.end method

.method public final onGetVideoParam(J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0, p1, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetParam(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final onSetAudioParam(ILjava/lang/Object;)J
    .locals 2

    .prologue
    .line 2295
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final onSetVideoParam(ILjava/lang/Object;)J
    .locals 2

    .prologue
    .line 2332
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final onVideoRenderEvent(IIILjava/lang/Object;)I
    .locals 1

    .prologue
    .line 2311
    const/4 v0, 0x0

    return v0
.end method

.method public final setEventListener(Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mEventListener:Lcom/visualon/OSMPEngine/voOnStreamSDK$onEventListener;

    .line 285
    return-void
.end method

.method public final setSmoothBAWhiteListFile(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3235
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3236
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3237
    const-string v1, "@@@voOnStreamSDK.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSmoothBAWhiteListFile fail,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3238
    const v0, -0x7ffffff8

    .line 3249
    :goto_0
    return v0

    .line 3241
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3242
    invoke-static {v2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->readXML(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mWhiteListDeviceDatas:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3245
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3246
    const v0, -0x7ffffff2

    goto :goto_0
.end method

.method public final setSubtitleSampler(Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mSubtitleSampler:Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;

    .line 716
    return-void
.end method

.method public final setVideoAspectRatio(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2468
    iput p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->m_nAspectRationType:I

    .line 2469
    packed-switch p1, :pswitch_data_0

    .line 2491
    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    .line 2493
    :goto_0
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->dispatchZoomModeInMainThread()V

    .line 2494
    return-void

    .line 2473
    :pswitch_0
    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    goto :goto_0

    .line 2476
    :pswitch_1
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    goto :goto_0

    .line 2479
    :pswitch_2
    const v0, 0x3faaaaab

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    goto :goto_0

    .line 2482
    :pswitch_3
    const v0, 0x3fe38e39

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    goto :goto_0

    .line 2485
    :pswitch_4
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    goto :goto_0

    .line 2488
    :pswitch_5
    const v0, 0x40151eb8    # 2.33f

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    goto :goto_0

    .line 2469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public final updateVideoAspectRatio(II)V
    .locals 2

    .prologue
    .line 2505
    if-lez p2, :cond_0

    .line 2506
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK;->mfAspectRatioAppSet:F

    .line 2507
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->dispatchZoomModeInMainThread()V

    .line 2508
    return-void
.end method
