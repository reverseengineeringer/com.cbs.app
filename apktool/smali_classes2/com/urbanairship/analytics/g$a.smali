.class public final Lcom/urbanairship/analytics/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/analytics/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/math/BigDecimal;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/g$a;->g:Ljava/util/Map;

    .line 294
    iput-object p1, p0, Lcom/urbanairship/analytics/g$a;->a:Ljava/lang/String;

    .line 295
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/urbanairship/analytics/g$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/urbanairship/analytics/g$a;)Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/urbanairship/analytics/g$a;->b:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic c(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/urbanairship/analytics/g$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/urbanairship/analytics/g$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/urbanairship/analytics/g$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/urbanairship/analytics/g$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/urbanairship/analytics/g$a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/urbanairship/analytics/g$a;->g:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/urbanairship/push/PushMessage;)Lcom/urbanairship/analytics/g$a;
    .locals 1

    .prologue
    .line 412
    if-eqz p1, :cond_0

    .line 413
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/g$a;->f:Ljava/lang/String;

    .line 415
    :cond_0
    return-object p0
.end method

.method public final a(Lcom/urbanairship/richpush/c;)Lcom/urbanairship/analytics/g$a;
    .locals 1

    .prologue
    .line 380
    if-eqz p1, :cond_0

    .line 381
    const-string v0, "ua_mcrap"

    iput-object v0, p0, Lcom/urbanairship/analytics/g$a;->d:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/g$a;->e:Ljava/lang/String;

    .line 384
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/urbanairship/analytics/g$a;
    .locals 1

    .prologue
    .line 342
    invoke-static {p1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/analytics/g$a;->b:Ljava/math/BigDecimal;

    .line 347
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/g$a;->a(Ljava/math/BigDecimal;)Lcom/urbanairship/analytics/g$a;

    move-result-object p0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;D)Lcom/urbanairship/analytics/g$a;
    .locals 4

    .prologue
    .line 476
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Infinity or NaN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/analytics/g$a;->g:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    return-object p0
.end method

.method public final a(Ljava/lang/String;J)Lcom/urbanairship/analytics/g$a;
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/urbanairship/analytics/g$a;->g:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/analytics/g$a;
    .locals 0

    .prologue
    .line 399
    iput-object p2, p0, Lcom/urbanairship/analytics/g$a;->e:Ljava/lang/String;

    .line 400
    iput-object p1, p0, Lcom/urbanairship/analytics/g$a;->d:Ljava/lang/String;

    .line 401
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Collection;)Lcom/urbanairship/analytics/g$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/urbanairship/analytics/g$a;"
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/urbanairship/analytics/g$a;->g:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/urbanairship/analytics/g$a;
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/urbanairship/analytics/g$a;->g:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    return-object p0
.end method

.method public final a(Ljava/math/BigDecimal;)Lcom/urbanairship/analytics/g$a;
    .locals 1

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/analytics/g$a;->b:Ljava/math/BigDecimal;

    .line 313
    :goto_0
    return-object p0

    .line 312
    :cond_0
    iput-object p1, p0, Lcom/urbanairship/analytics/g$a;->b:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method public final a()Lcom/urbanairship/analytics/g;
    .locals 2

    .prologue
    .line 524
    new-instance v0, Lcom/urbanairship/analytics/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/analytics/g;-><init>(Lcom/urbanairship/analytics/g$a;B)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/urbanairship/analytics/g$a;
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/urbanairship/analytics/g$a;->c:Ljava/lang/String;

    .line 370
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/analytics/g$a;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/urbanairship/analytics/g$a;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    return-object p0
.end method
