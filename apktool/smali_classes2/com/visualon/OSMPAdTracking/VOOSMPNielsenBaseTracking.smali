.class public Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;
.super Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$EventHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPNielsenBaseTracking"

.field private static idfa:Ljava/lang/String; = null

.field protected static isAppSdkInitied:Z = false

.field protected static final messageCloseSdk:I = 0x1

.field private static nuid:Ljava/lang/String; = null

.field private static optOutUrl:Ljava/lang/String; = null

.field protected static sAppSdk:Lcom/nielsen/app/sdk/l; = null

.field private static sdkCfgUrl:Ljava/lang/String; = null

.field private static sdkVersion:Ljava/lang/String; = null

.field private static final txtCiSuffix:Ljava/lang/String; = ""

.field private static final txtClientId:Ljava/lang/String; = "us-700144"

.field private static final txtVcId:Ljava/lang/String; = "c01"


# instance fields
.field protected bID3:Z

.field protected channelName:Ljava/lang/String;

.field protected configAppName:Ljava/lang/String;

.field protected configAppVersion:Ljava/lang/String;

.field protected configCategory:Ljava/lang/String;

.field protected configPd:Ljava/lang/String;

.field protected configSid:Ljava/lang/String;

.field protected configTfid:Ljava/lang/String;

.field protected id3InfoListener:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

.field private isDebugMode:Z

.field protected isTV:Z

.field private mBeacon:Lcom/nielsen/collection/NielsenVideoBeaconActivity;

.field protected mEventHandler:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$EventHandler;

.field protected mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

.field protected needCreateAppSdk:Z

.field private pid:Ljava/lang/String;

.field protected strCategory:Ljava/lang/String;

.field protected strEpisodeTitle:Ljava/lang/String;

.field private sub:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;

.field protected txtAppID:Ljava/lang/String;

.field private txtProd:Ljava/lang/String;

