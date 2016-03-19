.class public Lcom/visualon/OSMPUtils/voLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;
    }
.end annotation


# static fields
.field private static final JAVA_MODULE_ID:Ljava/lang/String; = "090B0000"

.field private static final LIB_NAME:Ljava/lang/String; = "voLogSys"

.field private static final SEPARATOR:Ljava/lang/String; = ","

.field private static isInitialized:Z

.field private static mJNILoaded:Z

.field private static mNativeContext:J

.field private static final m_bPrintLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    sput-boolean v2, Lcom/visualon/OSMPUtils/voLog;->mJNILoaded:Z

    .line 37
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/visualon/OSMPUtils/voLog;->mNativeContext:J

    .line 38
    sput-boolean v2, Lcom/visualon/OSMPUtils/voLog;->isInitialized:Z

    .line 222
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static varargs crash(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 147
    const-string v2, "Crash"

    const/4 v3, 0x7

    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public static varargs crash2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 142
    const-string v0, ""

    const-string v2, "Crash"

    const/4 v3, 0x7

    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 127
    const-string v2, "Debug"

    const/4 v3, 0x3

    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public static varargs d2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 123
    const-string v0, ""

    const-string v2, "Debug"

    const/4 v3, 0x3

    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 118
    const-string v2, "Error"

    const/4 v3, 0x6

    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public static varargs e2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 114
    const-string v0, ""

    const-string v2, "Error"

    const/4 v3, 0x6

    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method private static enablePrintLog()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 74
    return-object v0
.end method

.method private static getLogInfo(Ljava/lang/StackTraceElement;Ljava/lang/String;Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 160
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    .line 163
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "HH:mm:ss|SSS "

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v6, "@@@VOLOG,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v6, "%7s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v6, " ModuleID[090B0000],"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " ThreadID["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Line#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 109
    const-string v2, "Info"

    const/4 v3, 0x4

    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public static varargs i2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 105
    const-string v0, ""

    const-string v2, "Info"

    const/4 v3, 0x4

    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public static initLogLib(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 178
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLog;->isInitialized:Z

    if-eqz v0, :cond_1

    .line 179
    const/4 v0, 0x0

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    invoke-static {p0}, Lcom/visualon/OSMPUtils/voLog;->loadJNI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    const v0, -0x7ffffff1

    goto :goto_0

    .line 184
    :cond_2
    sget-wide v0, Lcom/visualon/OSMPUtils/voLog;->mNativeContext:J

    invoke-static {v0, v1, p0}, Lcom/visualon/OSMPUtils/voLog;->nativeInit(JLjava/lang/String;)I

    move-result v0

    .line 185
    if-nez v0, :cond_0

    .line 186
    const/4 v1, 0x1

    sput-boolean v1, Lcom/visualon/OSMPUtils/voLog;->isInitialized:Z

    goto :goto_0
.end method

.method private static loadJNI(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 226
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLog;->mJNILoaded:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/visualon/OSMPUtils/voLog;->mJNILoaded:Z

    .line 230
    :goto_0
    return v0

    .line 228
    :cond_0
    const-string v0, "voLogSys"

    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadReachableLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 230
    sput-boolean v0, Lcom/visualon/OSMPUtils/voLog;->mJNILoaded:Z

    goto :goto_0
.end method

.method private static native nativeInit(JLjava/lang/String;)I
.end method

.method private static native nativeLog(JIILjava/lang/String;)I
.end method

.method private static native nativeUninit(J)I
.end method

.method private static varargs printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v1, ""

    .line 81
    if-nez p1, :cond_1

    const-string v0, "No Message."

    .line 83
    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :goto_2
    const/4 v1, 0x4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v1, v2, v1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, p4, v0}, Lcom/visualon/OSMPUtils/voLog;->getLogInfo(Ljava/lang/StackTraceElement;Ljava/lang/String;Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    sget-wide v2, Lcom/visualon/OSMPUtils/voLog;->mNativeContext:J

    invoke-virtual {p4}, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->getValue()I

    move-result v1

    invoke-static {v2, v3, p3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->nativeLog(JIILjava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 81
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public static uninitLogLib()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 192
    sget-boolean v1, Lcom/visualon/OSMPUtils/voLog;->isInitialized:Z

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return v0

    .line 194
    :cond_0
    sget-wide v2, Lcom/visualon/OSMPUtils/voLog;->mNativeContext:J

    invoke-static {v2, v3}, Lcom/visualon/OSMPUtils/voLog;->nativeUninit(J)I

    move-result v1

    .line 195
    if-nez v1, :cond_1

    .line 196
    sput-boolean v0, Lcom/visualon/OSMPUtils/voLog;->isInitialized:Z

    :cond_1
    move v0, v1

    .line 197
    goto :goto_0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 100
    const-string v2, "Verbose"

    const/4 v3, 0x2

    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public static varargs v2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 95
    const-string v0, ""

    const-string v2, "Verbose"

    const/4 v3, 0x2

    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 136
    const-string v2, "Warning"

    const/4 v3, 0x5

    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public static varargs w2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 132
    const-string v0, ""

    const-string v2, "Warning"

    const/4 v3, 0x5

    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    .line 133
    return-void
.end method
