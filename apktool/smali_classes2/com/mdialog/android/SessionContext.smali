.class public Lcom/mdialog/android/SessionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdialog/android/SessionContext$ConnectionStatus;,
        Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;
    }
.end annotation


# static fields
.field public static final SDK_NAME:Ljava/lang/String; = "mDialogAndroidSmartStreamSDK"

.field public static final SDK_VERSION:Ljava/lang/String; = "2.0.0"

.field private static synthetic o:[I


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;

.field h:Ljava/lang/String;

.field i:Lcom/mdialog/android/SessionContext$ConnectionStatus;

.field j:Ljava/lang/String;

.field k:Landroid/location/Location;

.field l:Ljava/lang/String;

.field m:Ljava/util/TimeZone;

.field n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/mdialog/android/SessionContext;->n:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/mdialog/android/SessionContext;->c()V

    .line 80
    return-void
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/mdialog/android/SessionContext;->o:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;->values()[Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;->ExoPlayer:Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;

    invoke-virtual {v1}, Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;->NXPPlayer:Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;

    invoke-virtual {v1}, Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;->UnknownPlayer:Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;

    invoke-virtual {v1}, Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;->VisualOnPlayer:Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;

    invoke-virtual {v1}, Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/mdialog/android/SessionContext;->o:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/mdialog/android/SessionContext;->d:Ljava/lang/String;

    .line 157
    const-string v0, "android"

    iput-object v0, p0, Lcom/mdialog/android/SessionContext;->e:Ljava/lang/String;

    .line 158
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/mdialog/android/SessionContext;->f:Ljava/lang/String;

    .line 159
    const-string v0, "2.0.0"

    iput-object v0, p0, Lcom/mdialog/android/SessionContext;->h:Ljava/lang/String;

    .line 160
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/SessionContext;->m:Ljava/util/TimeZone;

    .line 161
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/SessionContext;->l:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/mdialog/android/SessionContext;->n:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mdialog/android/SessionContext;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 165
    iput-object v0, p0, Lcom/mdialog/android/SessionContext;->j:Ljava/lang/String;

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/mdialog/android/SessionContext;->b()[I

    move-result-object v0

    iget-object v1, p0, Lcom/mdialog/android/SessionContext;->g:Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;

    invoke-virtual {v1}, Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 182
    const-string v0, "2.0.0-Unknown"

    :goto_0
    return-object v0

    .line 174
    :pswitch_0
    const-string v0, "2.0.0-Gemini"

    goto :goto_0

    .line 176
    :pswitch_1
    const-string v0, "2.0.0-Orion"

    goto :goto_0

    .line 178
    :pswitch_2
    const-string v0, "2.0.0-UrsaMajor"

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPlayerType()Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mdialog/android/SessionContext;->g:Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;

    return-object v0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mdialog/android/SessionContext;->b:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setApplicationKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mdialog/android/SessionContext;->c:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setApplicationVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mdialog/android/SessionContext;->h:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setCurrentConnectionStatus(Lcom/mdialog/android/SessionContext$ConnectionStatus;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mdialog/android/SessionContext;->i:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    .line 153
    return-void
.end method

.method public setCurrentLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mdialog/android/SessionContext;->k:Landroid/location/Location;

    .line 141
    return-void
.end method

.method public setPlayerType(Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mdialog/android/SessionContext;->g:Lcom/mdialog/android/SessionContext$MDLGMediaPlayer;

    .line 192
    return-void
.end method

.method public setSubDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mdialog/android/SessionContext;->a:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setWebViewUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mdialog/android/SessionContext;->j:Ljava/lang/String;

    .line 125
    return-void
.end method
