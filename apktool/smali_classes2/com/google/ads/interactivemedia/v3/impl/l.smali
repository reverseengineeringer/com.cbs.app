.class public final Lcom/google/ads/interactivemedia/v3/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/l$a;,
        Lcom/google/ads/interactivemedia/v3/impl/l$b;
    }
.end annotation


# instance fields
.field a:Lcom/google/ads/interactivemedia/v3/impl/d;

.field private final b:Lcom/google/ads/interactivemedia/v3/impl/aa;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/ads/interactivemedia/v3/impl/x;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/a/a/g;

.field private h:Lcom/google/ads/interactivemedia/v3/b/n;

.field private i:Lcom/google/ads/interactivemedia/v3/impl/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/b/n;)V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/l;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/b/n;B)V

    .line 152
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a()V

    .line 153
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/b/n;B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/aa;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/b/n;Lcom/google/ads/interactivemedia/v3/impl/c/a;)V

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/l;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa;Landroid/content/Context;)V

    .line 159
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->h:Lcom/google/ads/interactivemedia/v3/b/n;

    .line 160
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->i:Lcom/google/ads/interactivemedia/v3/impl/c/a;

    .line 161
    return-void
.end method

.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/aa;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/x;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->e:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->f:Ljava/util/Map;

    .line 87
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/n;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/n;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->h:Lcom/google/ads/interactivemedia/v3/b/n;

    .line 164
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 165
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Landroid/content/Context;

    .line 166
    new-instance v0, Lcom/google/a/a/g;

    const-string v1, "a.3.b13.3"

    .line 167
    invoke-static {v1, p2}, Lcom/google/a/a/f;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/a/a/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/a/g;-><init>(Lcom/google/a/a/c;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->g:Lcom/google/a/a/g;

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/l;)Lcom/google/a/a/g;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->g:Lcom/google/a/a/g;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/l;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Landroid/content/Context;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 447
    const-string v0, "android%s:%s:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3.b13.3"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Landroid/content/Context;

    .line 448
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 447
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/b/k;)Z
    .locals 1

    .prologue
    .line 310
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/b/k;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const-string v0, "android:0"

    .line 474
    :goto_0
    return-object v0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 468
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 469
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 470
    if-nez v0, :cond_1

    .line 471
    const-string v0, "android:0"

    goto :goto_0

    .line 474
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "android:%d:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/impl/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Lcom/google/ads/interactivemedia/v3/impl/l$b;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 485
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 486
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://details?id=com.google.ads.interactivemedia.v3"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 487
    const/high16 v3, 0x10000

    .line 488
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 489
    if-nez v2, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-object v0

    .line 494
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 495
    if-eqz v2, :cond_0

    .line 502
    :try_start_0
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 503
    if-eqz v1, :cond_0

    .line 510
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4069
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/s;

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/s;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 507
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/impl/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/l;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/impl/l;)Lcom/google/ads/interactivemedia/v3/b/n;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->h:Lcom/google/ads/interactivemedia/v3/b/n;

    return-object v0
.end method

.method static synthetic f(Lcom/google/ads/interactivemedia/v3/impl/l;)Lcom/google/ads/interactivemedia/v3/impl/l$b;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/l;->d()Lcom/google/ads/interactivemedia/v3/impl/l$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/google/ads/interactivemedia/v3/impl/l;)Lcom/google/ads/interactivemedia/v3/impl/aa;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    return-object v0
.end method

