.class public Lcom/visualon/OSMPBasePlayer/voOSAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_MESSAGE_FORMAT;,
        Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;,
        Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;,
        Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSAnalytics"

.field public static final VOAC_PID_CONFIG_FILE:I = 0x77880000

.field public static final VOAC_PID_SERVER_NAME:I = 0x77880001


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/os/Handler;

.field private mNativeContext:J

.field private mNativeListenerWrap:J

.field private mSendMessageOnExportEvent:Z

.field private final m_GPSLocationListener:Landroid/location/LocationListener;

.field private m_GPSLocationManager:Landroid/location/LocationManager;

.field private final m_NetworkLocationListener:Landroid/location/LocationListener;

.field private m_NetworkLocationManager:Landroid/location/LocationManager;

.field private m_battery:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;

.field private m_exportListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;

.field private m_nAllProcess:I

.field private m_nInterval:I

.field private m_nSelfThreads:I

.field private m_uuid:Ljava/lang/String;

.field private pid:I

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 728
    const-string v0, "voAnalyticsJni_OSMP"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide v4, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeListenerWrap:J

    .line 64
    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mEventHandler:Landroid/os/Handler;

    .line 65
    iput-boolean v2, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mSendMessageOnExportEvent:Z

    .line 66
    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timer:Ljava/util/Timer;

    .line 67
    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timerTask:Ljava/util/TimerTask;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->pid:I

    .line 69
    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_GPSLocationManager:Landroid/location/LocationManager;

    .line 70
    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_NetworkLocationManager:Landroid/location/LocationManager;

    .line 71
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;-><init>(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)V

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_battery:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;

    .line 72
    iput v2, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_nSelfThreads:I

    .line 73
    iput v2, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_nAllProcess:I

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_nInterval:I

    .line 75
    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_uuid:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$1;-><init>(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)V

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$2;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$2;-><init>(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)V

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_GPSLocationListener:Landroid/location/LocationListener;

    .line 114
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$3;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$3;-><init>(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)V

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_NetworkLocationListener:Landroid/location/LocationListener;

    .line 130
    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_exportListener:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$AnalyticsExportListener;

    .line 134
    iput-wide v4, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mEventHandler:Landroid/os/Handler;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_battery:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->reportDeviceInfo2()V

    return-void
.end method

