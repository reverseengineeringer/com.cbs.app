.class public Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;
.super Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL;,
        Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "@@@AdMdialogEngine"

.field private static sID:Ljava/lang/String;


# instance fields
.field adBreakListener:Lcom/mdialog/android/stream/AdBreakListener;

.field private mAssetKey:Ljava/lang/String;

.field private mContSeekPos:J

.field protected mHandler:Landroid/os/Handler;

.field public mSession:Lcom/mdialog/android/Session;

.field public mSessionCont:Lcom/mdialog/android/SessionContext;

.field protected mStream:Lcom/mdialog/android/Stream;

.field private mStreamCont:Lcom/mdialog/android/StreamContext;

.field private mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

.field streamLoadedListener:Lcom/mdialog/android/OnStreamLoadedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->$assertionsDisabled:Z

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->sID:Ljava/lang/String;

    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mHandler:Landroid/os/Handler;

    .line 59
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_LIVE:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mContSeekPos:J

    .line 212
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;-><init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->streamLoadedListener:Lcom/mdialog/android/OnStreamLoadedListener;

    .line 294
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;-><init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->adBreakListener:Lcom/mdialog/android/stream/AdBreakListener;

    .line 345
    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->getSettingValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;)Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    return-object v0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mContSeekPos:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->seekContentTo()V

    return-void
.end method

