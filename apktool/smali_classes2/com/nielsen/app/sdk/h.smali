.class final Lcom/nielsen/app/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/h$c;,
        Lcom/nielsen/app/sdk/h$a;,
        Lcom/nielsen/app/sdk/h$b;,
        Lcom/nielsen/app/sdk/h$e;,
        Lcom/nielsen/app/sdk/h$d;,
        Lcom/nielsen/app/sdk/h$f;
    }
.end annotation


# static fields
.field private static f:Lcom/nielsen/app/sdk/h;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nielsen/app/sdk/h$d;",
            ">;"
        }
    .end annotation
.end field

.field b:Lorg/apache/http/params/HttpParams;

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1528
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/h;->f:Lcom/nielsen/app/sdk/h;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/h;->a:Ljava/util/Map;

    .line 1117
    iput-object v2, p0, Lcom/nielsen/app/sdk/h;->b:Lorg/apache/http/params/HttpParams;

    .line 1523
    iput v1, p0, Lcom/nielsen/app/sdk/h;->c:I

    .line 1525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/h;->d:Ljava/util/ArrayList;

    .line 1526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/h;->e:Ljava/util/ArrayList;

    .line 1552
    iput-object v2, p0, Lcom/nielsen/app/sdk/h;->g:Landroid/content/Context;

    .line 1540
    :try_start_0
    iput-object p1, p0, Lcom/nielsen/app/sdk/h;->g:Landroid/content/Context;

    .line 1544
    const/4 v0, 0x2

    iput v0, p0, Lcom/nielsen/app/sdk/h;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    :goto_0
    return-void

    .line 1548
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const/16 v2, 0x45

    const-string v3, "Could not instantiate request manager object"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nielsen/app/sdk/h;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Lcom/nielsen/app/sdk/h;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/nielsen/app/sdk/h;->f:Lcom/nielsen/app/sdk/h;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/nielsen/app/sdk/h;
    .locals 3

    .prologue
    .line 1567
    const-class v1, Lcom/nielsen/app/sdk/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nielsen/app/sdk/h;->f:Lcom/nielsen/app/sdk/h;

    if-nez v0, :cond_0

    .line 1568
    new-instance v0, Lcom/nielsen/app/sdk/h;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/nielsen/app/sdk/h;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/nielsen/app/sdk/h;->f:Lcom/nielsen/app/sdk/h;

    .line 1569
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/h;->f:Lcom/nielsen/app/sdk/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1567
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/h;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/nielsen/app/sdk/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 1577
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nielsen/app/sdk/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/nielsen/app/sdk/h;->c:I

    if-ge v0, v1, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/nielsen/app/sdk/h;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1580
    iget-object v1, p0, Lcom/nielsen/app/sdk/h;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1581
    iget-object v1, p0, Lcom/nielsen/app/sdk/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1584
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    :cond_0
    monitor-exit p0

    return-void

    .line 1577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1597
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1599
    invoke-direct {p0}, Lcom/nielsen/app/sdk/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1600
    monitor-exit p0

    return-void

    .line 1597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/nielsen/app/sdk/h;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    invoke-direct {p0}, Lcom/nielsen/app/sdk/h;->b()V

    .line 1612
    return-void
.end method
