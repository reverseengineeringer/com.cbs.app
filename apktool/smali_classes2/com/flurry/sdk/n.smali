.class public Lcom/flurry/sdk/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ap;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/flurry/sdk/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/n;
    .locals 3

    .prologue
    .line 27
    const-class v1, Lcom/flurry/sdk/n;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/n;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/y;->a(Ljava/lang/Class;)Lcom/flurry/sdk/ap;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static g()Lcom/flurry/sdk/fj$a;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fj;->b()Lcom/flurry/sdk/fj$a;

    move-result-object v0

    return-object v0
.end method

.method private static h()Lcom/flurry/sdk/x;
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/flurry/sdk/bf;->a()Lcom/flurry/sdk/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bf;->c()Lcom/flurry/sdk/be;

    move-result-object v0

    .line 1142
    if-nez v0, :cond_0

    .line 1143
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1146
    :cond_0
    const-class v1, Lcom/flurry/sdk/x;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/be;->b(Ljava/lang/Class;)Lcom/flurry/sdk/bi;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/x;

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/be;->a(Ljava/lang/Class;)V

    .line 41
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    .line 42
    invoke-static {}, Lcom/flurry/sdk/bn;->a()Lcom/flurry/sdk/bn;

    .line 43
    invoke-static {}, Lcom/flurry/sdk/bj;->a()Lcom/flurry/sdk/bj;

    .line 44
    invoke-static {}, Lcom/flurry/sdk/aa;->a()Lcom/flurry/sdk/aa;

    .line 45
    invoke-static {}, Lcom/flurry/sdk/fj;->a()Lcom/flurry/sdk/fj;

    .line 46
    invoke-static {}, Lcom/flurry/sdk/o;->a()Lcom/flurry/sdk/o;

    .line 47
    invoke-static {}, Lcom/flurry/sdk/t;->a()Lcom/flurry/sdk/t;

    .line 48
    invoke-static {}, Lcom/flurry/sdk/r;->a()Lcom/flurry/sdk/r;

    .line 49
    invoke-static {}, Lcom/flurry/sdk/o;->a()Lcom/flurry/sdk/o;

    .line 50
    invoke-static {}, Lcom/flurry/sdk/v;->a()Lcom/flurry/sdk/v;

    .line 51
    invoke-static {}, Lcom/flurry/sdk/q;->a()Lcom/flurry/sdk/q;

    .line 52
    invoke-static {}, Lcom/flurry/sdk/w;->a()Lcom/flurry/sdk/w;

    .line 53
    return-void
.end method

.method public final c()J
    .locals 3

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    .line 77
    invoke-static {}, Lcom/flurry/sdk/n;->h()Lcom/flurry/sdk/x;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v2}, Lcom/flurry/sdk/x;->d()J

    move-result-wide v0

    .line 82
    :cond_0
    return-wide v0
.end method

.method public final d()J
    .locals 3

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    .line 88
    invoke-static {}, Lcom/flurry/sdk/n;->h()Lcom/flurry/sdk/x;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Lcom/flurry/sdk/x;->e()J

    move-result-wide v0

    .line 93
    :cond_0
    return-wide v0
.end method

.method public final e()J
    .locals 3

    .prologue
    .line 97
    const-wide/16 v0, -0x1

    .line 99
    invoke-static {}, Lcom/flurry/sdk/n;->h()Lcom/flurry/sdk/x;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v2}, Lcom/flurry/sdk/x;->f()J

    move-result-wide v0

    .line 104
    :cond_0
    return-wide v0
.end method

.method public final f()J
    .locals 3

    .prologue
    .line 119
    const-wide/16 v0, 0x0

    .line 121
    invoke-static {}, Lcom/flurry/sdk/n;->h()Lcom/flurry/sdk/x;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v2}, Lcom/flurry/sdk/x;->g()J

    move-result-wide v0

    .line 126
    :cond_0
    return-wide v0
.end method
