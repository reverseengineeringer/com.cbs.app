.class public Lcom/cbs/app/view/MainApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static d:Z

.field private static e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lcom/nielsen/app/sdk/l;

.field private h:Ljava/lang/String;

.field private i:Lcom/cbs/app/androiddata/PersistentCookieStore;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/FavoriteShow;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/cbs/app/view/MainApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/MainApplication;->c:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/MainApplication;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    .line 65
    const-string v0, "androidphone"

    iput-object v0, p0, Lcom/cbs/app/view/MainApplication;->f:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/MainApplication;->j:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/MainApplication;)Lcom/nielsen/app/sdk/l;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cbs/app/view/MainApplication;->g:Lcom/nielsen/app/sdk/l;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/MainApplication;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cbs/app/view/MainApplication;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/cbs/app/view/MainApplication;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/cbs/app/view/MainApplication;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cbs/app/view/MainApplication;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/view/MainApplication;->d:Z

    .line 84
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/MainApplication;->d:Z

    .line 88
    return-void
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    sget-object v1, Lcom/cbs/app/view/MainApplication;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "route count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/view/MainApplication;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    sget-object v0, Lcom/cbs/app/view/MainApplication;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->c()Z

    move-result v0

    .line 96
    :cond_0
    return v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/cbs/app/view/MainApplication;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/cbs/app/view/MainApplication;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 372
    invoke-static {p0}, Landroid/support/multidex/a;->a(Landroid/content/Context;)V

    .line 373
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 387
    const-string v0, "chromecast_id"

    const-string v1, "0BBDC217"

    invoke-static {p0, v0, v1}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-virtual {p0}, Lcom/cbs/app/view/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    const-string v3, "urn:x-cast:com.cbs"

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 402
    sput-object v0, Lcom/cbs/app/view/MainApplication;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->p()V

    .line 409
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v0

    .line 410
    const v1, 0x7f0800c2

    invoke-virtual {p0, v1}, Lcom/cbs/app/view/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 412
    sget-object v0, Lcom/cbs/app/view/MainApplication;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    new-instance v1, Lcom/cbs/app/cast/CBSVideoCastConsumer;

    invoke-direct {v1, p0}, Lcom/cbs/app/cast/CBSVideoCastConsumer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 413
    sget-object v0, Lcom/cbs/app/view/MainApplication;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 3741
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->g(I)V

    .line 414
    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/cbs/app/view/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookieStore()Lcom/cbs/app/androiddata/PersistentCookieStore;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/cbs/app/view/MainApplication;->i:Lcom/cbs/app/androiddata/PersistentCookieStore;

    return-object v0
.end method

.method public getDensityDpi()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/cbs/app/view/MainApplication;->k:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/cbs/app/view/MainApplication;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMycbsShows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/FavoriteShow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/cbs/app/view/MainApplication;->j:Ljava/util/List;

    return-object v0
.end method

.method public getNielsenSdk()Lcom/nielsen/app/sdk/l;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/cbs/app/view/MainApplication;->g:Lcom/nielsen/app/sdk/l;

    return-object v0
.end method

