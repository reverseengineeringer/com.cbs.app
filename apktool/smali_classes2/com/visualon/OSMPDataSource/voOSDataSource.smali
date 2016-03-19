.class public final Lcom/visualon/OSMPDataSource/voOSDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;,
        Lcom/visualon/OSMPDataSource/voOSDataSource$onRequestListener;,
        Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;
    }
.end annotation


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "voOSSource"

.field private static final TAG:Ljava/lang/String; = "@@@OSMPDataSource.java"

.field private static final VOOSMP_SRC_ADAPTIVE_STREAMING_ERROR_EVENT_STREAMING_DOWNLOADFAIL:I = 0x4

.field private static final VO_PID_ADAPTIVESTREAMING_STREAMTYPE:I = 0x0

.field private static final VO_RET_SOURCE2_BASE:I = -0x7a000000

.field private static final VO_RET_SOURCE2_LINKFAIL:I = -0x79ffffed

.field private static final VO_RET_SOURCE2_NEEDRETRY:I = -0x79fffffe

.field private static final VO_RET_SOURCE2_ONECHUNKFAIL:I = -0x79ffffee

.field private static final VO_SOURCE2_ADAPTIVESTREAMING_AUDIO:I = 0x0

.field private static final VO_SOURCE2_ADAPTIVESTREAMING_AUDIOVIDEO:I = 0x2

.field private static final VO_SOURCE2_ADAPTIVESTREAMING_HEADDATA:I = 0x3

.field private static final VO_SOURCE2_ADAPTIVESTREAMING_SUBTITLE:I = 0x4

.field private static final VO_SOURCE2_ADAPTIVESTREAMING_VIDEO:I = 0x1

.field private static mJNILoaded:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

.field private mEventListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;

.field private mNativeContext:J

.field private mOpenFinished:Z

.field private mPackageName:Ljava/lang/String;

.field private mRequestListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onRequestListener;

.field private mSeeking:Z

