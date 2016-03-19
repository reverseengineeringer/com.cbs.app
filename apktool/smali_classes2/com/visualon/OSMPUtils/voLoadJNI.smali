.class public Lcom/visualon/OSMPUtils/voLoadJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DYNAMIC_HELPER_NAME:Ljava/lang/String; = "vodl"

.field private static final ONELIB_NAME:Ljava/lang/String; = "voOSOneLib"

.field private static final PRODUCT_SUFFIX:Ljava/lang/String; = "_OSMP"

.field private static voDynamicHelperLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/visualon/OSMPUtils/voLoadJNI;->voDynamicHelperLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadDynamicHelper(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLoadJNI;->voDynamicHelperLoaded:Z

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    .line 38
    :cond_0
    const-string v0, "vodl"

    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadReachableLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 39
    sput-boolean v0, Lcom/visualon/OSMPUtils/voLoadJNI;->voDynamicHelperLoaded:Z

    if-eqz v0, :cond_1

    .line 40
    const-string v0, "_OSMP"

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->nativeSetProductSuffix(Ljava/lang/String;)I

    .line 43
    :cond_1
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLoadJNI;->voDynamicHelperLoaded:Z

    goto :goto_0
.end method

.method private static loadLib(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static loadLibInPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 93
    if-nez p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 99
    if-eqz v2, :cond_0

    .line 100
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 105
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static loadLibs([Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 52
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadLib(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    :goto_1
    return v1

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static loadLibsInPath(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 64
    move v0, v1

    move v2, v1

    .line 65
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 66
    aget-object v3, p1, v0

    invoke-static {p0, v3}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadLibInPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    array-length v0, p1

    if-ne v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static loadOneLib()Z
    .locals 1

    .prologue
    .line 75
    const-string v0, "voOSOneLib"

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadLib(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static loadOneLibInPath(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 78
    const-string v0, "voOSOneLib"

    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadLibInPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 24
    invoke-static {p0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadDynamicHelper(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_OSMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadReachableLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static loadReachableLib(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadLibInPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    invoke-static {p1}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadLib(Ljava/lang/String;)Z

    move-result v0

    .line 20
    :cond_0
    return v0
.end method

.method private static native nativeSetProductSuffix(Ljava/lang/String;)I
.end method
