.class public Lcom/visualon/OSMPUtils/voLua;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "voLua"

.field private static final TAG:Ljava/lang/String; = "@@@voLua.java"

.field private static mJNILoaded:Z


# instance fields
.field private mLuaJNIPlayer:J

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/visualon/OSMPUtils/voLua;->mJNILoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voLua;->mNativeContext:J

    .line 8
    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voLua;->mLuaJNIPlayer:J

    return-void
.end method

.method private static loadJNI(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 12
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLua;->mJNILoaded:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/visualon/OSMPUtils/voLua;->mJNILoaded:Z

    .line 15
    :goto_0
    return v0

    .line 13
    :cond_0
    const-string v0, "voLua"

    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 14
    sput-boolean v0, Lcom/visualon/OSMPUtils/voLua;->mJNILoaded:Z

    if-nez v0, :cond_1

    const-string v0, "@@@voLua.java"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_1
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLua;->mJNILoaded:Z

    goto :goto_0
.end method

.method private native nativeCreate(Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method private native nativeDestroy()I
.end method

.method private native nativeVOEvent(IIILjava/lang/Object;)I
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 20
    const-string v1, "voLua"

    invoke-static {p1, v1}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    iput-wide v4, p0, Lcom/visualon/OSMPUtils/voLua;->mNativeContext:J

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPUtils/voLua;->nativeCreate(Ljava/lang/String;Ljava/lang/Object;)I

    .line 27
    iget-wide v2, p0, Lcom/visualon/OSMPUtils/voLua;->mNativeContext:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 31
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onVOEvent(IIILjava/lang/Object;)I
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPUtils/voLua;->nativeVOEvent(IIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public uninit()Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voLua;->nativeDestroy()I

    .line 37
    const/4 v0, 0x1

    return v0
.end method