.method private getID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 419
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    .line 444
    :goto_0
    return-object v0

    .line 421
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->sID:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 423
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "INSTALLATION"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 427
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 428
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 430
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 433
    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 435
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 436
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 437
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->sID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_2
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->sID:Ljava/lang/String;

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 441
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSettingValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSettings:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private seekContentTo()V
    .locals 4

    .prologue
    .line 604
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    .line 605
    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 606
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAdMode:Z

    .line 607
    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mContSeekPos:J

    invoke-virtual {v0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPosition(J)J

    .line 608
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mIsAdMode:Z

    .line 610
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mContSeekPos:J

    .line 611
    return-void
.end method


# virtual methods
.method protected addStreamListeners()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->adBreakListener:Lcom/mdialog/android/stream/AdBreakListener;

    invoke-virtual {v0, v1}, Lcom/mdialog/android/Stream;->addAdBreakListener(Lcom/mdialog/android/stream/AdBreakListener;)V

    .line 210
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->streamLoadedListener:Lcom/mdialog/android/OnStreamLoadedListener;

    invoke-virtual {v0, v1}, Lcom/mdialog/android/Stream;->addOnStreamLoadedListener(Lcom/mdialog/android/OnStreamLoadedListener;)V

    goto :goto_0
.end method

.method public close()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 460
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method protected destroyStream()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->destroy()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    .line 204
    :cond_0
    return-void
.end method

.method public getType()Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    return-object v0
.end method

.method public init(Ljava/lang/String;Landroid/content/Context;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine;->init(Ljava/lang/String;Landroid/content/Context;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 77
    sget-object v6, Lcom/mdialog/android/SessionContext$ConnectionStatus;->WIFI_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    .line 79
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_LIVE:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    if-ne v0, v2, :cond_4

    .line 80
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAssetKey:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_STATUS:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 195
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const-string v3, "preview-vod"

    .line 85
    const-string v4, "examplepoc"

    .line 86
    const-string v5, "demo-app-android"

    move-object v0, v6

    move-object v2, v1

    .line 114
    :goto_1
    new-instance v6, Lcom/mdialog/android/SessionContext;

    iget-object v7, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/mdialog/android/SessionContext;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSessionCont:Lcom/mdialog/android/SessionContext;

    .line 115
    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSessionCont:Lcom/mdialog/android/SessionContext;

    invoke-virtual {v6, v3}, Lcom/mdialog/android/SessionContext;->setSubDomain(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSessionCont:Lcom/mdialog/android/SessionContext;

    invoke-virtual {v3, v4}, Lcom/mdialog/android/SessionContext;->setApiKey(Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSessionCont:Lcom/mdialog/android/SessionContext;

    invoke-virtual {v3, v5}, Lcom/mdialog/android/SessionContext;->setApplicationKey(Ljava/lang/String;)V

    .line 118
    if-eqz v2, :cond_1

    .line 119
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSessionCont:Lcom/mdialog/android/SessionContext;

    invoke-virtual {v3, v2}, Lcom/mdialog/android/SessionContext;->setApplicationVersion(Ljava/lang/String;)V

    .line 120
    :cond_1
    if-eqz v1, :cond_2

    .line 121
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSessionCont:Lcom/mdialog/android/SessionContext;

    invoke-virtual {v2, v1}, Lcom/mdialog/android/SessionContext;->setWebViewUserAgent(Ljava/lang/String;)V

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSessionCont:Lcom/mdialog/android/SessionContext;

    sget-object v2, Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;->VisualOnPlayer:Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;

    invoke-virtual {v1, v2}, Lcom/mdialog/android/SessionContext;->setPlayerType(Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;)V

    .line 129
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSessionCont:Lcom/mdialog/android/SessionContext;

    invoke-virtual {v1, v0}, Lcom/mdialog/android/SessionContext;->setCurrentConnectionStatus(Lcom/mdialog/android/SessionContext$ConnectionStatus;)V

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSessionCont:Lcom/mdialog/android/SessionContext;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mdialog/android/SessionContext;->setApplicationVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSessionCont:Lcom/mdialog/android/SessionContext;

    invoke-static {v0}, Lcom/mdialog/android/Session;->getSession(Lcom/mdialog/android/SessionContext;)Lcom/mdialog/android/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSession:Lcom/mdialog/android/Session;

    .line 140
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSession:Lcom/mdialog/android/Session;

    invoke-virtual {v0}, Lcom/mdialog/android/Session;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "@@@AdMdialogEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mDialog SDK version is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->destroyStream()V

    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 150
    const-string v0, "BUSINESS_NAME"

    const-string v2, "Test"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "APPLICATION_NAME"

    const-string v2, "Test-App"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 153
    const-string v0, "key1"

    const-string v3, "value1"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "key2"

    const-string v3, "value2"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/mdialog/android/StreamContext;

    invoke-direct {v0}, Lcom/mdialog/android/StreamContext;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStreamCont:Lcom/mdialog/android/StreamContext;

    .line 159
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->context:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 160
    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 161
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSessionCont:Lcom/mdialog/android/SessionContext;

    invoke-virtual {v3, v0}, Lcom/mdialog/android/SessionContext;->setCurrentLocation(Landroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :goto_3
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_LIVE:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    if-ne v0, v3, :cond_7

    .line 168
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStreamCont:Lcom/mdialog/android/StreamContext;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAssetKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mdialog/android/StreamContext;->setAssetKey(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStreamCont:Lcom/mdialog/android/StreamContext;

    invoke-virtual {v0, v1}, Lcom/mdialog/android/StreamContext;->setTrackingData(Ljava/util/HashMap;)V

    .line 172
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStreamCont:Lcom/mdialog/android/StreamContext;

    invoke-virtual {v0, v2}, Lcom/mdialog/android/StreamContext;->setAdDecisionServerData(Ljava/util/HashMap;)V

    .line 175
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSession:Lcom/mdialog/android/Session;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStreamCont:Lcom/mdialog/android/StreamContext;

    invoke-virtual {v0, v1}, Lcom/mdialog/android/Session;->getStream(Lcom/mdialog/android/StreamContext;)Lcom/mdialog/android/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    .line 176
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->addStreamListeners()V

    .line 177
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0, v8}, Lcom/mdialog/android/Stream;->setAppInBackground(Z)V

    .line 195
    :cond_3
    :goto_4
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto/16 :goto_0

    .line 88
    :cond_4
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_VOD:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    if-ne v0, v2, :cond_e

    .line 89
    const-string v0, "sub_domain_key"

    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->getSettingValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    if-nez v0, :cond_d

    .line 91
    const-string v0, "cbs-vod-stg"

    move-object v3, v0

    .line 93
    :goto_5
    const-string v0, "api_key"

    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->getSettingValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    if-nez v0, :cond_c

    .line 95
    const-string v0, "eb09d44d00cf0769508dd230eea0c6da"

    move-object v4, v0

    .line 98
    :goto_6
    const-string v0, "application_key"

    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->getSettingValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    if-nez v0, :cond_b

    .line 100
    const-string v0, "43a039766213a5e36ec6e05edb897cc2"

    move-object v5, v0

    .line 102
    :goto_7
    const-string v0, "application_ver"

    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->getSettingValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    const-string v1, "web_view_user_agent"

    invoke-direct {p0, v1}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->getSettingValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    const-string v2, "current_connection_status"

    invoke-direct {p0, v2}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->getSettingValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    if-eqz v2, :cond_a

    .line 106
    const-string v7, "WIFI"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 107
    sget-object v2, Lcom/mdialog/android/SessionContext$ConnectionStatus;->WIFI_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 108
    :cond_5
    const-string v7, "CELLULAR"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 109
    sget-object v2, Lcom/mdialog/android/SessionContext$ConnectionStatus;->CELLULAR_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 110
    :cond_6
    const-string v7, "NO_CONNECTION"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 111
    sget-object v2, Lcom/mdialog/android/SessionContext$ConnectionStatus;->NO_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 135
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 163
    :catch_1
    move-exception v0

    const-string v0, "@@@AdMdialogEngine"

    const-string v3, "Location right needs, please enable GPS Location"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 181
    :cond_7
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_VOD:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    if-ne v0, v3, :cond_3

    .line 182
    const-string v0, "tracking_data"

    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->getSettingValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 183
    if-eqz v0, :cond_9

    .line 185
    :goto_8
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStreamCont:Lcom/mdialog/android/StreamContext;

    invoke-virtual {v1, v0}, Lcom/mdialog/android/StreamContext;->setTrackingData(Ljava/util/HashMap;)V

    .line 187
    const-string v0, "ad_decision_server_data"

    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->getSettingValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 188
    if-eqz v0, :cond_8

    .line 191
    :goto_9
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStreamCont:Lcom/mdialog/android/StreamContext;

    invoke-virtual {v1, v0}, Lcom/mdialog/android/StreamContext;->setAdDecisionServerData(Ljava/util/HashMap;)V

    goto/16 :goto_4

    :cond_8
    move-object v0, v2

    goto :goto_9

    :cond_9
    move-object v0, v1

    goto :goto_8

    :cond_a
    move-object v2, v0

    move-object v0, v6

    goto/16 :goto_1

    :cond_b
    move-object v5, v0

    goto/16 :goto_7

    :cond_c
    move-object v4, v0

    goto/16 :goto_6

    :cond_d
    move-object v3, v0

    goto/16 :goto_5

    :cond_e
    move-object v0, v6

    move-object v2, v1

    move-object v5, v1

    move-object v4, v1

    move-object v3, v1

    goto/16 :goto_1
.end method

.method public onPlayComplete()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->getPreRollStream()Lcom/mdialog/android/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->getPreRollStream()Lcom/mdialog/android/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->destroy()V

    .line 526
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->stop()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 527
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->close()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 528
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->getManifestURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->playVideo(Ljava/lang/String;)V

    .line 531
    :cond_0
    return-void
.end method

.method public onSeek(J)J
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 534
    .line 535
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_VOD:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    if-ne v0, v1, :cond_1

    .line 536
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    .line 537
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v0

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_INITIALIZING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    if-eq v0, v1, :cond_1

    .line 542
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    long-to-int v1, p1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/mdialog/android/Stream;->getStreamTimeWithAds(I)I

    move-result v5

    .line 544
    mul-int/lit16 v0, v5, 0x3e8

    int-to-long v0, v0

    .line 548
    cmp-long v2, p1, v2

    if-nez v2, :cond_4

    .line 549
    const-wide/16 v2, 0x190

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 551
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0, v5}, Lcom/mdialog/android/Stream;->getNearestPreviousAdBreak(I)Lcom/mdialog/android/stream/AdBreak;

    move-result-object v1

    .line 555
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    if-eqz v0, :cond_3

    .line 557
    new-instance v0, Ljava/lang/Integer;

    long-to-int v6, v2

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 558
    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    const v7, 0x1230adda

    invoke-virtual {v6, v7, v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getParam(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 559
    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 560
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 561
    :goto_1
    const-string v6, "@@@AdMdialogEngine"

    const-string v7, "VO_ADSMANAGER_PID_NEAREST_PREVIOUS_AD_STATE is %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    :goto_2
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 564
    invoke-virtual {v1}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    .line 566
    mul-int/lit16 v0, v5, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mContSeekPos:J

    .line 570
    :cond_1
    return-wide v2

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    move-wide v2, v0

    goto :goto_0
.end method

.method public open()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method protected playVideo(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 573
    new-instance v0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;-><init>()V

    .line 574
    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mDecType:I

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 575
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->VO_OSMP_FLAG_SRC_OPEN_ASYNC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->VO_OSMP_SRC_AUTO_DETECT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 576
    return-void
.end method

.method public resume(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 621
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_VOD:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 623
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 624
    check-cast p1, Landroid/view/View;

    .line 625
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 626
    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 633
    :cond_0
    return-void
.end method

.method public setAssetKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->destroyStream()V

    .line 512
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStreamCont:Lcom/mdialog/android/StreamContext;

    if-eqz v0, :cond_0

    .line 513
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAssetKey:Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStreamCont:Lcom/mdialog/android/StreamContext;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAssetKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mdialog/android/StreamContext;->setAssetKey(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mSession:Lcom/mdialog/android/Session;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStreamCont:Lcom/mdialog/android/StreamContext;

    invoke-virtual {v0, v1}, Lcom/mdialog/android/Session;->getStream(Lcom/mdialog/android/StreamContext;)Lcom/mdialog/android/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    .line 517
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->addStreamListeners()V

    .line 519
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mdialog/android/Stream;->setAppInBackground(Z)V

    .line 522
    :cond_0
    return-void
.end method

.method public setID3Infor(IILjava/lang/Object;I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->getStreamType()Lcom/mdialog/android/Stream$Type;

    sget-object v0, Lcom/mdialog/android/Stream$Type;->LIVE:Lcom/mdialog/android/Stream$Type;

    .line 506
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setPlayingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0, p1}, Lcom/mdialog/android/Stream;->playerTimeUpdated(I)V

    .line 472
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setType(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    .line 492
    return-void
.end method

.method public uninit()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->destroyStream()V

    .line 481
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method protected updateAdBreaks(Lcom/mdialog/android/Stream;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 578
    invoke-virtual {p1}, Lcom/mdialog/android/Stream;->getAdBreaks()Ljava/util/ArrayList;

    move-result-object v5

    .line 579
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 580
    mul-int/lit8 v0, v6, 0x2

    new-array v7, v0, [Ljava/lang/String;

    .line 581
    mul-int/lit8 v0, v6, 0x3

    new-array v8, v0, [J

    .line 583
    const-string v0, "aBreaks"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adBreaks.size()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    const-wide/16 v0, 0x0

    move-wide v2, v0

    move v1, v4

    .line 586
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 587
    mul-int/lit8 v9, v1, 0x3

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/AdBreak;

    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v10, v0

    sub-long/2addr v10, v2

    aput-wide v10, v8, v9

    .line 588
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/AdBreak;

    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v10, v0

    aput-wide v10, v8, v9

    .line 589
    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v9, v0, 0x2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/AdBreak;

    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v10, v0

    aput-wide v10, v8, v9

    .line 590
    const-string v0, ""

    aput-object v0, v7, v1

    .line 592
    add-int v0, v1, v6

    const-string v9, ""

    aput-object v9, v7, v0

    .line 593
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/AdBreak;

    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v10, v0

    add-long/2addr v2, v10

    .line 595
    const-string v9, "the breaks informations  "

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v0, "breaks duration: "

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/AdBreak;

    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getDuration()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "   orinal start time  "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/AdBreak;

    invoke-virtual {v0}, Lcom/mdialog/android/stream/AdBreak;->getStartTime()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "   adjust start time  "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit8 v10, v1, 0x3

    aget-wide v10, v8, v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v9, v0, v10}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 597
    :cond_0
    if-lez v6, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0, v8, v7, v6, v4}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->setPlaybackAdInfo([J[Ljava/lang/String;II)I

    .line 599
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mVoEng:Lcom/visualon/OSMPPlayerImpl/AdVOEngine;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/AdVOEngine;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->updatePlaybackInfo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 601
    :cond_1
    return-void
.end method