.field protected txtSfCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->isAppSdkInitied:Z

    .line 67
    const-string v0, "unknown"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->nuid:Ljava/lang/String;

    .line 68
    const-string v0, "unknown"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->idfa:Ljava/lang/String;

    .line 69
    const-string v0, "0.0"

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sdkVersion:Ljava/lang/String;

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->optOutUrl:Ljava/lang/String;

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sdkCfgUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 96
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 38
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sub:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;

    .line 40
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mBeacon:Lcom/nielsen/collection/NielsenVideoBeaconActivity;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configAppName:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configAppVersion:Ljava/lang/String;

    .line 49
    const-string v0, "vc"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->txtProd:Ljava/lang/String;

    .line 50
    const-string v0, "us"

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->txtSfCode:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->txtAppID:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configCategory:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configPd:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configTfid:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configSid:Ljava/lang/String;

    .line 56
    iput-boolean v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->isDebugMode:Z

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->channelName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->strEpisodeTitle:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->strCategory:Ljava/lang/String;

    .line 61
    iput-boolean v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->isTV:Z

    .line 62
    iput-boolean v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->bID3:Z

    .line 65
    iput-boolean v4, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->needCreateAppSdk:Z

    .line 93
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->id3InfoListener:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    .line 97
    invoke-virtual {p0, p6}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->handlePropertyHashMap(Ljava/util/HashMap;)V

    .line 99
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$EventHandler;-><init>(Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mEventHandler:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$EventHandler;

    .line 101
    const-string v0, "@@@VOOSMPNielsenBaseTracking"

    const-string v1, "Looper.myLooper()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :goto_0
    iput-object p2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->pid:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VOOSMPNielsenTracking construct"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance v0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;

    invoke-direct {v0}, Lcom/nielsen/collection/NielsenVideoBeaconActivity;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mBeacon:Lcom/nielsen/collection/NielsenVideoBeaconActivity;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    const-string v1, "clientid"

    const-string v2, "us-700144"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "vcid"

    const-string v2, "c01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "cisuffix"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "sfcode"

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->txtSfCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "szprod"

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->txtProd:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "10,25,75"

    const-string v2, "msgint"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mBeacon:Lcom/nielsen/collection/NielsenVideoBeaconActivity;

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mContext:Landroid/content/Context;

    const-string v3, "com.nielsenbeacon.app"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->a(Ljava/util/Map;Landroid/content/SharedPreferences;)V

    .line 124
    return-void

    .line 102
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$EventHandler;-><init>(Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mEventHandler:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$EventHandler;

    .line 104
    const-string v0, "@@@VOOSMPNielsenBaseTracking"

    const-string v1, "getMainLooper()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_1
    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mEventHandler:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->closeAppSdk()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->nuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->nuid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->idfa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->idfa:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->optOutUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->optOutUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;)Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sub:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;

    return-object v0
.end method

.method private closeAppSdk()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 359
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Close Nielsen SDK."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    :try_start_0
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/l;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    .line 368
    sput-boolean v3, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->isAppSdkInitied:Z

    .line 370
    :cond_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private printToLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 400
    :try_start_0
    const-string v0, "PM(%s, %s, %s, %s, %s);\n"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, ""

    if-eq p2, v3, :cond_0

    :goto_0
    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    if-eq p3, v3, :cond_1

    :goto_1
    aput-object p3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    if-eq p4, v3, :cond_2

    :goto_2
    aput-object p4, v1, v2

    const/4 v2, 0x4

    const-string v3, ""

    if-eq p5, v3, :cond_3

    :goto_3
    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[TRACKING], Nielsen is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :goto_4
    return-void

    .line 400
    :cond_0
    const-string p2, "null"

    goto :goto_0

    :cond_1
    const-string p3, "null"

    goto :goto_1

    :cond_2
    const-string p4, "null"

    goto :goto_2

    :cond_3
    const-string p5, "null"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 408
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error: do not send event."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method


# virtual methods
.method public CreateAppSdk()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->needCreateAppSdk:Z

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    sget-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configAppName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configAppVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configAppVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 191
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configAppVersion:Ljava/lang/String;

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configAppName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 193
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configAppName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_4
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 202
    :try_start_1
    const-string v0, "appName"

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configAppName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :goto_2
    :try_start_2
    const-string v0, "appVersion"

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configAppVersion:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 204
    :goto_3
    :try_start_3
    const-string v0, "sfcode"

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->txtSfCode:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 205
    :goto_4
    :try_start_4
    const-string v0, "appId"

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->txtAppID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 206
    :goto_5
    iget-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->isDebugMode:Z

    if-nez v0, :cond_5

    const-string v0, "uat-cert"

    iget-object v2, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->txtSfCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 208
    :cond_5
    :try_start_5
    const-string v0, "nol_devDebug"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 211
    :cond_6
    :goto_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[TRACKING], Nielsen, config is %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$1;

    invoke-direct {v2, p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$1;-><init>(Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;)V

    invoke-static {v1, v0, v2}, Lcom/nielsen/app/sdk/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/n;)Lcom/nielsen/app/sdk/l;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sAppSdk:Lcom/nielsen/app/sdk/l;

    goto/16 :goto_0

    .line 197
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 202
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 203
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 204
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 205
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 208
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6
.end method

.method protected GetTagString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "@@@VOOSMPNielsenBaseTracking"

    return-object v0
.end method

.method protected getADPos(IJ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    invoke-super {p0, p1, p2, p3}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->getADPos(IJ)Ljava/lang/String;

    move-result-object v0

    .line 416
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "roll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    :cond_0
    return-object v0
.end method

.method protected getAdInfoOfPeriod()Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 260
    const-string v1, ""

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->channelName:Ljava/lang/String;

    .line 261
    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->isTV:Z

    .line 262
    const-string v1, ""

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->strEpisodeTitle:Ljava/lang/String;

    .line 263
    const-string v1, ""

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->strCategory:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-eqz v1, :cond_5

    .line 266
    iget-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    move v1, v0

    .line 268
    :goto_0
    invoke-interface {v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 270
    invoke-interface {v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 271
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 277
    :cond_2
    if-eqz v0, :cond_4

    .line 279
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStrChannel()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_3

    .line 280
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStrChannel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->channelName:Ljava/lang/String;

    .line 281
    :cond_3
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->isTV()Z

    move-result v1

    iput-boolean v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->isTV:Z

    .line 282
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStrEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->strEpisodeTitle:Ljava/lang/String;

    .line 283
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getSeriesTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->strCategory:Ljava/lang/String;

    .line 287
    :cond_4
    :goto_1
    return-object v0

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method

.method protected getVideoType(I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 294
    .line 299
    iget-object v7, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    move v6, v2

    move v4, v2

    move v5, v2

    move v1, v2

    .line 301
    :goto_0
    if-eqz v7, :cond_4

    invoke-interface {v7}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 303
    invoke-interface {v7}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 304
    if-nez v6, :cond_0

    .line 306
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 312
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v8

    if-nez v8, :cond_1

    move v1, v2

    .line 317
    :cond_1
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v8

    .line 319
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v0

    if-ne v0, p1, :cond_9

    .line 323
    if-nez v1, :cond_5

    move v4, v3

    move v0, v3

    .line 328
    :goto_2
    if-eqz v4, :cond_2

    if-nez v8, :cond_2

    move v0, v2

    .line 301
    :cond_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v0

    goto :goto_0

    :cond_3
    move v1, v3

    .line 309
    goto :goto_1

    :cond_4
    move v3, v4

    .line 332
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    .line 333
    const-string v0, "preroll"

    .line 341
    :goto_3
    return-object v0

    .line 335
    :cond_6
    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    .line 336
    const-string v0, "postroll"

    goto :goto_3

    .line 338
    :cond_7
    if-eqz v3, :cond_8

    .line 339
    const-string v0, "content"

    goto :goto_3

    .line 341
    :cond_8
    const-string v0, ""

    goto :goto_3

    :cond_9
    move v0, v5

    goto :goto_2
.end method

.method protected handlePropertyHashMap(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 157
    :cond_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 131
    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string v3, "appName"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configAppName:Ljava/lang/String;

    .line 137
    :cond_3
    const-string v3, "appVersion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configAppVersion:Ljava/lang/String;

    .line 139
    :cond_4
    const-string v3, "prod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->txtProd:Ljava/lang/String;

    .line 141
    :cond_5
    const-string v3, "sfcode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->txtSfCode:Ljava/lang/String;

    .line 143
    :cond_6
    const-string v3, "appId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->txtAppID:Ljava/lang/String;

    .line 145
    :cond_7
    const-string v3, "category"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configCategory:Ljava/lang/String;

    .line 147
    :cond_8
    const-string v3, "pd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configPd:Ljava/lang/String;

    .line 149
    :cond_9
    const-string v3, "tfid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configTfid:Ljava/lang/String;

    .line 151
    :cond_a
    const-string v3, "sid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->configSid:Ljava/lang/String;

    .line 153
    :cond_b
    const-string v3, "isDebugMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->isDebugMode:Z

    goto/16 :goto_0
.end method

.method protected initConfig()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method protected sendBeaconMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 373
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error: event param is empty in sendBeaconMsg"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mBeacon:Lcom/nielsen/collection/NielsenVideoBeaconActivity;

    if-nez v0, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error: mBeacon is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error: don\'t send event."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 385
    :cond_2
    const/4 v0, 0x4

    :try_start_1
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    move-object v0, p2

    :goto_1
    aput-object v0, v1, v2

    const/4 v2, 0x1

    if-eqz p3, :cond_4

    move-object v0, p3

    :goto_2
    aput-object v0, v1, v2

    const/4 v2, 0x2

    if-eqz p4, :cond_5

    move-object v0, p4

    :goto_3
    aput-object v0, v1, v2

    const/4 v2, 0x3

    if-eqz p5, :cond_6

    move-object v0, p5

    :goto_4
    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 390
    invoke-direct/range {p0 .. p5}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->printToLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_2

    :cond_5
    const-string v0, ""

    goto :goto_3

    :cond_6
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method protected sendID3(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 251
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-static {p1}, Lcom/nielsen/app/sdk/l;->b(Ljava/lang/String;)Lcom/nielsen/app/sdk/l;

    .line 253
    invoke-virtual {p0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TRACKING], Nielsen, sendID3 %s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_0
    return-void
.end method

.method public sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->sendTrackingEvent(Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 354
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/visualon/OSMPAdTracking/VOOSMPBaseTracking;->setPlaybackInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 166
    if-eqz p1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getIID3Infor()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    iget-object v1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->id3InfoListener:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->setIID3Infor(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo$IID3Infor;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mADSInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPlayer()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 174
    :cond_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method protected setSubClass(Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->sub:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;

    .line 161
    return-void
.end method

.method public setVOCommonPlayer(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 237
    return-void
.end method
