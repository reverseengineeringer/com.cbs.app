.class public Lcom/google/android/gms/internal/hu;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hu$c;,
        Lcom/google/android/gms/internal/hu$d;,
        Lcom/google/android/gms/internal/hu$b;,
        Lcom/google/android/gms/internal/hu$a;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field protected a:Lcom/google/android/gms/internal/hs;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ci;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Lcom/google/android/gms/ads/internal/client/a;

.field private g:Lcom/google/android/gms/ads/internal/overlay/f;

.field private h:Lcom/google/android/gms/internal/hu$a;

.field private i:Lcom/google/android/gms/internal/ce;

.field private j:Lcom/google/android/gms/internal/hu$b;

.field private k:Z

.field private l:Lcom/google/android/gms/internal/ck;

.field private m:Lcom/google/android/gms/internal/cm;

.field private n:Z

.field private o:Z

.field private p:Lcom/google/android/gms/ads/internal/overlay/j;

.field private final q:Lcom/google/android/gms/internal/eg;

.field private r:Lcom/google/android/gms/ads/internal/e;

.field private s:Lcom/google/android/gms/internal/ec;

.field private t:Lcom/google/android/gms/internal/ei;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    aput-object v1, v0, v3

    const-string v1, "HOST_LOOKUP"

    aput-object v1, v0, v4

    const-string v1, "UNSUPPORTED_AUTH_SCHEME"

    aput-object v1, v0, v5

    const-string v1, "AUTHENTICATION"

    aput-object v1, v0, v6

    const-string v1, "PROXY_AUTHENTICATION"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "REDIRECT_LOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "UNSUPPORTED_SCHEME"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "FAILED_SSL_HANDSHAKE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "BAD_URL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "FILE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FILE_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TOO_MANY_REQUESTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/hu;->b:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NOT_YET_VALID"

    aput-object v1, v0, v3

    const-string v1, "EXPIRED"

    aput-object v1, v0, v4

    const-string v1, "ID_MISMATCH"

    aput-object v1, v0, v5

    const-string v1, "UNTRUSTED"

    aput-object v1, v0, v6

    const-string v1, "DATE_INVALID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/hu;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/hs;Z)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/eg;

    invoke-interface {p1}, Lcom/google/android/gms/internal/hs;->f()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ap;

    invoke-interface {p1}, Lcom/google/android/gms/internal/hs;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ap;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/eg;-><init>(Lcom/google/android/gms/internal/hs;Landroid/content/Context;Lcom/google/android/gms/internal/ap;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/hu;-><init>(Lcom/google/android/gms/internal/hs;ZLcom/google/android/gms/internal/eg;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/hs;ZLcom/google/android/gms/internal/eg;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hu;->k:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/hu;->n:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/hu;->q:Lcom/google/android/gms/internal/eg;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ax;->af:Lcom/google/android/gms/internal/at;

    .line 5000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "err"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "host"

    .line 6000
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 0
    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    const-string v2, "gmob-apps"

    const/4 v3, 0x1

    invoke-static {p1, v0, v2, v1, v3}, Lcom/google/android/gms/internal/gw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 6000
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    invoke-static {p1}, Lcom/google/android/gms/internal/gw;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received GMSG: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12000
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13000
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_0

    .line 0
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ci;

    iget-object v3, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ci;->a(Lcom/google/android/gms/internal/hs;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14000
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_2
    return-void
.end method

.method private a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->a()Z

    move-result v0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->c()Lcom/google/android/gms/ads/internal/overlay/d;

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v2}, Lcom/google/android/gms/internal/hs;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/d;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hu;)V
    .locals 2

    .prologue
    .line 0
    .line 15000
    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hu;->o:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/hu;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/hu;->y:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/hu;->g()V

    .line 0
    return-void

    .line 15000
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/hu;)V
    .locals 1

    .prologue
    .line 0
    .line 16000
    iget v0, p0, Lcom/google/android/gms/internal/hu;->y:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/hu;->y:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/hu;->g()V

    .line 0
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/hu;)V
    .locals 1

    .prologue
    .line 0
    .line 17000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hu;->x:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hu;->g()V

    .line 0
    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hu$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->j:Lcom/google/android/gms/internal/hu$b;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hu$b;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->j:Lcom/google/android/gms/internal/hu$b;

    return-object v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->h:Lcom/google/android/gms/internal/hu$a;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hu;->w:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/hu;->y:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/hu;->x:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->h:Lcom/google/android/gms/internal/hu$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hu;->x:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/hu$a;->a(Lcom/google/android/gms/internal/hs;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->h:Lcom/google/android/gms/internal/hu$a;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->y()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->r:Lcom/google/android/gms/ads/internal/e;

    return-object v0
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ec;->a(II)V

    :cond_0
    return-void
.end method

.method public final a(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->q:Lcom/google/android/gms/internal/eg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/eg;->a(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ec;->a(IIZ)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/ads/internal/overlay/j;ZLcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/ei;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 0
    if-nez p8, :cond_0

    new-instance p8, Lcom/google/android/gms/ads/internal/e;

    invoke-direct {p8, v3}, Lcom/google/android/gms/ads/internal/e;-><init>(B)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ec;

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-direct {v0, v1, p9}, Lcom/google/android/gms/internal/ec;-><init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/ei;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    const-string v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/internal/cd;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/cd;-><init>(Lcom/google/android/gms/internal/ce;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/backButton"

    sget-object v1, Lcom/google/android/gms/internal/ch;->j:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/internal/ch;->b:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/canOpenIntents"

    sget-object v1, Lcom/google/android/gms/internal/ch;->c:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/ch;->d:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/close"

    sget-object v1, Lcom/google/android/gms/internal/ch;->e:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/internal/ch;->f:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/internal/ch;->m:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/delayPageLoaded"

    new-instance v1, Lcom/google/android/gms/internal/hu$d;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/hu$d;-><init>(Lcom/google/android/gms/internal/hu;B)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/internal/ch;->g:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/ch;->h:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/mraid"

    new-instance v1, Lcom/google/android/gms/internal/co;

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    invoke-direct {v1, p8, v2}, Lcom/google/android/gms/internal/co;-><init>(Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/ec;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/mraidLoaded"

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->q:Lcom/google/android/gms/internal/eg;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/open"

    new-instance v1, Lcom/google/android/gms/internal/cp;

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    invoke-direct {v1, p6, p8, v2}, Lcom/google/android/gms/internal/cp;-><init>(Lcom/google/android/gms/internal/ck;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/ec;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/precache"

    sget-object v1, Lcom/google/android/gms/internal/ch;->l:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/touch"

    sget-object v1, Lcom/google/android/gms/internal/ch;->i:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/ch;->k:Lcom/google/android/gms/internal/ci;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    if-eqz p7, :cond_1

    const-string v0, "/setInterstitialProperties"

    new-instance v1, Lcom/google/android/gms/internal/cl;

    invoke-direct {v1, p7}, Lcom/google/android/gms/internal/cl;-><init>(Lcom/google/android/gms/internal/cm;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/hu;->f:Lcom/google/android/gms/ads/internal/client/a;

    iput-object p2, p0, Lcom/google/android/gms/internal/hu;->g:Lcom/google/android/gms/ads/internal/overlay/f;

    iput-object p3, p0, Lcom/google/android/gms/internal/hu;->i:Lcom/google/android/gms/internal/ce;

    iput-object p6, p0, Lcom/google/android/gms/internal/hu;->l:Lcom/google/android/gms/internal/ck;

    iput-object p4, p0, Lcom/google/android/gms/internal/hu;->p:Lcom/google/android/gms/ads/internal/overlay/j;

    iput-object p8, p0, Lcom/google/android/gms/internal/hu;->r:Lcom/google/android/gms/ads/internal/e;

    iput-object p9, p0, Lcom/google/android/gms/internal/hu;->t:Lcom/google/android/gms/internal/ei;

    iput-object p7, p0, Lcom/google/android/gms/internal/hu;->m:Lcom/google/android/gms/internal/cm;

    .line 1000
    iput-boolean p5, p0, Lcom/google/android/gms/internal/hu;->k:Z

    .line 0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/hu;->u:Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->o()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v2}, Lcom/google/android/gms/internal/hs;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/hu;->p:Lcom/google/android/gms/ads/internal/overlay/j;

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->f:Lcom/google/android/gms/ads/internal/client/a;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/hu;->g:Lcom/google/android/gms/ads/internal/overlay/f;

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/hs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/hu$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hu;->h:Lcom/google/android/gms/internal/hu$a;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/hu$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hu;->j:Lcom/google/android/gms/internal/hu$b;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hu;->k:Z

    return-void
.end method

.method public final a(ZI)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->o()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->g:Lcom/google/android/gms/ads/internal/overlay/f;

    iget-object v3, p0, Lcom/google/android/gms/internal/hu;->p:Lcom/google/android/gms/ads/internal/overlay/j;

    iget-object v4, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    iget-object v5, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v5}, Lcom/google/android/gms/internal/hs;->n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/internal/hs;ZILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->f:Lcom/google/android/gms/ads/internal/client/a;

    goto :goto_0
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->o()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/hu;->i:Lcom/google/android/gms/internal/ce;

    iget-object v4, p0, Lcom/google/android/gms/internal/hu;->p:Lcom/google/android/gms/ads/internal/overlay/j;

    iget-object v5, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    iget-object v6, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v6}, Lcom/google/android/gms/internal/hs;->n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/hu;->l:Lcom/google/android/gms/internal/ck;

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/internal/hs;ZILjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ck;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->f:Lcom/google/android/gms/ads/internal/client/a;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/hu$c;

    iget-object v3, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    iget-object v4, p0, Lcom/google/android/gms/internal/hu;->g:Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/hu$c;-><init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/ads/internal/overlay/f;)V

    goto :goto_1
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->o()Z

    move-result v2

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->j()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/hu;->i:Lcom/google/android/gms/internal/ce;

    iget-object v4, p0, Lcom/google/android/gms/internal/hu;->p:Lcom/google/android/gms/ads/internal/overlay/j;

    iget-object v5, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    iget-object v6, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v6}, Lcom/google/android/gms/internal/hs;->n()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gms/internal/hu;->l:Lcom/google/android/gms/internal/ck;

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/f;Lcom/google/android/gms/internal/ce;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/internal/hs;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ck;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->f:Lcom/google/android/gms/ads/internal/client/a;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/hu$c;

    iget-object v3, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    iget-object v4, p0, Lcom/google/android/gms/internal/hu;->g:Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/hu$c;-><init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/ads/internal/overlay/f;)V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/hu;->n:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/hu;->o:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 2000
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hu;->v:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    const-string v2, "about:blank"

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->f:Lcom/google/android/gms/ads/internal/client/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->g:Lcom/google/android/gms/ads/internal/overlay/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->h:Lcom/google/android/gms/internal/hu$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->i:Lcom/google/android/gms/internal/ce;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hu;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hu;->n:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hu;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->l:Lcom/google/android/gms/internal/ck;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->p:Lcom/google/android/gms/ads/internal/overlay/j;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->j:Lcom/google/android/gms/internal/hu$b;

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ec;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hu;->s:Lcom/google/android/gms/internal/ec;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hu;->u:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hu;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hu;->n:Z

    new-instance v0, Lcom/google/android/gms/internal/hu$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hu$1;-><init>(Lcom/google/android/gms/internal/hu;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading resource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hu;->a(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/hu;->v:Z

    if-eqz v0, :cond_0

    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hs;->r()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hu;->w:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/hu;->g()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-gez p2, :cond_0

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/hu;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/hu;->b:[Ljava/lang/String;

    neg-int v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/google/android/gms/internal/hu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/hu;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/hu;->c:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssl_err"

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->g()Lcom/google/android/gms/internal/gx;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/gx;->a(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/hu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v4, 0x5

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hu;->a(Landroid/net/Uri;)V

    :goto_0
    move v0, v8

    :goto_1
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/hu;->k:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->a()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 8000
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    move v1, v8

    .line 0
    :goto_2
    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hu;->u:Z

    if-nez v0, :cond_2

    iput-boolean v8, p0, Lcom/google/android/gms/internal/hu;->u:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->f:Lcom/google/android/gms/ads/internal/client/a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ax;->T:Lcom/google/android/gms/internal/at;

    .line 9000
    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->n()Lcom/google/android/gms/internal/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->f:Lcom/google/android/gms/ads/internal/client/a;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/a;->e()V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 8000
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 0
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->a()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_8

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hs;->m()Lcom/google/android/gms/internal/m;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/m;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/hu;->a:Lcom/google/android/gms/internal/hs;

    invoke-interface {v2}, Lcom/google/android/gms/internal/hs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/m;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_5
    move-object v2, v0

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->r:Lcom/google/android/gms/ads/internal/e;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->r:Lcom/google/android/gms/ads/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/e;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hu;->a(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to append parameter to URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10000
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    move-object v2, v0

    goto :goto_3

    .line 0
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/hu;->r:Lcom/google/android/gms/ads/internal/e;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/e;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdWebView unable to handle URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11000
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto/16 :goto_0
.end method
