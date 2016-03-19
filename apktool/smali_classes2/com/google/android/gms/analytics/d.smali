.class public final Lcom/google/android/gms/analytics/d;
.super Lcom/google/android/gms/analytics/internal/n;

# interfaces
.implements Lcom/google/android/gms/b/f;


# static fields
.field private static a:Ljava/text/DecimalFormat;


# instance fields
.field private final b:Lcom/google/android/gms/analytics/internal/q;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/net/Uri;

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/q;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/analytics/d;-><init>(Lcom/google/android/gms/analytics/internal/q;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/analytics/internal/q;Ljava/lang/String;B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/n;-><init>(Lcom/google/android/gms/analytics/internal/q;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/analytics/d;->b:Lcom/google/android/gms/analytics/internal/q;

    iput-object p2, p0, Lcom/google/android/gms/analytics/d;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/d;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/d;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/d;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/d;->d:Landroid/net/Uri;

    return-void
.end method

.method static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "google-analytics.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static a(D)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/d;->a:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.######"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/analytics/d;->a:Ljava/text/DecimalFormat;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/d;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lcom/google/android/gms/analytics/d;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "1"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static b(Lcom/google/android/gms/b/b;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/google/android/gms/internal/ih;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ih;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ih;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2000
    if-nez v1, :cond_2

    move-object v1, v2

    .line 0
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2000
    :cond_2
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_3

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_3
    instance-of v6, v1, Ljava/lang/Double;

    if-eqz v6, :cond_5

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/analytics/d;->a(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_1

    :cond_5
    instance-of v6, v1, Ljava/lang/Boolean;

    if-eqz v6, :cond_7

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v6, :cond_6

    const-string v1, "1"

    goto :goto_1

    :cond_6
    move-object v1, v2

    goto :goto_1

    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 0
    :cond_8
    const-class v0, Lcom/google/android/gms/internal/ii;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ii;

    if-eqz v0, :cond_9

    const-string v1, "t"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sc"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sf"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->h()D

    move-result-wide v6

    invoke-static {v5, v1, v6, v7}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "ni"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->g()Z

    move-result v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    const-string v1, "adid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ate"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ii;->e()Z

    move-result v0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    :cond_9
    const-class v0, Lcom/google/android/gms/internal/ko;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ko;

    if-eqz v0, :cond_a

    const-string v1, "cd"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ko;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "a"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ko;->b()I

    move-result v2

    int-to-double v6, v2

    invoke-static {v5, v1, v6, v7}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "dr"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ko;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-class v0, Lcom/google/android/gms/internal/km;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/km;

    if-eqz v0, :cond_b

    const-string v1, "ec"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/km;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ea"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/km;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "el"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/km;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ev"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/km;->d()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v5, v1, v6, v7}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;D)V

    :cond_b
    const-class v0, Lcom/google/android/gms/internal/kj;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kj;

    if-eqz v0, :cond_c

    const-string v1, "cn"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cs"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cm"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kj;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ck"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kj;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cc"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kj;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ci"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kj;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "anid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kj;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gclid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kj;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dclid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kj;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aclid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kj;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-class v0, Lcom/google/android/gms/internal/kn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kn;

    if-eqz v0, :cond_d

    const-string v1, "exd"

    .line 3000
    iget-object v2, v0, Lcom/google/android/gms/internal/kn;->a:Ljava/lang/String;

    .line 0
    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exf"

    .line 4000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/kn;->b:Z

    .line 0
    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    :cond_d
    const-class v0, Lcom/google/android/gms/internal/kp;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kp;

    if-eqz v0, :cond_e

    const-string v1, "sn"

    .line 5000
    iget-object v2, v0, Lcom/google/android/gms/internal/kp;->a:Ljava/lang/String;

    .line 0
    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sa"

    .line 6000
    iget-object v2, v0, Lcom/google/android/gms/internal/kp;->b:Ljava/lang/String;

    .line 0
    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "st"

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/internal/kp;->c:Ljava/lang/String;

    .line 0
    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-class v0, Lcom/google/android/gms/internal/kq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kq;

    if-eqz v0, :cond_f

    const-string v1, "utv"

    .line 8000
    iget-object v2, v0, Lcom/google/android/gms/internal/kq;->a:Ljava/lang/String;

    .line 0
    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utt"

    .line 9000
    iget-wide v6, v0, Lcom/google/android/gms/internal/kq;->b:J

    .line 0
    long-to-double v6, v6

    invoke-static {v5, v1, v6, v7}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "utc"

    .line 10000
    iget-object v2, v0, Lcom/google/android/gms/internal/kq;->c:Ljava/lang/String;

    .line 0
    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utl"

    .line 11000
    iget-object v0, v0, Lcom/google/android/gms/internal/kq;->d:Ljava/lang/String;

    .line 0
    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-class v0, Lcom/google/android/gms/internal/if;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/if;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/if;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_11
    const-class v0, Lcom/google/android/gms/internal/ig;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ig;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ig;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/e;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/analytics/d;->a(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_13
    const-class v0, Lcom/google/android/gms/internal/kl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kl;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kl;->a()Lcom/google/android/gms/analytics/a/b;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/a/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "&"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kl;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/a/c;

    invoke-static {v2}, Lcom/google/android/gms/analytics/e;->d(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/analytics/a/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kl;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/a/a;

    invoke-static {v2}, Lcom/google/android/gms/analytics/e;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/analytics/a/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :cond_17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kl;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/analytics/e;->f(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/a/a;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/google/android/gms/analytics/e;->e(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/analytics/a/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "nm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    :cond_1a
    const-class v0, Lcom/google/android/gms/internal/kk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kk;

    if-eqz v0, :cond_1b

    const-string v1, "ul"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sd"

    .line 12000
    iget v2, v0, Lcom/google/android/gms/internal/kk;->a:I

    .line 0
    int-to-double v2, v2

    invoke-static {v5, v1, v2, v3}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "sr"

    .line 13000
    iget v2, v0, Lcom/google/android/gms/internal/kk;->b:I

    .line 14000
    iget v3, v0, Lcom/google/android/gms/internal/kk;->c:I

    .line 0
    invoke-static {v5, v1, v2, v3}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;II)V

    const-string v1, "vp"

    .line 15000
    iget v2, v0, Lcom/google/android/gms/internal/kk;->d:I

    .line 16000
    iget v0, v0, Lcom/google/android/gms/internal/kk;->e:I

    .line 0
    invoke-static {v5, v1, v2, v0}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;II)V

    :cond_1b
    const-class v0, Lcom/google/android/gms/internal/ki;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ki;

    if-eqz v0, :cond_1c

    const-string v1, "an"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ki;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ki;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aiid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ki;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "av"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ki;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/google/android/gms/analytics/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-object v5
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/b/b;)V
    .locals 10

    .prologue
    const-wide/16 v1, 0x0

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/b/b;->f()Z

    move-result v0

    const-string v3, "Can\'t deliver not submitted measurement"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/z;->b(ZLjava/lang/Object;)V

    const-string v0, "deliver should be called on worker thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/b/b;->a()Lcom/google/android/gms/b/b;

    move-result-object v3

    const-class v0, Lcom/google/android/gms/internal/ii;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/b/b;->b(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ii;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ii;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/d;->n()Lcom/google/android/gms/analytics/internal/f;

    move-result-object v0

    invoke-static {v3}, Lcom/google/android/gms/analytics/d;->b(Lcom/google/android/gms/b/b;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Ignoring measurement without type"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ii;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/d;->n()Lcom/google/android/gms/analytics/internal/f;

    move-result-object v0

    invoke-static {v3}, Lcom/google/android/gms/analytics/d;->b(Lcom/google/android/gms/b/b;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Ignoring measurement without client id"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/f;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->b:Lcom/google/android/gms/analytics/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/q;->j()Lcom/google/android/gms/analytics/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ii;->h()D

    move-result-wide v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ii;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/google/android/gms/analytics/internal/k;->a(DLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Sampling enabled. Hit sampled out. sampling rate"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/d;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/analytics/d;->b(Lcom/google/android/gms/b/b;)Ljava/util/Map;

    move-result-object v9

    const-string v0, "v"

    const-string v3, "1"

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_v"

    sget-object v3, Lcom/google/android/gms/analytics/internal/p;->b:Ljava/lang/String;

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tid"

    iget-object v3, p0, Lcom/google/android/gms/analytics/d;->c:Ljava/lang/String;

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/d;->b:Lcom/google/android/gms/analytics/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/q;->j()Lcom/google/android/gms/analytics/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/a;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 0
    const-string v1, "Dry run is enabled. GoogleAnalytics would have sent"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/d;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uid"

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ii;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v0, v3}, Lcom/google/android/gms/analytics/internal/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/google/android/gms/internal/ki;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/b;->a(Ljava/lang/Class;)Lcom/google/android/gms/b/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ki;

    if-eqz v0, :cond_7

    const-string v3, "an"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ki;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/google/android/gms/analytics/internal/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "aid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ki;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/google/android/gms/analytics/internal/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "av"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ki;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/google/android/gms/analytics/internal/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "aiid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ki;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v3, v0}, Lcom/google/android/gms/analytics/internal/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lcom/google/android/gms/analytics/internal/s;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ii;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/analytics/d;->c:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ii;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x1

    :goto_2
    move-wide v6, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/analytics/internal/s;-><init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/d;->q()Lcom/google/android/gms/analytics/internal/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/m;->a(Lcom/google/android/gms/analytics/internal/s;)J

    move-result-wide v0

    const-string v2, "_s"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/analytics/internal/c;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/d;->n()Lcom/google/android/gms/analytics/internal/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/b/b;->d()J

    move-result-wide v2

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/google/android/gms/analytics/internal/c;-><init>(Lcom/google/android/gms/analytics/internal/n;Ljava/util/Map;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/d;->q()Lcom/google/android/gms/analytics/internal/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/m;->a(Lcom/google/android/gms/analytics/internal/c;)V

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    goto :goto_2
.end method
