.class public final Lcom/urbanairship/actions/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/actions/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/urbanairship/actions/a;

.field private c:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/urbanairship/actions/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/urbanairship/actions/p;",
            "Lcom/urbanairship/actions/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/urbanairship/actions/a;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/actions/d$a;->d:Ljava/util/Map;

    .line 252
    iput-object p1, p0, Lcom/urbanairship/actions/d$a;->b:Lcom/urbanairship/actions/a;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/urbanairship/actions/d$a;->a:Ljava/util/List;

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/actions/a;[Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/actions/d$a;-><init>(Lcom/urbanairship/actions/a;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/actions/d$a;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    .line 1353
    iget-object v1, p0, Lcom/urbanairship/actions/d$a;->a:Ljava/util/List;

    monitor-enter v1

    .line 1354
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/actions/d$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1355
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/android/internal/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/urbanairship/actions/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/urbanairship/actions/d$a;->c:Lcom/android/internal/util/Predicate;

    return-object v0
.end method

.method public final a(Lcom/urbanairship/actions/p;)Lcom/urbanairship/actions/a;
    .locals 1

    .prologue
    .line 265
    if-nez p1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/urbanairship/actions/d$a;->b:Lcom/urbanairship/actions/a;

    .line 273
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/actions/d$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/a;

    .line 270
    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/urbanairship/actions/d$a;->b:Lcom/urbanairship/actions/a;

    goto :goto_0
.end method

.method public final a(Lcom/android/internal/util/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/urbanairship/actions/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    iput-object p1, p0, Lcom/urbanairship/actions/d$a;->c:Lcom/android/internal/util/Predicate;

    .line 292
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action Entry: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/actions/d$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
