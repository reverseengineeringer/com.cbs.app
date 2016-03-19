.class public Lcom/visualon/OSMPOutputControl/voOSDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSDisplayManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEventHandler:Landroid/os/Handler;

.field private mHDMIDisplayId:I

.field private mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

.field private mWifiDisplayId:I

.field private mbForbidMiracast:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;-><init>(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 83
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mContext:Landroid/content/Context;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mbForbidMiracast:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    .line 86
    iput v1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    .line 87
    iput v1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I

    .line 89
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->listDisplay()V

    return-void
.end method

.method static synthetic access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    return v0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I

    return v0
.end method

.method static synthetic access$400(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->forbidMiracast()V

    return-void
.end method

.method private forbidMiracast()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v4

    move v1, v2

    .line 150
    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_2

    .line 152
    aget-object v0, v4, v1

    invoke-direct {p0, v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-boolean v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mbForbidMiracast:Z

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mContext:Landroid/content/Context;

    const-string v3, "media_router"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    move v3, v2

    .line 157
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 160
    invoke-virtual {v0, v3}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v5

    .line 161
    const-string v6, "@@@voOSDisplayManager"

    const-string v7, "Output Control, RouteInfo, name is %s, type is %d, status is %s, SupportTypes is %d. "

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x3

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v6

    if-nez v6, :cond_0

    .line 166
    invoke-virtual {v0, v12, v5}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 167
    const-string v6, "@@@voOSDisplayManager"

    const-string v7, "Output Control, selectRoute, forbid miracast, close %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v8, v2

    invoke-static {v6, v7, v8}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 176
    :cond_2
    return-void
.end method

.method private getDisplayType(Landroid/view/Display;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 188
    invoke-virtual {p1}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 189
    invoke-virtual {p1}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 191
    invoke-virtual {p1}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method private listDisplay()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 127
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    .line 128
    iput v3, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    .line 129
    iput v3, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I

    move v0, v1

    .line 130
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 132
    const-string v3, "@@@voOSDisplayManager"

    const-string v4, "Output Control, Displays View, id is %d, name is %s, type is %s."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, v2, v0

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    aget-object v7, v2, v0

    invoke-virtual {v7}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aget-object v7, v2, v0

    invoke-direct {p0, v7}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "virtual"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    iput v3, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    .line 140
    :cond_1
    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hdmi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    iput v3, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I

    .line 130
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_3
    return-void
.end method


# virtual methods
.method public closeMiracast()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mbForbidMiracast:Z

    .line 113
    invoke-direct {p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->forbidMiracast()V

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isHDCPForHDMI()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v4

    move v0, v1

    .line 200
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_3

    .line 202
    aget-object v2, v4, v0

    invoke-direct {p0, v2}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "hdmi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    const-string v5, "@@@voOSDisplayManager"

    const-string v6, "Output control, id is %d, name is %s, flags is %d, SecureFlag is %s."

    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/Object;

    aget-object v2, v4, v0

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    aget-object v2, v4, v0

    invoke-virtual {v2}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    const/4 v2, 0x2

    aget-object v8, v4, v0

    invoke-virtual {v8}, Landroid/view/Display;->getFlags()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x3

    aget-object v2, v4, v0

    invoke-virtual {v2}, Landroid/view/Display;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_1

    const-string v2, "on"

    :goto_1
    aput-object v2, v7, v8

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    move v1, v3

    .line 215
    :cond_0
    :goto_2
    return v1

    .line 204
    :cond_1
    const-string v2, "off"

    goto :goto_1

    .line 200
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_3
    const-string v0, "@@@voOSDisplayManager"

    const-string v2, "Output control, Don\'t find HDMI connection."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public isHDCPForMiracast()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v4

    move v0, v1

    .line 222
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_3

    .line 224
    aget-object v2, v4, v0

    invoke-direct {p0, v2}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->getDisplayType(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "wifi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    const-string v5, "@@@voOSDisplayManager"

    const-string v6, "Output control, id is %d, name is %s, flags is %d, SecureFlag is %s."

    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/Object;

    aget-object v2, v4, v0

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    aget-object v2, v4, v0

    invoke-virtual {v2}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    const/4 v2, 0x2

    aget-object v8, v4, v0

    invoke-virtual {v8}, Landroid/view/Display;->getFlags()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x3

    aget-object v2, v4, v0

    invoke-virtual {v2}, Landroid/view/Display;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_1

    const-string v2, "on"

    :goto_1
    aput-object v2, v7, v8

    invoke-static {v5, v6, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    move v1, v3

    .line 237
    :cond_0
    :goto_2
    return v1

    .line 226
    :cond_1
    const-string v2, "off"

    goto :goto_1

    .line 222
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_3
    const-string v0, "@@@voOSDisplayManager"

    const-string v2, "Output control, Don\'t find Micrcast and Anti_Mirroring connection."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public isMiracast()Z
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mEventHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method public setOnExternalDisplayListener(Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    .line 97
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 101
    invoke-direct {p0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->listDisplay()V

    .line 102
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    if-ltz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    invoke-interface {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;->onMiracastOpened()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I

    if-ltz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mMiracastListener:Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;->onExternalDisplayConnected(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;)V

    .line 107
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mbForbidMiracast:Z

    .line 120
    iput v1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mWifiDisplayId:I

    .line 121
    iput v1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mHDMIDisplayId:I

    .line 122
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 123
    return-void
.end method