.field private m_sProgramType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mJNILoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    .line 80
    iput-object v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->m_sProgramType:I

    .line 103
    iput-object v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mPackageName:Ljava/lang/String;

    .line 252
    iput-object p1, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v1, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    if-nez v1, :cond_0

    .line 257
    new-instance v1, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;-><init>(Lcom/visualon/OSMPDataSource/voOSDataSource;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    .line 265
    :cond_0
    :goto_0
    iput-wide v4, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    .line 267
    iput-object v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;

    .line 268
    iput-object v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mRequestListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onRequestListener;

    .line 269
    iput-boolean v3, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mOpenFinished:Z

    .line 270
    iput-boolean v3, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mSeeking:Z

    .line 272
    iput-object p2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mPackageName:Ljava/lang/String;

    .line 273
    invoke-static {p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->loadJNI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 280
    :goto_1
    return-void

    .line 258
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v1, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    if-nez v1, :cond_0

    .line 260
    new-instance v1, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;-><init>(Lcom/visualon/OSMPDataSource/voOSDataSource;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    goto :goto_0

    .line 262
    :cond_2
    iput-object v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    goto :goto_0

    .line 277
    :cond_3
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 278
    invoke-direct {p0, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeCreate(Ljava/lang/Long;)I

    .line 279
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    goto :goto_1
.end method

.method private CheckCallBackParam(IJJLjava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 960
    const v2, 0x2000030

    if-ne v2, p1, :cond_0

    .line 962
    const-wide/16 v2, 0x3

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 964
    move-wide/from16 v0, p4

    long-to-int v2, v0

    iput v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->m_sProgramType:I

    .line 965
    const-string v2, "@@@OSMPDataSource.java"

    const-string v3, "EventHandling, VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_PROGRAM_TYPE is %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->m_sProgramType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    :cond_0
    if-nez p6, :cond_1

    .line 970
    const/4 v3, 0x0

    .line 1075
    :goto_0
    return-object v3

    .line 972
    :cond_1
    const v2, 0x2000030

    if-ne v2, p1, :cond_5

    .line 974
    const-wide/16 v2, 0x4

    cmp-long v2, p2, v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x5

    cmp-long v2, p2, v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x6

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    .line 978
    :cond_2
    new-instance v3, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;

    invoke-direct {v3}, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;-><init>()V

    .line 979
    check-cast p6, Landroid/os/Parcel;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->parse(Landroid/os/Parcel;)Z

    goto :goto_0

    .line 982
    :cond_3
    const-wide/16 v2, 0xb

    cmp-long v2, p2, v2

    if-nez v2, :cond_4

    .line 983
    check-cast p6, Landroid/os/Parcel;

    .line 984
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 985
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 986
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 987
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 988
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 989
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 990
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 991
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->recycle()V

    .line 992
    new-instance v3, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;

    invoke-direct/range {v3 .. v13}, Lcom/visualon/OSMPUtils/voOSChunkSampleImpl;-><init>(IJIJJJ)V

    goto :goto_0

    .line 994
    :cond_4
    const-wide/16 v2, 0x7

    cmp-long v2, v2, p2

    if-nez v2, :cond_7

    .line 996
    new-instance v3, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;

    invoke-direct {v3}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;-><init>()V

    .line 997
    check-cast p6, Landroid/os/Parcel;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->parse(Landroid/os/Parcel;)Z

    goto :goto_0

    .line 1001
    :cond_5
    const v2, 0x2000050

    if-ne v2, p1, :cond_7

    .line 1003
    const-wide/16 v2, 0x4

    cmp-long v2, v2, p2

    if-nez v2, :cond_6

    .line 1005
    new-instance v3, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;

    invoke-direct {v3}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;-><init>()V

    .line 1006
    check-cast p6, Landroid/os/Parcel;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/visualon/OSMPUtils/voOSPlaylistDataImpl;->parse(Landroid/os/Parcel;)Z

    goto :goto_0

    .line 1009
    :cond_6
    new-instance v3, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;

    invoke-direct {v3}, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;-><init>()V

    .line 1010
    check-cast p6, Landroid/os/Parcel;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->parse(Landroid/os/Parcel;)Z

    goto/16 :goto_0

    .line 1014
    :cond_7
    const v2, 0x2000020

    if-ne v2, p1, :cond_a

    .line 1015
    check-cast p6, Landroid/os/Parcel;

    .line 1016
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1017
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1018
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1020
    if-gtz v6, :cond_9

    .line 1021
    const/4 v2, 0x1

    new-array v7, v2, [B

    .line 1024
    :goto_1
    if-lez v6, :cond_8

    .line 1025
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1026
    :cond_8
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1027
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->recycle()V

    .line 1029
    new-instance v3, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;-><init>(JI[BILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1023
    :cond_9
    new-array v7, v6, [B

    goto :goto_1

    .line 1033
    :cond_a
    const v2, 0x3000004

    if-ne v2, p1, :cond_c

    .line 1034
    check-cast p6, Landroid/os/Parcel;

    .line 1035
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1036
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1037
    const/4 v2, 0x0

    .line 1038
    if-lez v3, :cond_b

    .line 1039
    new-array v2, v3, [B

    .line 1040
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1041
    const-string v4, "@@@OSMPDataSource.java"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CheckCallBackParam  uSize = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  dt = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    :cond_b
    invoke-virtual/range {p6 .. p6}, Landroid/os/Parcel;->recycle()V

    .line 1044
    new-instance v3, Lcom/visualon/OSMPUtils/voOSDRMInit;

    move-wide/from16 v0, p2

    invoke-direct {v3, v0, v1, v2}, Lcom/visualon/OSMPUtils/voOSDRMInit;-><init>(J[B)V

    goto/16 :goto_0

    .line 1047
    :cond_c
    const v2, 0x3000003

    if-eq p1, v2, :cond_d

    const v2, 0x3000002

    if-ne p1, v2, :cond_10

    .line 1052
    :cond_d
    check-cast p6, Landroid/os/Parcel;

    .line 1053
    new-instance v2, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;

    invoke-direct {v2}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;-><init>()V

    .line 1054
    if-eqz p6, :cond_e

    .line 1055
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->parse(Landroid/os/Parcel;)Z

    .line 1057
    :cond_e
    const v3, 0x3000003

    if-ne p1, v3, :cond_f

    .line 1060
    const-string v3, "@@@OSMPDataSource.java"

    const-string v4, "DataSource handleRequest, VOOSMP_SRC_CB_IO_HTTP_Download_Failed, ID is %s, reason is %s, response is %s, url is %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getReason()Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v7

    invoke-virtual {v7}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getResponse()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getURL()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move-object v3, v2

    .line 1071
    goto/16 :goto_0

    .line 1066
    :cond_f
    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getURL()Ljava/lang/String;

    move-result-object v3

    .line 1067
    const-string v4, "@@@OSMPDataSource.java"

    const-string v5, "DataSource handleRequest, VOOSMP_SRC_CB_IO_HTTP_Start_Download, ID is %s, url is %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->getURL()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    goto :goto_2

    .line 1075
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/visualon/OSMPDataSource/voOSDataSource;)J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPDataSource/voOSDataSource;)Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;

    return-object v0
.end method

.method private static loadJNI(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1114
    sget-boolean v0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mJNILoaded:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mJNILoaded:Z

    .line 1119
    :goto_0
    return v0

    .line 1115
    :cond_0
    invoke-static {p0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadOneLibInPath(Ljava/lang/String;)Z

    move-result v0

    .line 1116
    sput-boolean v0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mJNILoaded:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mJNILoaded:Z

    goto :goto_0

    .line 1117
    :cond_1
    const-string v0, "voOSSource"

    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1118
    sput-boolean v0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mJNILoaded:Z

    if-nez v0, :cond_2

    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    :cond_2
    sget-boolean v0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mJNILoaded:Z

    goto :goto_0
.end method

.method private native nativeClearSelection(J)I
.end method

.method private native nativeClose(J)I
.end method

.method private native nativeCommitSelection(J)I
.end method

.method private native nativeCreate(Ljava/lang/Long;)I
.end method

.method private native nativeDestroy(J)I
.end method

.method private native nativeFlush(J)I
.end method

.method private native nativeGetAudioCount(J)I
.end method

.method private native nativeGetCurTrackInfo(JI)Ljava/lang/Object;
.end method

.method private native nativeGetCurrTrackPlaying(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I
.end method

.method private native nativeGetCurrTrackSelection(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I
.end method

.method private native nativeGetDuration(J)I
.end method

.method private native nativeGetParam(JI)Ljava/lang/Object;
.end method

.method private native nativeGetParam2(JILjava/lang/Object;)Ljava/lang/Object;
.end method

.method private native nativeGetProgramCount(J)I
.end method

.method private native nativeGetProgramInfo(JI)Ljava/lang/Object;
.end method

.method private native nativeGetPropertyCount(JII)I
.end method

.method private native nativeGetPropertyKeyName(JIII)Ljava/lang/String;
.end method

.method private native nativeGetPropertyValue(JIII)Ljava/lang/String;
.end method

.method private native nativeGetSample(JII)Ljava/lang/Object;
.end method

.method private native nativeGetSubtitleCount(J)I
.end method

.method private native nativeGetSubtitleLanguageCount(J)I
.end method

.method private native nativeGetSubtitleLanguageInfo(JI)Ljava/lang/Object;
.end method

.method private native nativeGetVideoCount(J)I
.end method

.method private native nativeInit(JLjava/lang/String;Ljava/lang/Object;IJLcom/visualon/OSMPUtils/voOSInitParam;J)I
.end method

.method private native nativeIsAudioAvailable(JI)Z
.end method

.method private native nativeIsSubtitleAvailable(JI)Z
.end method

.method private native nativeIsVideoAvailable(JI)Z
.end method

.method private native nativeOpen(J)I
.end method

.method private native nativePause(J)I
.end method

.method private native nativeRun(J)I
.end method

.method private native nativeSelectAudio(JI)I
.end method

.method private native nativeSelectProgram(JI)I
.end method

.method private native nativeSelectStream(JI)I
.end method

.method private native nativeSelectSubtitle(JI)I
.end method

.method private native nativeSelectSubtitleLanguage(JI)I
.end method

.method private native nativeSelectTrack(JI)I
.end method

.method private native nativeSelectVideo(JI)I
.end method

.method private native nativeSendBuffer(JI)I
.end method

.method private native nativeSetParam(JILjava/lang/Object;)I
.end method

.method private native nativeSetPos(JI)I
.end method

.method private native nativeSetPosTolerance(JIII)I
.end method

.method private native nativeStop(J)I
.end method

.method private native nativeUninit(J)I
.end method

.method private osmpCallBack(IJJLjava/lang/Object;)V
    .locals 6

    .prologue
    .line 936
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "DataSource CallBack, nID = 0x%X, param1 is 0x%x, param2 is 0x%x."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 937
    invoke-direct/range {p0 .. p6}, Lcom/visualon/OSMPDataSource/voOSDataSource;->CheckCallBackParam(IJJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_0

    move-object p6, v0

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    long-to-int v1, p2

    long-to-int v2, p4

    invoke-virtual {v0, p1, v1, v2, p6}, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 955
    iget-object v1, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 957
    return-void
.end method


# virtual methods
.method public final ClearSelection()I
    .locals 4

    .prologue
    .line 1344
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1346
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    const v0, -0x7ffffeff

    .line 1349
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeClearSelection(J)I

    move-result v0

    goto :goto_0
.end method

.method public final Close()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "Close - "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 397
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeClose(J)I

    move-result v0

    .line 398
    const-string v1, "@@@OSMPDataSource.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Close + , return value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    return v0
.end method

.method public final CommitSelection()I
    .locals 4

    .prologue
    .line 1329
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1331
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1332
    const v0, -0x7ffffeff

    .line 1334
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeCommitSelection(J)I

    move-result v0

    goto :goto_0
.end method

.method public final Destroy()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 363
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "Destroy -"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    iput-object v4, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mContext:Landroid/content/Context;

    .line 366
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeDestroy(J)I

    move-result v0

    .line 367
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    .line 368
    iput-object v4, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;

    .line 369
    iput-object v4, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mRequestListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onRequestListener;

    .line 370
    iput-object v4, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    .line 371
    iput-object v4, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mPackageName:Ljava/lang/String;

    .line 372
    const/4 v1, -0x1

    iput v1, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->m_sProgramType:I

    .line 373
    const-string v1, "@@@OSMPDataSource.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Destroy + , return value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    return v0
.end method

.method public final GetAudioCount()I
    .locals 4

    .prologue
    .line 1193
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1195
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1196
    const v0, -0x7ffffeff

    .line 1199
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetAudioCount(J)I

    move-result v0

    goto :goto_0
.end method

.method public final GetCurTrackInfo(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 546
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetCurTrackInfo(JI)Ljava/lang/Object;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_0

    .line 549
    check-cast v0, Landroid/os/Parcel;

    .line 550
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 551
    new-instance v1, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;

    invoke-direct {v1}, Lcom/visualon/OSMPUtils/voOSTrackInfoImpl;-><init>()V

    .line 552
    invoke-interface {v1, v0}, Lcom/visualon/OSMPUtils/voOSTrackInfo;->parse(Landroid/os/Parcel;)Z

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 556
    :cond_0
    return-object v0
.end method

.method public final GetCurrTrackPlaying(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 7

    .prologue
    .line 1444
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1446
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1447
    const v0, -0x7ffffeff

    .line 1449
    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetCurrTrackPlaying(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method

.method public final GetCurrTrackSelection(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 7

    .prologue
    .line 1424
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1426
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1427
    const v0, -0x7ffffeff

    .line 1429
    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetCurrTrackSelection(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method

.method public final GetDuration()I
    .locals 2

    .prologue
    .line 478
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetDuration(J)I

    move-result v0

    return v0
.end method

.method public final GetParam(I)Ljava/lang/Object;
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 627
    sparse-switch p1, :sswitch_data_0

    .line 677
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetParam(JI)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    .line 629
    :sswitch_0
    sget-boolean v0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mJNILoaded:Z

    if-nez v0, :cond_0

    .line 630
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 636
    :sswitch_1
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetParam(JI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 637
    if-nez v0, :cond_2

    .line 638
    const/4 v0, 0x0

    goto :goto_0

    .line 640
    :cond_2
    new-instance v1, Lcom/visualon/OSMPUtils/voOSDVRInfoImpl;

    aget-wide v2, v0, v9

    aget-wide v4, v0, v10

    aget-wide v6, v0, v11

    aget-wide v8, v0, v12

    invoke-direct/range {v1 .. v9}, Lcom/visualon/OSMPUtils/voOSDVRInfoImpl;-><init>(JJJJ)V

    move-object v0, v1

    .line 641
    goto :goto_0

    .line 643
    :sswitch_2
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetParam(JI)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [I

    .line 644
    if-nez v8, :cond_3

    .line 645
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "can not get RTSPStatus"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    const/4 v0, 0x0

    goto :goto_0

    .line 650
    :cond_3
    aget v0, v8, v9

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    move-result-object v1

    .line 651
    new-instance v0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;

    aget v2, v8, v10

    aget v3, v8, v11

    aget v4, v8, v12

    aget v5, v8, v13

    const/4 v6, 0x5

    aget v6, v8, v6

    const/4 v7, 0x6

    aget v7, v8, v7

    invoke-direct/range {v0 .. v7}, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;-><init>(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;IIIIII)V

    .line 655
    const-string v2, "@@@OSMPDataSource.java"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RTSPStatus-nTrackType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    const-string v1, "@@@OSMPDataSource.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RTSPStatus-uPacketRecved:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v8, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    const-string v1, "@@@OSMPDataSource.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RTSPStatus-uPacketDuplicated:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v8, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    const-string v1, "@@@OSMPDataSource.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RTSPStatus-uPacketLost:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v8, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    const-string v1, "@@@OSMPDataSource.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RTSPStatus-uPacketSent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v8, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    const-string v1, "@@@OSMPDataSource.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RTSPStatus-uAverageJitter:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    const-string v1, "@@@OSMPDataSource.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RTSPStatus-uAverageLatency:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x6

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 664
    :sswitch_3
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetParam(JI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 665
    if-nez v0, :cond_1

    .line 667
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "GetParam VOOSMP_SRC_PID_BA_WORKMODE, id = %s, occur error, return null"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 627
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000004 -> :sswitch_0
        0x3000015 -> :sswitch_1
        0x3000016 -> :sswitch_3
        0x3000017 -> :sswitch_2
    .end sparse-switch
.end method

.method public final GetParam(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 606
    if-nez p2, :cond_0

    .line 607
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->GetParam(I)Ljava/lang/Object;

    move-result-object v0

    .line 609
    :goto_0
    return-object v0

    .line 608
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetParam2(JILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final GetProgramCount()I
    .locals 2

    .prologue
    .line 508
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetProgramCount(J)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized GetProgramInfo(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 522
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetProgramInfo(JI)Ljava/lang/Object;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_0

    .line 525
    check-cast v0, Landroid/os/Parcel;

    .line 526
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 527
    new-instance v1, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;

    invoke-direct {v1}, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;-><init>()V

    .line 528
    invoke-interface {v1, v0}, Lcom/visualon/OSMPUtils/voOSProgramInfo;->parse(Landroid/os/Parcel;)Z

    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 532
    :cond_0
    monitor-exit p0

    return-object v0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final GetPropertyCount(II)I
    .locals 4

    .prologue
    .line 1363
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1365
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1366
    const v0, -0x7ffffeff

    .line 1370
    :goto_0
    return v0

    .line 1368
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetPropertyCount(JII)I

    move-result v0

    goto :goto_0
.end method

.method public final GetPropertyKeyName(III)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1385
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1387
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1388
    const/4 v0, 0x0

    .line 1390
    :goto_0
    return-object v0

    :cond_0
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetPropertyKeyName(JIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final GetPropertyValue(III)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1405
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1407
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1408
    const/4 v0, 0x0

    .line 1410
    :goto_0
    return-object v0

    :cond_0
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetPropertyValue(JIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final GetSample(II)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 494
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetSample(JII)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final GetSubtitleCount()I
    .locals 4

    .prologue
    .line 1210
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1212
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1213
    const v0, -0x7ffffeff

    .line 1216
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetSubtitleCount(J)I

    move-result v0

    goto :goto_0
.end method

.method public final GetSubtitleLanguageInfo()Ljava/util/List;
    .locals 8
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

    const/4 v2, 0x0

    .line 896
    iget-wide v4, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 898
    const-string v1, "@@@OSMPDataSource.java"

    const-string v3, "VOOSMP_ERR_Uninitialize"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 913
    :cond_0
    :goto_0
    return-object v0

    .line 903
    :cond_1
    iget-wide v4, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v4, v5}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetSubtitleLanguageCount(J)I

    move-result v3

    .line 904
    if-eqz v3, :cond_0

    .line 907
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 908
    :goto_1
    if-ge v2, v3, :cond_2

    .line 910
    iget-wide v4, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v4, v5, v2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetSubtitleLanguageInfo(JI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSSubtitleLanguageImpl;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 913
    goto :goto_0
.end method

.method public final GetVideoCount()I
    .locals 4

    .prologue
    .line 1177
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1179
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1180
    const v0, -0x7ffffeff

    .line 1183
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeGetVideoCount(J)I

    move-result v0

    goto :goto_0
.end method

.method public final Init(Ljava/util/List;Ljava/lang/Object;IILcom/visualon/OSMPUtils/voOSInitParam;I)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visualon/OSMPUtils/voOSOption;",
            ">;",
            "Ljava/lang/Object;",
            "II",
            "Lcom/visualon/OSMPUtils/voOSInitParam;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 319
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v2, p2

    .line 321
    check-cast v2, Ljava/lang/String;

    .line 322
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    move-object/from16 v7, p2

    .line 326
    :goto_0
    move/from16 v0, p4

    int-to-long v9, v0

    .line 327
    move/from16 v0, p6

    int-to-long v12, v0

    .line 328
    const-string v2, "@@@OSMPDataSource.java"

    const-string v3, "sourceType is %d, initParamFlag is %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-wide v4, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    iget-object v6, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mPackageName:Ljava/lang/String;

    move-object v3, p0

    move/from16 v8, p3

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v13}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeInit(JLjava/lang/String;Ljava/lang/Object;IJLcom/visualon/OSMPUtils/voOSInitParam;J)I

    move-result v2

    .line 334
    return v2

    :cond_0
    move-object/from16 v7, p2

    goto :goto_0
.end method

.method public final IsAudioAvailable(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1296
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1298
    const-string v1, "@@@OSMPDataSource.java"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1302
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeIsAudioAvailable(JI)Z

    move-result v0

    goto :goto_0
.end method

.method public final IsSubtitleAvailable(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1313
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1315
    const-string v1, "@@@OSMPDataSource.java"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1319
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeIsSubtitleAvailable(JI)Z

    move-result v0

    goto :goto_0
.end method

.method public final IsVideoAvailable(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1278
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1280
    const-string v1, "@@@OSMPDataSource.java"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1284
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeIsVideoAvailable(JI)Z

    move-result v0

    goto :goto_0
.end method

.method public final Open()I
    .locals 2

    .prologue
    .line 385
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeOpen(J)I

    move-result v0

    return v0
.end method

.method public final Pause()I
    .locals 2

    .prologue
    .line 420
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativePause(J)I

    move-result v0

    return v0
.end method

.method public final RequestCallBack(IJJLjava/lang/Object;)I
    .locals 6

    .prologue
    .line 1081
    invoke-direct/range {p0 .. p6}, Lcom/visualon/OSMPDataSource/voOSDataSource;->CheckCallBackParam(IJJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1082
    if-eqz v0, :cond_0

    move-object p6, v0

    .line 1085
    :cond_0
    const v0, 0x2000050

    if-eq v0, p1, :cond_1

    const v0, 0x2000030

    if-eq v0, p1, :cond_1

    const v0, 0x2000040

    if-ne v0, p1, :cond_3

    .line 1089
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    if-eqz v0, :cond_2

    .line 1091
    iget-object v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    long-to-int v1, p2

    long-to-int v2, p4

    invoke-virtual {v0, p1, v1, v2, p6}, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventHandler:Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1100
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mRequestListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onRequestListener;

    if-eqz v0, :cond_4

    .line 1101
    iget-object v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mRequestListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onRequestListener;

    long-to-int v1, p2

    long-to-int v2, p4

    invoke-interface {v0, p1, v1, v2, p6}, Lcom/visualon/OSMPDataSource/voOSDataSource$onRequestListener;->onRequest(IIILjava/lang/Object;)I

    move-result v0

    .line 1106
    :goto_1
    return v0

    .line 1096
    :cond_3
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "onRequestCallBack, nID is 0x%X, param1 is 0x%X, param2 is 0x%X,"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1103
    :cond_4
    const v0, -0x7fffefff

    goto :goto_1
.end method

.method public final Run()I
    .locals 2

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mOpenFinished:Z

    .line 410
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeRun(J)I

    move-result v0

    return v0
.end method

.method public final SelectAudio(I)I
    .locals 4

    .prologue
    .line 1244
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1246
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1247
    const v0, -0x7ffffeff

    .line 1249
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSelectAudio(JI)I

    move-result v0

    goto :goto_0
.end method

.method public final SelectProgram(I)I
    .locals 2

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSelectProgram(JI)I

    move-result v0

    return v0
.end method

.method public final SelectStream(I)I
    .locals 2

    .prologue
    .line 579
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSelectStream(JI)I

    move-result v0

    return v0
.end method

.method public final SelectSubtitle(I)I
    .locals 4

    .prologue
    .line 1261
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1263
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1264
    const v0, -0x7ffffeff

    .line 1266
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSelectSubtitle(JI)I

    move-result v0

    goto :goto_0
.end method

.method public final SelectSubtitleLanguage(I)I
    .locals 4

    .prologue
    .line 924
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 926
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_SRC_ERR_SOURCE_UNINITIALIZE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 927
    const v0, -0x7fffefff

    .line 930
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSelectSubtitleLanguage(JI)I

    move-result v0

    goto :goto_0
.end method

.method public final SelectTrack(I)I
    .locals 2

    .prologue
    .line 590
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSelectTrack(JI)I

    move-result v0

    return v0
.end method

.method public final SelectVideo(I)I
    .locals 4

    .prologue
    .line 1227
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1229
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1230
    const v0, -0x7ffffeff

    .line 1233
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSelectVideo(JI)I

    move-result v0

    goto :goto_0
.end method

.method public final SendBuffer(I)I
    .locals 2

    .prologue
    .line 601
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSendBuffer(JI)I

    move-result v0

    return v0
.end method

.method public final SetParam(ILjava/lang/Object;)I
    .locals 7

    .prologue
    const/16 v5, 0x6f

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 719
    const/16 v1, 0x1a

    if-eq p1, v1, :cond_0

    const v1, 0x300000d

    if-ne p1, v1, :cond_2

    .line 722
    :cond_0
    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 723
    check-cast p2, Lcom/visualon/OSMPUtils/voOSPerformanceData;

    .line 724
    invoke-interface {p2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->CodecType()I

    move-result v2

    aput v2, v1, v0

    .line 725
    invoke-interface {p2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->BitRate()I

    move-result v0

    aput v0, v1, v6

    .line 726
    invoke-interface {p2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->VideoWidth()I

    move-result v0

    aput v0, v1, v4

    .line 727
    const/4 v0, 0x3

    invoke-interface {p2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->VideoHeight()I

    move-result v2

    aput v2, v1, v0

    .line 728
    const/4 v0, 0x4

    invoke-interface {p2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->ProfileLevel()I

    move-result v2

    aput v2, v1, v0

    .line 729
    const/4 v0, 0x5

    invoke-interface {p2}, Lcom/visualon/OSMPUtils/voOSPerformanceData;->FPS()I

    move-result v2

    aput v2, v1, v0

    .line 730
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSetParam(JILjava/lang/Object;)I

    move-result v0

    .line 883
    :cond_1
    :goto_0
    return v0

    .line 733
    :cond_2
    const v1, 0x300001a

    if-ne p1, v1, :cond_3

    .line 735
    new-array v1, v4, [Ljava/lang/String;

    .line 736
    check-cast p2, Lcom/visualon/OSMPUtils/voOSHTTPHeader;

    .line 737
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 738
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->getHeaderValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    .line 739
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSetParam(JILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 742
    :cond_3
    const v1, 0x300001b

    if-ne p1, v1, :cond_4

    .line 744
    new-array v1, v4, [I

    .line 745
    check-cast p2, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;

    .line 746
    const-string v2, "@@@OSMPDataSource.java"

    const-string v3, "SetParam VOOSMP_SRC_PID_RTSP_CONNECTION_PORT, audio is %d video is %d "

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->AudioConnectPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->VideoConnectPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->AudioConnectPort()I

    move-result v2

    aput v2, v1, v0

    .line 748
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSConnectPortInfoImpl;->VideoConnectPort()I

    move-result v0

    aput v0, v1, v6

    .line 749
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSetParam(JILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 752
    :cond_4
    const v1, 0x3000026

    if-ne p1, v1, :cond_5

    .line 754
    new-array v1, v4, [I

    .line 755
    check-cast p2, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;

    .line 756
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->getUpper()I

    move-result v2

    aput v2, v1, v0

    .line 757
    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSSrcBAThreshold;->getLower()I

    move-result v0

    aput v0, v1, v6

    .line 758
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSetParam(JILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 761
    :cond_5
    const v1, 0x3000036

    if-ne p1, v1, :cond_8

    .line 763
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 764
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSetParam(JILjava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    .line 765
    :cond_6
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 766
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSetParam(JILjava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    .line 768
    :cond_7
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 771
    :cond_8
    if-eq p1, v5, :cond_9

    const v1, 0x3010010

    if-eq p1, v1, :cond_9

    const/16 v1, 0x37

    if-ne p1, v1, :cond_c

    .line 776
    :cond_9
    check-cast p2, Ljava/lang/String;

    .line 777
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 780
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 783
    const-string v0, "file:///"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 784
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 789
    :cond_a
    :try_start_0
    const-string v0, "subtitle_downloaded"

    const-string v1, ".sdld"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 792
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 793
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 794
    if-lez v1, :cond_b

    .line 795
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 797
    :cond_b
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    const/16 v1, 0x6e

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSetParam(JILjava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :goto_1
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, v5, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSetParam(JILjava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    .line 883
    :cond_c
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSetParam(JILjava/lang/Object;)I

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final SetPos(I)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, p1, v0, v0}, Lcom/visualon/OSMPDataSource/voOSDataSource;->SetPosTolerance(III)I

    move-result v0

    return v0
.end method

.method public final SetPosTolerance(III)I
    .locals 7

    .prologue
    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mSeeking:Z

    .line 466
    iget-wide v2, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeSetPosTolerance(JIII)I

    move-result v0

    .line 467
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mSeeking:Z

    .line 468
    return v0
.end method

.method public final Stop()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 431
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "Stop - "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mSeeking:Z

    .line 434
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeStop(J)I

    move-result v0

    .line 435
    iput-boolean v4, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mSeeking:Z

    .line 436
    const-string v1, "@@@OSMPDataSource.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stop + , return value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    return v0
.end method

.method public final Uninit()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 344
    const-string v0, "@@@OSMPDataSource.java"

    const-string v1, "Uninit -"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    iget-wide v0, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPDataSource/voOSDataSource;->nativeUninit(J)I

    move-result v0

    .line 351
    iput-boolean v4, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mOpenFinished:Z

    .line 353
    const-string v1, "@@@OSMPDataSource.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Uninit + , return value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    return v0
.end method

.method public final setEventListener(Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mEventListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onEventListener;

    .line 187
    return-void
.end method

.method public final setRequestListener(Lcom/visualon/OSMPDataSource/voOSDataSource$onRequestListener;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/visualon/OSMPDataSource/voOSDataSource;->mRequestListener:Lcom/visualon/OSMPDataSource/voOSDataSource$onRequestListener;

    .line 198
    return-void
.end method