.method public getNielsenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/cbs/app/view/MainApplication;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenWidth()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 303
    iget-object v0, p0, Lcom/cbs/app/view/MainApplication;->k:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/cbs/app/view/MainApplication;->k:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 304
    iget-object v2, p0, Lcom/cbs/app/view/MainApplication;->k:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cbs/app/view/MainApplication;->k:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 305
    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 475
    invoke-static {p1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;)V

    .line 476
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 490
    invoke-static {p1}, Lcom/cbs/app/analytics/AnalyticsManager;->b(Landroid/content/Context;)V

    .line 491
    return-void
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 112
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 1183
    invoke-virtual {p0}, Lcom/cbs/app/view/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080235

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/MainApplication;->a:Ljava/lang/String;

    .line 1184
    invoke-virtual {p0}, Lcom/cbs/app/view/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080234

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/MainApplication;->b:Ljava/lang/String;

    .line 1186
    invoke-static {p0}, Lcom/cbs/app/livetv/controllers/MVPDController;->a(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p0, p0}, Lcom/cbs/app/view/MainApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 119
    const-string v0, "visitor_id"

    invoke-static {p0, v0, v9}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "visitor_id"

    invoke-static {p0, v1, v0}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->d:Ljava/lang/String;

    .line 126
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->e:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/cbs/app/view/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/MainApplication;->k:Landroid/util/DisplayMetrics;

    .line 1208
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1209
    invoke-static {p0, v0}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1210
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1211
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/MainApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1212
    if-nez v1, :cond_5

    .line 1213
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1214
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1215
    const-string v2, "cbs_base_uri"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1216
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1217
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1218
    const-string v0, "androidphone"

    iput-object v0, p0, Lcom/cbs/app/view/MainApplication;->f:Ljava/lang/String;

    .line 1219
    const-string v0, "cbs_appsecret"

    const-string v2, "9a06af4666595a16"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1233
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 2177
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 1256
    :cond_1
    new-instance v0, Lcom/cbs/app/androiddata/PersistentCookieStore;

    invoke-direct {v0, p0}, Lcom/cbs/app/androiddata/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/view/MainApplication;->i:Lcom/cbs/app/androiddata/PersistentCookieStore;

    .line 1258
    new-instance v0, Ljava/net/CookieManager;

    iget-object v1, p0, Lcom/cbs/app/view/MainApplication;->i:Lcom/cbs/app/androiddata/PersistentCookieStore;

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 1260
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 1263
    const-string v0, "allow_https"

    invoke-static {p0, v0, v8}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1264
    const-string v1, "useResponseCache"

    invoke-static {p0, v1, v8}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 1267
    const-string v2, "cbs_base_uri"

    invoke-static {p0, v2, v9}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1268
    const-string v3, "cbs_appsecret"

    const-string v4, ""

    invoke-static {p0, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1271
    const-string v4, "syncbackurl"

    const-string v5, "http://cbsservice.aws.syncbak.com"

    invoke-static {p0, v4, v5}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1272
    invoke-virtual {p0}, Lcom/cbs/app/view/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080251

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1273
    invoke-virtual {p0}, Lcom/cbs/app/view/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080252

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1276
    new-instance v7, Lcom/cbs/app/androiddata/DataManagerConfiguration;

    invoke-direct {v7}, Lcom/cbs/app/androiddata/DataManagerConfiguration;-><init>()V

    .line 1277
    invoke-virtual {v7, v3}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setCbsAppSecret(Ljava/lang/String;)V

    .line 1278
    iget-object v3, p0, Lcom/cbs/app/view/MainApplication;->f:Ljava/lang/String;

    invoke-virtual {v7, v3}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setDeviceType(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v7, v5}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setSyncbakAppKey(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v7, v6}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setSyncbakAppSecret(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {v7, v0}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setUseHttps(Z)V

    .line 1285
    invoke-virtual {v7, v1}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setUseResponseCache(Z)V

    .line 1287
    invoke-virtual {v7, v2}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setCbsHost(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v7, v8}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setParallelExcecuationAllowed(Z)V

    .line 1290
    invoke-virtual {v7, v4}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setSyncbakHost(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {v7, v8}, Lcom/cbs/app/androiddata/DataManagerConfiguration;->setLoggingEnabled(Z)V

    .line 1293
    invoke-static {}, Lcom/cbs/app/androiddata/DataManager;->getInstance()Lcom/cbs/app/androiddata/DataManager;

    move-result-object v0

    .line 1295
    invoke-virtual {v0, v7}, Lcom/cbs/app/androiddata/DataManager;->a(Lcom/cbs/app/androiddata/DataManagerConfiguration;)V

    .line 148
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->d(Landroid/content/Context;)V

    .line 155
    :cond_2
    invoke-static {p0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/app/Application;)V

    .line 3052
    invoke-static {p0, v8}, Lcom/d/a/c/e;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 2348
    new-instance v1, Lcom/d/a/b/e$a;

    invoke-virtual {p0}, Lcom/cbs/app/view/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/d/a/b/e$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/d/a/a/a/a/b;

    invoke-direct {v2, v0}, Lcom/d/a/a/a/a/b;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/d/a/b/e$a;->a(Lcom/d/a/a/a/b;)Lcom/d/a/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/e$a;->a()Lcom/d/a/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/e$a;->b()Lcom/d/a/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/e$a;->c()Lcom/d/a/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/e$a;->d()Lcom/d/a/b/e;

    move-result-object v0

    .line 2356
    invoke-static {}, Lcom/d/a/b/d;->a()Lcom/d/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/d/a/b/d;->a(Lcom/d/a/b/e;)V

    .line 3192
    invoke-static {p0}, Lcom/urbanairship/a;->a(Landroid/content/Context;)Lcom/urbanairship/a;

    move-result-object v0

    .line 3193
    iput-boolean v8, v0, Lcom/urbanairship/a;->l:Z

    .line 3194
    const-string v1, "622419776613"

    iput-object v1, v0, Lcom/urbanairship/a;->h:Ljava/lang/String;

    .line 3195
    const-string v1, "D59tS59jQTyeGAlkeU0A3A"

    iput-object v1, v0, Lcom/urbanairship/a;->c:Ljava/lang/String;

    .line 3196
    const-string v1, "wkcW_NPDQ9isKrWQ6yviNQ"

    iput-object v1, v0, Lcom/urbanairship/a;->d:Ljava/lang/String;

    .line 3197
    const-string v1, "y-NCfE6ZSrmghhueVZkFpQ"

    iput-object v1, v0, Lcom/urbanairship/a;->a:Ljava/lang/String;

    .line 3198
    const-string v1, "FbUXkLD2Qs6Dy3tNcJNeaA"

    iput-object v1, v0, Lcom/urbanairship/a;->b:Ljava/lang/String;

    .line 3199
    const/4 v1, 0x0

    iput v1, v0, Lcom/urbanairship/a;->p:I

    .line 3200
    const/4 v1, 0x3

    iput v1, v0, Lcom/urbanairship/a;->q:I

    .line 3202
    invoke-static {p0, v0}, Lcom/urbanairship/p;->a(Landroid/app/Application;Lcom/urbanairship/a;)V

    .line 3203
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/urbanairship/push/j;->a(Z)V

    .line 3376
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 3377
    invoke-virtual {p0}, Lcom/cbs/app/view/MainApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_3

    .line 3378
    invoke-static {v8}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 163
    :cond_3
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    invoke-virtual {p0}, Lcom/cbs/app/view/MainApplication;->e()V

    .line 3435
    :cond_4
    const-string v0, "nielsen_settings_url"

    invoke-static {p0, v0, v9}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/MainApplication;->h:Ljava/lang/String;

    .line 3437
    const-string v0, "{\"appName\" : \"CBS\", \"appVersion\" : \"2.9.0\", \"sfcode\" : \"us\", \"appId\" : \"P1576C728-1641-4B4C-AE19-343CF249BCA8\",  \"nol_devDebug\": \"true\" }"

    .line 3447
    new-instance v1, Lcom/cbs/app/view/MainApplication$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/MainApplication$1;-><init>(Lcom/cbs/app/view/MainApplication;)V

    invoke-static {p0, v0, v1}, Lcom/nielsen/app/sdk/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nielsen/app/sdk/n;)Lcom/nielsen/app/sdk/l;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/MainApplication;->g:Lcom/nielsen/app/sdk/l;

    .line 168
    return-void

    :cond_5
    move-object v0, v1

    .line 1212
    goto/16 :goto_0

    .line 1221
    :cond_6
    const-string v0, "androidphone"

    iput-object v0, p0, Lcom/cbs/app/view/MainApplication;->f:Ljava/lang/String;

    .line 1222
    const-string v0, "cbs_appsecret"

    const-string v2, "b700a363a73b9ada"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 1225
    :cond_7
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1226
    const-string v0, "androidtablet"

    iput-object v0, p0, Lcom/cbs/app/view/MainApplication;->f:Ljava/lang/String;

    .line 1227
    const-string v0, "cbs_appsecret"

    const-string v2, "a308e8033bb2ce43"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 1229
    :cond_8
    const-string v0, "androidtablet"

    iput-object v0, p0, Lcom/cbs/app/view/MainApplication;->f:Ljava/lang/String;

    .line 1230
    const-string v0, "cbs_appsecret"

    const-string v2, "a37738ac19247e04"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1
.end method

.method public setCookieStore(Lcom/cbs/app/androiddata/PersistentCookieStore;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/cbs/app/view/MainApplication;->i:Lcom/cbs/app/androiddata/PersistentCookieStore;

    .line 244
    return-void
.end method

.method public setMycbsShows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/FavoriteShow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    iput-object p1, p0, Lcom/cbs/app/view/MainApplication;->j:Ljava/util/List;

    .line 365
    return-void
.end method

.method public setNielsenSdk(Lcom/nielsen/app/sdk/l;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/cbs/app/view/MainApplication;->g:Lcom/nielsen/app/sdk/l;

    .line 422
    return-void
.end method

.method public setNielsenUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/cbs/app/view/MainApplication;->h:Ljava/lang/String;

    .line 430
    return-void
.end method
