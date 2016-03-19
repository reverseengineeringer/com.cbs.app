.class public final Lcom/google/ads/interactivemedia/v3/impl/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/ab$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/aa$d;,
        Lcom/google/ads/interactivemedia/v3/impl/aa$b;,
        Lcom/google/ads/interactivemedia/v3/impl/aa$a;,
        Lcom/google/ads/interactivemedia/v3/impl/aa$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/aa$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/aa$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/aa$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/aa$d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/ads/interactivemedia/v3/impl/ab;

.field private i:Lcom/google/ads/interactivemedia/v3/impl/ac;

.field private j:Z

.field private k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/ads/interactivemedia/v3/impl/z;",
            ">;"
        }
    .end annotation
.end field

.field private l:J

.field private m:Lcom/google/ads/interactivemedia/v3/impl/c/a;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/b/n;Lcom/google/ads/interactivemedia/v3/impl/c/a;)V
    .locals 4

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Ljava/util/Map;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Ljava/util/Map;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Ljava/util/Map;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Ljava/util/Map;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->f:Ljava/util/Map;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->j:Z

    .line 214
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->k:Ljava/util/Queue;

    .line 224
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->g:Landroid/content/Context;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->m:Lcom/google/ads/interactivemedia/v3/impl/c/a;

    .line 226
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-direct {v0, p1, p0}, Lcom/google/ads/interactivemedia/v3/impl/ab;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/ab$a;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->h:Lcom/google/ads/interactivemedia/v3/impl/ab;

    .line 1125
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sdk_version"

    const-string v2, "a.3.b13.3"

    .line 1126
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "hl"

    .line 1127
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/b/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "wvr"

    const-string v2, "2"

    .line 1129
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "app"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->g:Landroid/content/Context;

    .line 1131
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1130
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1134
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->m:Lcom/google/ads/interactivemedia/v3/impl/c/a;

    if-eqz v1, :cond_0

    .line 1135
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/a/g;-><init>()V

    new-instance v2, Lcom/google/b/c;

    invoke-direct {v2}, Lcom/google/b/c;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/g;->a(Lcom/google/ads/interactivemedia/v3/a/x;)Lcom/google/ads/interactivemedia/v3/a/g;

    move-result-object v1

    new-instance v2, Lcom/google/b/b;

    invoke-direct {v2}, Lcom/google/b/b;-><init>()V

    .line 1136
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/g;->a(Lcom/google/ads/interactivemedia/v3/a/b;)Lcom/google/ads/interactivemedia/v3/a/g;

    move-result-object v1

    .line 1137
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/g;->a()Lcom/google/ads/interactivemedia/v3/a/f;

    move-result-object v1

    .line 1138
    const-string v2, "tcnfp"

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->m:Lcom/google/ads/interactivemedia/v3/impl/c/a;

    .line 1139
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1138
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1141
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->n:Ljava/lang/String;

    .line 228
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 591
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/impl/g;Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/impl/g;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 424
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/g;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/b/l;

    .line 426
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/b/l;->c()Landroid/view/ViewGroup;

    move-result-object v4

    if-nez v4, :cond_0

    .line 427
    const/4 v0, 0x0

    .line 431
    :goto_1
    return-object v0

    .line 429
    :cond_0
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/b/l;->c()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 431
    goto :goto_1
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/c/l;)V
    .locals 9

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/g;

    .line 375
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    .line 376
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/impl/e;

    .line 378
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    .line 379
    :cond_0
    const-string v0, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received displayContainer message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for invalid session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1
    :goto_0
    return-void

    .line 384
    :cond_2
    invoke-interface {v2, p1}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$1;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 409
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$b;->e:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z$c;)V

    goto :goto_0

    .line 387
    :pswitch_0
    if-eqz p3, :cond_3

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/c/l;->c:Ljava/util/Map;

    if-nez v2, :cond_4

    .line 388
    :cond_3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/c$a;->a:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v3, "Display companions message requires companions in data."

    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_4
    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/c/l;->c:Ljava/util/Map;

    .line 394
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Lcom/google/ads/interactivemedia/v3/impl/g;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v5

    .line 396
    if-nez v5, :cond_5

    .line 397
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/c$a;->a:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v3, "Display requested for invalid companion slot."

    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_5
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 401
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/impl/c/l;->c:Ljava/util/Map;

    .line 402
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/impl/c/j;

    .line 404
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->d()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/b/l;

    .line 6658
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6659
    const/4 v4, 0x0

    .line 6660
    sget-object v7, Lcom/google/ads/interactivemedia/v3/impl/aa$1;->c:[I

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/c/j;->d()Lcom/google/ads/interactivemedia/v3/impl/c/j$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/impl/c/j$a;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    move-object v2, v4

    .line 6672
    :goto_2
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6673
    check-cast v3, Lcom/google/ads/interactivemedia/v3/impl/t;

    invoke-virtual {v3, p2}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Ljava/lang/String;)V

    .line 6675
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 6663
    :pswitch_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 6679
    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/p;

    invoke-direct {v4, v7, p0, v2}, Lcom/google/ads/interactivemedia/v3/impl/p;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/impl/c/j;)V

    move-object v2, v4

    .line 6664
    goto :goto_2

    .line 6666
    :pswitch_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 6683
    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/u;

    invoke-direct {v4, v7, p0, v2, p2}, Lcom/google/ads/interactivemedia/v3/impl/u;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/aa;Lcom/google/ads/interactivemedia/v3/impl/c/j;Ljava/lang/String;)V

    .line 7053
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/u$1;

    invoke-direct {v2, v4}, Lcom/google/ads/interactivemedia/v3/impl/u$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/u;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    .line 7077
    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/impl/u$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object v2, v4

    .line 6666
    goto :goto_2

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 6660
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z$c;)V
    .locals 4

    .prologue
    .line 587
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Illegal message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " received for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 643
    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->h:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/z;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    goto :goto_0

    .line 646
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->l:J

    .line 253
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->h:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->f:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/aa$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/aa$d;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/e;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/z;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 282
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z;->c()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;

    .line 284
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z;->d()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z;->b()Lcom/google/ads/interactivemedia/v3/impl/z$c;

    move-result-object v3

    .line 286
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z;->a()Lcom/google/ads/interactivemedia/v3/impl/z$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/impl/z$b;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 310
    const-string v0, "IMASDK"

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/z;->a()Lcom/google/ads/interactivemedia/v3/impl/z$b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown message channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6361
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    .line 1472
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    .line 1473
    if-nez v0, :cond_1

    .line 1474
    const-string v0, "IMASDK"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received manager message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for invalid session id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1479
    :cond_1
    if-eqz v5, :cond_e

    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->b:Lcom/google/ads/interactivemedia/v3/impl/c/c;

    if-eqz v1, :cond_e

    .line 1480
    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->b:Lcom/google/ads/interactivemedia/v3/impl/c/c;

    .line 1483
    :goto_1
    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/aa$1;->b:[I

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_1

    .line 1559
    :pswitch_2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$b;->b:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z$c;)V

    goto :goto_0

    .line 1489
    :pswitch_3
    if-eqz v1, :cond_2

    .line 1490
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->q:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto :goto_0

    .line 1492
    :cond_2
    const-string v1, "IMASDK"

    const-string v2, "Ad loaded message requires adData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/c$a;->a:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v3, "Ad loaded message did not contain adData."

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    goto :goto_0

    .line 1498
    :pswitch_4
    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/e$b;->d:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto :goto_0

    .line 1501
    :pswitch_5
    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/e$b;->e:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1504
    :pswitch_6
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->c:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1507
    :pswitch_7
    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/e$b;->a:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1511
    :pswitch_8
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->m:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1514
    :pswitch_9
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->n:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1517
    :pswitch_a
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->j:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1520
    :pswitch_b
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->l:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1523
    :pswitch_c
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->f:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1526
    :pswitch_d
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->i:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1529
    :pswitch_e
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->p:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1532
    :pswitch_f
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->b:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1535
    :pswitch_10
    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/c$b;->b:Lcom/google/ads/interactivemedia/v3/b/c$b;

    iget v2, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->j:I

    iget-object v3, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->k:Ljava/lang/String;

    iget-object v4, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->l:Ljava/lang/String;

    .line 1536
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1535
    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/c$b;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1539
    :pswitch_11
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->g:Lcom/google/ads/interactivemedia/v3/b/e$b;

    iget-object v3, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->f:Lcom/google/ads/interactivemedia/v3/impl/c/l$a;

    .line 2033
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2034
    const-string v5, "type"

    iget-object v6, v3, Lcom/google/ads/interactivemedia/v3/impl/c/l$a;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    const-string v5, "errorCode"

    iget v6, v3, Lcom/google/ads/interactivemedia/v3/impl/c/l$a;->b:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    const-string v5, "errorMessage"

    iget-object v6, v3, Lcom/google/ads/interactivemedia/v3/impl/c/l$a;->c:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    iget-object v5, v3, Lcom/google/ads/interactivemedia/v3/impl/c/l$a;->d:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 2038
    const-string v5, "innerError"

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/impl/c/l$a;->d:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    :cond_3
    invoke-interface {v0, v2, v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1548
    :pswitch_12
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->k:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1551
    :pswitch_13
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/e$b;->o:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;)V

    goto/16 :goto_0

    .line 1554
    :pswitch_14
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1, v7}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    .line 1555
    const-string v3, "adBreakTime"

    iget-object v4, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->v:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/e$b;->h:Lcom/google/ads/interactivemedia/v3/b/e$b;

    invoke-interface {v0, v3, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->a(Lcom/google/ads/interactivemedia/v3/b/e$b;Lcom/google/ads/interactivemedia/v3/impl/c/c;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2564
    :pswitch_15
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    .line 2565
    if-nez v0, :cond_4

    .line 2566
    const-string v0, "IMASDK"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received monitor message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for invalid session id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2569
    :cond_4
    if-nez v5, :cond_5

    .line 2570
    const-string v0, "IMASDK"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received monitor message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for session id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with no data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2574
    :cond_5
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$1;->b:[I

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 2582
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$b;->a:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z$c;)V

    goto/16 :goto_0

    .line 2576
    :pswitch_16
    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->r:Ljava/lang/String;

    iget-object v2, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->s:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2579
    :pswitch_17
    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->r:Ljava/lang/String;

    iget-object v2, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->s:Ljava/lang/String;

    iget-object v3, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3463
    :pswitch_18
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/e;

    .line 3464
    if-nez v0, :cond_6

    .line 3465
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x38

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received videoDisplay message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for invalid session id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3468
    :cond_6
    invoke-interface {v0, v3, v5}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Lcom/google/ads/interactivemedia/v3/impl/c/l;)Z

    goto/16 :goto_0

    .line 4435
    :pswitch_19
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    .line 4436
    if-nez v0, :cond_7

    .line 4437
    const-string v0, "IMASDK"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received request message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for invalid session id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4440
    :cond_7
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$1;->b:[I

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_3

    .line 4458
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$b;->c:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z$c;)V

    goto/16 :goto_0

    .line 4442
    :pswitch_1a
    if-nez v5, :cond_8

    .line 4443
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/c$a;->a:Lcom/google/ads/interactivemedia/v3/b/c$a;

    const-string v4, "adsLoaded message did not contain cue points."

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/c$b;Lcom/google/ads/interactivemedia/v3/b/c$a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4446
    :cond_8
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->i:Lcom/google/ads/interactivemedia/v3/impl/ac;

    iget-object v3, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->m:Ljava/util/List;

    iget-object v4, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->n:Ljava/util/SortedSet;

    iget-boolean v5, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->u:Z

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ac;Ljava/util/List;Ljava/util/SortedSet;Z)V

    goto/16 :goto_0

    .line 4451
    :pswitch_1b
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->i:Lcom/google/ads/interactivemedia/v3/impl/ac;

    iget-boolean v3, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->u:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ac;Z)V

    goto/16 :goto_0

    .line 4454
    :pswitch_1c
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/c$b;->a:Lcom/google/ads/interactivemedia/v3/b/c$b;

    iget v3, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->j:I

    iget-object v4, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->k:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->l:Ljava/lang/String;

    .line 4455
    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4454
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/c$b;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :pswitch_1d
    invoke-direct {p0, v3, v1, v5}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/c/l;)V

    goto/16 :goto_0

    .line 5415
    :pswitch_1e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/aa$d;

    .line 5416
    if-eqz v0, :cond_0

    .line 5417
    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->o:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$d;->a(Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6316
    :pswitch_1f
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$1;->b:[I

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/z$c;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_4

    .line 6363
    const-string v0, "other"

    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z$c;)V

    goto/16 :goto_0

    .line 6319
    :pswitch_20
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;->b:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    .line 6321
    :try_start_0
    iget-object v2, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->e:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 6322
    iget-object v2, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/z$a;->valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/z$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 6327
    :cond_9
    :goto_2
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/ac;

    iget-wide v4, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->d:J

    invoke-direct {v2, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/ac;-><init>(JLcom/google/ads/interactivemedia/v3/impl/z$a;)V

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->i:Lcom/google/ads/interactivemedia/v3/impl/ac;

    .line 6328
    iput-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->j:Z

    .line 6329
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->l:J

    sub-long/2addr v2, v4

    .line 6368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6369
    const-string v4, "webViewLoadingTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6370
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$b;->i:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/z$c;->m:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 6332
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/aa;->e()V

    goto/16 :goto_0

    .line 6335
    :pswitch_21
    iget-object v0, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->g:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->h:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->i:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 6336
    :cond_a
    const-string v0, "IMASDK"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid logging message data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6339
    :cond_b
    const-string v1, "SDK_LOG:"

    iget-object v0, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6340
    :goto_3
    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 6358
    const-string v0, "Unrecognized log level: "

    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 6339
    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 6346
    :sswitch_1
    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/impl/c/l;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6358
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_2

    :cond_e
    move-object v1, v2

    goto/16 :goto_1

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_15
        :pswitch_18
        :pswitch_19
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    .line 1483
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_11
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_10
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 2574
    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 4440
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 6316
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 6340
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x45 -> :sswitch_1
        0x49 -> :sswitch_0
        0x53 -> :sswitch_1
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    return-void
.end method

.method public final b()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->h:Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/impl/z;)V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/aa;->e()V

    .line 640
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-void
.end method

.method public final c()Lcom/google/ads/interactivemedia/v3/impl/ac;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->i:Lcom/google/ads/interactivemedia/v3/impl/ac;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    return-void
.end method

.method final d()Lcom/google/ads/interactivemedia/v3/impl/c/a;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->m:Lcom/google/ads/interactivemedia/v3/impl/c/a;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 649
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 650
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->g:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 651
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/aa;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 654
    return-void
.end method