.method static synthetic h(Lcom/google/ads/interactivemedia/v3/impl/l;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i(Lcom/google/ads/interactivemedia/v3/impl/l;)Lcom/google/ads/interactivemedia/v3/impl/x;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Lcom/google/ads/interactivemedia/v3/impl/x;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/z$b;->c:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$c;->i:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    const-string v4, "*"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 195
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/d$a;)V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/b/d$a;)V

    .line 425
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/g$a;)V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/b/i;)V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/g$a;

    .line 437
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/g$a;->onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/b/i;)V

    goto :goto_0

    .line 439
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/k;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/l;->b(Lcom/google/ads/interactivemedia/v3/b/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/b/c$a;->r:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v5, "Server-side ad insertion requests must be passed to requestServerSideAdInsertion."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Lcom/google/ads/interactivemedia/v3/b/c;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/b/d;)V

    .line 2303
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2328
    if-nez p1, :cond_4

    .line 2329
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/b/c$a;->r:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v8, "AdsRequest cannot be null."

    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Lcom/google/ads/interactivemedia/v3/b/c;)V

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/b/d;)V

    move v0, v2

    .line 2229
    :goto_1
    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->f:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/l$1;

    invoke-direct {v4, p0}, Lcom/google/ads/interactivemedia/v3/impl/l$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/l;)V

    invoke-virtual {v0, v4, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Ljava/lang/String;)V

    .line 2298
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/k;->d()Lcom/google/ads/interactivemedia/v3/b/b;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Lcom/google/ads/interactivemedia/v3/b/b;Ljava/lang/String;)V

    .line 2299
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/l;->b(Lcom/google/ads/interactivemedia/v3/b/k;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2381
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->a:Lcom/google/ads/interactivemedia/v3/impl/d;

    if-nez v0, :cond_3

    .line 2382
    const/4 v5, 0x0

    .line 2383
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->i:Lcom/google/ads/interactivemedia/v3/impl/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->i:Lcom/google/ads/interactivemedia/v3/impl/c/a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->g()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2384
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->i:Lcom/google/ads/interactivemedia/v3/impl/c/a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->g()Ljava/util/Map;

    move-result-object v0

    const-string v2, "ssaiContentUrlBuilder"

    .line 2385
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/a;

    move-object v5, v0

    .line 2388
    :cond_2
    :try_start_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/d;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 2389
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/k;->d()Lcom/google/ads/interactivemedia/v3/b/b;

    move-result-object v3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/d;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/b/b;Lcom/google/ads/interactivemedia/v3/b/k;Lcom/google/ads/interactivemedia/v3/impl/a;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->a:Lcom/google/ads/interactivemedia/v3/impl/d;
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 2302
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->a:Lcom/google/ads/interactivemedia/v3/impl/d;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/d;->d()V

    .line 3315
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/l;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->h:Lcom/google/ads/interactivemedia/v3/b/n;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/l;->d()Lcom/google/ads/interactivemedia/v3/impl/l$b;

    move-result-object v4

    .line 3314
    invoke-static {p1, v0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/c/k;->a(Lcom/google/ads/interactivemedia/v3/b/k;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/n;Lcom/google/ads/interactivemedia/v3/impl/l$b;)Lcom/google/ads/interactivemedia/v3/impl/c/k;

    move-result-object v0

    .line 3316
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$b;->c:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/z$c;->I:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3318
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    goto/16 :goto_0

    .line 2333
    :cond_4
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/k;->d()Lcom/google/ads/interactivemedia/v3/b/b;

    move-result-object v0

    .line 2334
    if-nez v0, :cond_5

    .line 2335
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/b/c$a;->r:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v8, "Ad display container must be provided in the AdsRequest."

    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Lcom/google/ads/interactivemedia/v3/b/c;)V

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/b/d;)V

    move v0, v2

    .line 2338
    goto/16 :goto_1

    .line 2341
    :cond_5
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/l;->b(Lcom/google/ads/interactivemedia/v3/b/k;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2342
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/b;->b()Lcom/google/ads/interactivemedia/v3/b/a/c;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2343
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/b/c$a;->r:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v8, "Server-side ad insertion requests must specify a player"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Lcom/google/ads/interactivemedia/v3/b/c;)V

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/b/d;)V

    move v0, v2

    .line 2346
    goto/16 :goto_1

    :cond_6
    move v0, v3

    .line 2348
    goto/16 :goto_1

    .line 2352
    :cond_7
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/b;->c()Landroid/view/ViewGroup;

    move-result-object v4

    if-nez v4, :cond_8

    .line 2353
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/b/c$a;->r:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v8, "Ad display container must have a UI container."

    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Lcom/google/ads/interactivemedia/v3/b/c;)V

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/b/d;)V

    move v0, v2

    .line 2356
    goto/16 :goto_1

    .line 2363
    :cond_8
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/impl/aa;->c()Lcom/google/ads/interactivemedia/v3/impl/ac;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 2364
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/impl/aa;->c()Lcom/google/ads/interactivemedia/v3/impl/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/impl/ac;->b()Lcom/google/ads/interactivemedia/v3/impl/z$a;

    move-result-object v4

    sget-object v5, Lcom/google/ads/interactivemedia/v3/impl/z$a;->b:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    if-ne v4, v5, :cond_9

    .line 2365
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/b;->a()Lcom/google/ads/interactivemedia/v3/b/a/d;

    move-result-object v0

    if-nez v0, :cond_9

    .line 2366
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/b/c$a;->r:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v8, "Ad Player was not provided."

    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Lcom/google/ads/interactivemedia/v3/b/c;)V

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/b/d;)V

    move v0, v2

    .line 2368
    goto/16 :goto_1

    .line 2370
    :cond_9
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2371
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2372
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/h;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/b/c;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/b/c$a;->r:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v8, "Ad tag url must non-null and non empty."

    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Lcom/google/ads/interactivemedia/v3/b/c;)V

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/b/d;)V

    move v0, v2

    .line 2375
    goto/16 :goto_1

    :cond_a
    move v0, v3

    .line 2377
    goto/16 :goto_1

    .line 2390
    :catch_0
    move-exception v0

    .line 2391
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/h;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/k;->c()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Lcom/google/ads/interactivemedia/v3/b/c;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/b/d;)V

    goto/16 :goto_2

    .line 2305
    :cond_b
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/l$a;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/l$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/l;Lcom/google/ads/interactivemedia/v3/b/k;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/k;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/l$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
