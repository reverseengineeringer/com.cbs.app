.class public Lcom/visualon/OSMPUtils/voOSMPDRM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "voDRMWrapJni"

.field private static final TAG:Ljava/lang/String; = "@@@voOSMPDRM"

.field private static mJNILoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mJNILoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static loadJNI(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 66
    sget-boolean v0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mJNILoaded:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mJNILoaded:Z

    .line 69
    :goto_0
    return v0

    .line 67
    :cond_0
    const-string v0, "voDRMWrapJni"

    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 68
    sput-boolean v0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mJNILoaded:Z

    if-nez v0, :cond_1

    const-string v0, "@@@voOSMPDRM"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_1
    sget-boolean v0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mJNILoaded:Z

    goto :goto_0
.end method

.method private native nativeCreatDRM(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeDestoryDRM(Ljava/lang/Long;)I
.end method


# virtual methods
.method public creatDRM(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v0, -0x7ffffff1

    .line 32
    const-string v1, "@@@voOSMPDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Creat DRM handle by lib name "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {p2}, Lcom/visualon/OSMPUtils/voOSMPDRM;->loadJNI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    :goto_0
    return v0

    .line 39
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/visualon/OSMPUtils/voOSMPDRM;->nativeCreatDRM(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    const-string v1, "@@@voOSMPDRM"

    const-string v2, "Call native function creatDRM error."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public destoryDRM(Ljava/lang/Long;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50
    const-string v0, "@@@voOSMPDRM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " destory DRM handle 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :try_start_0
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voOSMPDRM;->nativeDestoryDRM(Ljava/lang/Long;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    :goto_0
    return v0

    .line 56
    :catch_0
    move-exception v0

    const-string v0, "@@@voOSMPDRM"

    const-string v1, "Call native function nativeDestoryDRM error."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const v0, -0x7ffffff1

    goto :goto_0
.end method