.method private closeTimer()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 356
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 358
    :cond_0
    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timerTask:Ljava/util/TimerTask;

    .line 359
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 361
    :cond_1
    iput-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timer:Ljava/util/Timer;

    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method private getCpuUsage(I[J)I
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    .line 441
    const/4 v1, 0x0

    .line 442
    if-gez p1, :cond_3

    .line 443
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/proc/stat"

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 446
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 448
    const/4 v3, 0x5

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 449
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/4 v3, 0x4

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/4 v3, 0x6

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/4 v3, 0x7

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v2, v6

    .line 451
    const/4 v6, 0x0

    add-long v8, v4, v2

    aput-wide v8, p2, v6

    .line 455
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 456
    if-eqz v6, :cond_1

    .line 458
    const-string v7, "processes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 459
    if-ltz v7, :cond_0

    .line 460
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 461
    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_nAllProcess:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 467
    :cond_1
    const-wide/16 v6, 0x168

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 470
    :goto_0
    const-wide/16 v6, 0x0

    :try_start_2
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 471
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 472
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 474
    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 476
    const/4 v6, 0x5

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 477
    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v10, 0x3

    aget-object v10, v1, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v10, 0x4

    aget-object v10, v1, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v10, 0x6

    aget-object v10, v1, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v10, 0x7

    aget-object v10, v1, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/16 v10, 0x8

    aget-object v1, v1, v10

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 479
    const/4 v1, 0x1

    add-long v10, v6, v8

    aput-wide v10, p2, v1

    .line 481
    sub-long v10, v8, v2

    long-to-float v1, v10

    add-long/2addr v6, v8

    add-long/2addr v2, v4

    sub-long v2, v6, v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 508
    :cond_2
    :goto_1
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 512
    :goto_2
    return v0

    .line 485
    :cond_3
    new-instance v2, Ljava/io/RandomAccessFile;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/proc/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 488
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 489
    const/16 v4, 0x13

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_nSelfThreads:I

    .line 491
    const/16 v4, 0xd

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/16 v6, 0xe

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    const/16 v6, 0xf

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    const/16 v6, 0x10

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v6

    add-long/2addr v4, v6

    .line 493
    const-wide/16 v6, 0x168

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 496
    :goto_3
    const-wide/16 v6, 0x0

    :try_start_4
    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 497
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 500
    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 502
    const/16 v3, 0xd

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v3, 0xe

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/16 v3, 0xf

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v2, v6

    .line 504
    const/4 v6, 0x1

    aget-wide v6, p2, v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    aget-wide v6, p2, v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    .line 505
    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/4 v2, 0x1

    aget-wide v2, p2, v2

    const/4 v4, 0x0

    aget-wide v4, p2, v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    goto/16 :goto_1

    :catch_0
    move-exception v6

    goto/16 :goto_0

    :catch_1
    move-exception v3

    goto :goto_3

    .line 512
    :catch_2
    move-exception v1

    goto/16 :goto_2
.end method

.method private getFreeMemory()I
    .locals 4

    .prologue
    .line 433
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 434
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 435
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 436
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static getMaxCpuFreq()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 385
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->getSystemInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNumCores()I
    .locals 2

    .prologue
    .line 535
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    new-instance v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$1CpuFilter;

    invoke-direct {v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$1CpuFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 539
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getSystemInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 365
    const-string v0, ""

    .line 367
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 368
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 370
    const/16 v3, 0x18

    new-array v3, v3, [B

    .line 371
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 375
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 377
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 378
    const-string v0, "N/A"

    goto :goto_1
.end method

.method private static getTotalMemory()Ljava/lang/String;
    .locals 4

    .prologue
    .line 395
    const-string v0, ""

    .line 397
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/meminfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 398
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 400
    if-lez v2, :cond_0

    .line 401
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    const-string v2, "k"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 403
    if-lez v2, :cond_0

    .line 404
    const/4 v3, 0x0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getmem_SELF()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 417
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_1

    .line 420
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 421
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 423
    const/4 v3, 0x1

    new-array v3, v3, [I

    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    aput v4, v3, v2

    .line 424
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->pid:I

    .line 425
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 426
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v0

    .line 430
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private final native native_Analytics_AudioRenderStart(J)I
.end method

.method private final native native_Analytics_EnableAgent(JZ)I
.end method

.method private final native native_Analytics_EnableDisplay(JI)I
.end method

.method private final native native_Analytics_EnableExport(JZ)I
.end method

.method private final native native_Analytics_EnableExportEventMessage(JZ)V
.end method

.method private final native native_Analytics_EnableFoundation(JZ)I
.end method

.method private final native native_Analytics_GetExportPacket(J)Ljava/lang/String;
.end method

.method private final native native_Analytics_GetFPS(J)F
.end method

.method private final native native_Analytics_GetFunctionSet(J)J
.end method

.method private final native native_Analytics_Init(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_Analytics_Report(JIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method private final native native_Analytics_SetAgentAppID(JLjava/lang/String;)I
.end method

.method private final native native_Analytics_SetAgentCUID(JLjava/lang/String;)I
.end method

.method private final native native_Analytics_SetDisplayType(JI)I
.end method

.method private final native native_Analytics_SetFoundationCUID(JLjava/lang/String;)I
.end method

.method private final native native_Analytics_Start(J)I
.end method

.method private final native native_Analytics_Stop(J)I
.end method

.method private final native native_Analytics_Uninit(J)I
.end method

.method private onVOAnalyticsEvent()V
    .locals 2

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mSendMessageOnExportEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mEventHandler:Landroid/os/Handler;

    const v1, -0xf0ffff2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 295
    :cond_0
    return-void
.end method

.method private reportDeviceInfo1()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 550
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_DEVICE_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Type:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v8}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 555
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_DEVICE_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_CPU:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v4, 0x0

    invoke-static {}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->getNumCores()I

    move-result v5

    int-to-long v6, v5

    aput-wide v6, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->getMaxCpuFreq()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 559
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_DEVICE_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_OS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v8}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 563
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 564
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 565
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 566
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 567
    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_DEVICE_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v3, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_ScreenResolution:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 568
    return-void
.end method

.method private reportDeviceInfo2()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 575
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->getmem_SELF()I

    move-result v3

    .line 578
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->getTotalMemory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 581
    :goto_0
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->getFreeMemory()I

    move-result v5

    .line 582
    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_DEVICE_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_MemoryUsage:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 594
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_DEVICE_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Threads:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    iget v2, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_nSelfThreads:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_nAllProcess:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 599
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 601
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_8

    .line 604
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v7, :cond_3

    move v0, v7

    .line 612
    :goto_1
    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_DEVICE_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Connection:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0, v9}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 616
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_GPSLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_7

    .line 618
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_GPSLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 619
    if-nez v0, :cond_0

    .line 620
    :try_start_2
    const-string v1, "@@@voOSAnalytics"

    const-string v2, "voOSAnalytics, GPS_PROVIDER is not supported."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 628
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_NetworkLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_6

    .line 630
    :try_start_3
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_NetworkLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    .line 631
    if-nez v2, :cond_1

    .line 632
    :try_start_4
    const-string v1, "@@@voOSAnalytics"

    const-string v3, "voOSAnalytics, NETWORK_PROVIDER is not supported."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    move-object v1, v2

    .line 641
    :goto_3
    if-nez v0, :cond_4

    move-object v0, v1

    .line 648
    :cond_2
    :goto_4
    if-eqz v0, :cond_5

    .line 649
    const/4 v1, 0x4

    new-array v1, v1, [D

    .line 650
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v1, v6

    .line 651
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v1, v7

    .line 652
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    aput-wide v2, v1, v8

    .line 653
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v2, v0

    aput-wide v2, v1, v10

    .line 654
    const-string v0, "@@@voOSAnalytics"

    const-string v2, "voOSAnalytics, location is %f, %f, %f, accuracy %f"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aget-wide v4, v1, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    aget-wide v4, v1, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    aget-wide v4, v1, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    aget-wide v4, v1, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_DEVICE_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Location:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-virtual {p0, v0, v2, v1, v9}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 661
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 662
    sget-object v1, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_DEVICE_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v2, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Power:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    iget-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_battery:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 663
    return-void

    :catch_0
    move-exception v0

    move v0, v6

    goto/16 :goto_0

    .line 607
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v8

    .line 608
    goto/16 :goto_1

    .line 622
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    .line 623
    :goto_6
    const-string v2, "@@@voOSAnalytics"

    const-string v3, "GPS location exception, information is %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 634
    :catch_2
    move-exception v1

    move-object v2, v9

    .line 635
    :goto_7
    const-string v3, "@@@voOSAnalytics"

    const-string v4, "Network location exception, information is %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_3

    .line 643
    :cond_4
    if-eqz v1, :cond_2

    .line 644
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    move-object v0, v1

    .line 645
    goto/16 :goto_4

    .line 657
    :cond_5
    const-string v0, "@@@voOSAnalytics"

    const-string v1, "Cannot fetch location"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 634
    :catch_3
    move-exception v1

    goto :goto_7

    .line 622
    :catch_4
    move-exception v1

    goto :goto_6

    :cond_6
    move-object v1, v9

    goto/16 :goto_3

    :cond_7
    move-object v0, v9

    goto/16 :goto_2

    :cond_8
    move v0, v6

    goto/16 :goto_1
.end method

.method private startTimer()Z
    .locals 6

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->closeTimer()Z

    .line 668
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$4;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$4;-><init>(Lcom/visualon/OSMPBasePlayer/voOSAnalytics;)V

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timerTask:Ljava/util/TimerTask;

    .line 677
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timer:Ljava/util/Timer;

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_nInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 684
    const-string v0, "@@@voOSAnalytics"

    const-string v1, "Start Analyze!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public GetFunctionSet()J
    .locals 4

    .prologue
    .line 720
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 721
    const-wide/32 v0, -0x7ffffeff

    .line 724
    :goto_0
    return-wide v0

    .line 723
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_GetFunctionSet(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public Init(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 148
    iput-object p1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mContext:Landroid/content/Context;

    .line 149
    new-instance v0, Lcom/visualon/OSMPUtils/voOSUniqID;

    invoke-direct {v0, p1}, Lcom/visualon/OSMPUtils/voOSUniqID;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSUniqID;->getDeviceUUIDString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_uuid:Ljava/lang/String;

    .line 151
    const-string v0, "@@@voOSAnalytics"

    const-string v1, "Init analytics native with packagePath %s and UUID %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p2, v3, v6

    iget-object v4, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_uuid:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 153
    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_uuid:Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_Init(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 154
    if-nez v1, :cond_1

    .line 156
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 168
    const-string v3, "level"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 169
    const-string v4, "scale"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 170
    const-string v5, "plugged"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 171
    if-ltz v3, :cond_0

    if-ltz v4, :cond_0

    .line 172
    iget-object v5, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_battery:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v4

    iput v3, v5, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;->m_level:I

    .line 173
    :cond_0
    if-gez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_battery:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;

    iput v6, v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;->m_powerState:I

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 188
    sget-object v3, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_PLAYER_ANALYTICS:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    sget-object v4, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_AppName:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-virtual {p0, v3, v4, v0, v2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 190
    const-string v2, "@@@voOSAnalytics"

    const-string v3, "voOSAnalytics appname is %s "

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->reportDeviceInfo1()V

    move v0, v1

    .line 194
    :goto_3
    return v0

    .line 159
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    move v0, v1

    .line 160
    goto :goto_3

    .line 175
    :cond_2
    if-nez v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_battery:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;

    iput v9, v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;->m_powerState:I

    goto :goto_0

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_battery:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;

    iput v8, v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$BatteryInfo;->m_powerState:I

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    .line 187
    :cond_4
    const-string v0, "(unknown)"

    goto :goto_2
.end method

.method public Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9

    .prologue
    .line 691
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 692
    const v0, -0x7ffffeff

    .line 696
    :goto_0
    return v0

    .line 694
    :cond_0
    const-string v0, "@@@voOSAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "voOSAnalytics type is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    iget-wide v2, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-virtual {p1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->getValue()I

    move-result v4

    invoke-virtual {p2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->getValue()I

    move-result v5

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_Report(JIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public Report(Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9

    .prologue
    .line 701
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 702
    const v0, -0x7ffffeff

    .line 706
    :goto_0
    return v0

    .line 704
    :cond_0
    const-string v0, "@@@voOSAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "voOSAnalytics type is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    iget-wide v2, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-virtual {p1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->getValue()I

    move-result v4

    invoke-virtual {p2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_SUBTYPE;->getValue()I

    move-result v5

    move-object v1, p0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_Report(JIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public ReportEvent(III)I
    .locals 9

    .prologue
    .line 711
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 712
    const v0, -0x7ffffeff

    .line 715
    :goto_0
    return v0

    .line 714
    :cond_0
    iget-wide v2, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    sget-object v0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->VOAC_OSMP_EVENT:Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics$VOAC_EVENT_TYPE;->getValue()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_Report(JIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public Uninit()I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 341
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 342
    const v0, -0x7ffffeff

    .line 351
    :goto_0
    return v0

    .line 344
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->closeTimer()Z

    .line 346
    invoke-virtual {p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->disableLocation()V

    .line 348
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_Uninit(J)I

    move-result v0

    .line 350
    iput-wide v2, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    goto :goto_0
.end method

.method public audioRenderStart()I
    .locals 4

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 310
    const v0, -0x7ffffeff

    .line 311
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_AudioRenderStart(J)I

    move-result v0

    goto :goto_0
.end method

.method public disableLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_GPSLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_GPSLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_GPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 220
    iput-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_GPSLocationManager:Landroid/location/LocationManager;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_NetworkLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_NetworkLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_NetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 224
    iput-object v2, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_NetworkLocationManager:Landroid/location/LocationManager;

    .line 226
    :cond_1
    return-void
.end method

.method public enableAgent(Z)I
    .locals 4

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 253
    const v0, -0x7ffffeff

    .line 254
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_EnableAgent(JZ)I

    move-result v0

    goto :goto_0
.end method

.method public enableDisplay(I)I
    .locals 4

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 231
    const v0, -0x7ffffeff

    .line 233
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_EnableDisplay(JI)I

    move-result v0

    goto :goto_0
.end method

.method enableExport(Z)I
    .locals 4

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 274
    const v0, -0x7ffffeff

    .line 275
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_EnableExport(JZ)I

    move-result v0

    goto :goto_0
.end method

.method enableExportEventMessage(Z)V
    .locals 4

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iput-boolean p1, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mSendMessageOnExportEvent:Z

    .line 288
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_EnableExportEventMessage(JZ)V

    goto :goto_0
.end method

.method public enableFoundation(Z)I
    .locals 4

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 239
    const v0, -0x7ffffeff

    .line 240
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_EnableFoundation(JZ)I

    move-result v0

    goto :goto_0
.end method

.method public enableLocation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_GPSLocationManager:Landroid/location/LocationManager;

    .line 201
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_GPSLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_GPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_NetworkLocationManager:Landroid/location/LocationManager;

    .line 209
    iget-object v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_NetworkLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->m_NetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    :goto_1
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "@@@voOSAnalytics"

    const-string v2, "GPS Location update failed, information is %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :catch_1
    move-exception v0

    .line 212
    const-string v1, "@@@voOSAnalytics"

    const-string v2, "Network Location update failed, information is %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method getExportPacket()Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 280
    const-string v0, ""

    .line 281
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_GetExportPacket(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFPS()F
    .locals 4

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 317
    const/high16 v0, -0x40800000    # -1.0f

    .line 318
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_GetFPS(J)F

    move-result v0

    goto :goto_0
.end method

.method public setAgentAppID(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 260
    const v0, -0x7ffffeff

    .line 262
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_SetAgentAppID(JLjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setAgentCUID(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 268
    const v0, -0x7ffffeff

    .line 269
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_SetAgentCUID(JLjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setDisplayType(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;)I
    .locals 4

    .prologue
    .line 333
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 334
    const v0, -0x7ffffeff

    .line 336
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_TYPE;->getValue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_SetDisplayType(JI)I

    move-result v0

    goto :goto_0
.end method

.method public setFoundationCUID(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 246
    const v0, -0x7ffffeff

    .line 247
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_SetFoundationCUID(JLjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public start()I
    .locals 4

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 300
    const v0, -0x7ffffeff

    .line 304
    :goto_0
    return v0

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->startTimer()Z

    .line 304
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_Start(J)I

    move-result v0

    goto :goto_0
.end method

.method public stop()I
    .locals 4

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 324
    const v0, -0x7ffffeff

    .line 328
    :goto_0
    return v0

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->closeTimer()Z

    .line 328
    iget-wide v0, p0, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSAnalytics;->native_Analytics_Stop(J)I

    move-result v0

    goto :goto_0
.end method
