.class public final Lcom/urbanairship/actions/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/concurrent/Executor;


# instance fields
.field private b:Lcom/urbanairship/actions/d;

.field private c:Ljava/lang/String;

.field private d:Lcom/urbanairship/actions/a;

.field private e:Lcom/urbanairship/actions/ActionValue;

.field private f:Landroid/os/Bundle;

.field private g:Lcom/urbanairship/actions/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/actions/f;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/urbanairship/actions/f;->c:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/actions/f;->b:Lcom/urbanairship/actions/d;

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/actions/f;Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;
    .locals 2

    .prologue
    .line 55
    .line 2204
    iget-object v0, p0, Lcom/urbanairship/actions/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2205
    iget-object v0, p0, Lcom/urbanairship/actions/f;->c:Ljava/lang/String;

    .line 2297
    iget-object v1, p0, Lcom/urbanairship/actions/f;->b:Lcom/urbanairship/actions/d;

    if-eqz v1, :cond_0

    .line 2298
    iget-object v1, p0, Lcom/urbanairship/actions/f;->b:Lcom/urbanairship/actions/d;

    invoke-virtual {v1, v0}, Lcom/urbanairship/actions/d;->a(Ljava/lang/String;)Lcom/urbanairship/actions/d$a;

    move-result-object v0

    .line 2206
    :goto_0
    if-eqz v0, :cond_3

    .line 2208
    invoke-virtual {v0}, Lcom/urbanairship/actions/d$a;->a()Lcom/android/internal/util/Predicate;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/urbanairship/actions/d$a;->a()Lcom/android/internal/util/Predicate;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/actions/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " will not be run. Registry predicate rejected the arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2210
    sget-object v0, Lcom/urbanairship/actions/e$a;->b:Lcom/urbanairship/actions/e$a;

    invoke-static {v0}, Lcom/urbanairship/actions/e;->a(Lcom/urbanairship/actions/e$a;)Lcom/urbanairship/actions/e;

    move-result-object v0

    .line 2215
    :goto_1
    return-object v0

    .line 2301
    :cond_0
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->t()Lcom/urbanairship/actions/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/actions/d;->a(Ljava/lang/String;)Lcom/urbanairship/actions/d$a;

    move-result-object v0

    goto :goto_0

    .line 2212
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/actions/f;->g:Lcom/urbanairship/actions/p;

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/d$a;->a(Lcom/urbanairship/actions/p;)Lcom/urbanairship/actions/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/actions/a;->a(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;

    move-result-object v0

    goto :goto_1

    .line 2214
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/actions/f;->d:Lcom/urbanairship/actions/a;

    if-eqz v0, :cond_3

    .line 2215
    iget-object v0, p0, Lcom/urbanairship/actions/f;->d:Lcom/urbanairship/actions/a;

    invoke-virtual {v0, p1}, Lcom/urbanairship/actions/a;->a(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;

    move-result-object v0

    goto :goto_1

    .line 2217
    :cond_3
    sget-object v0, Lcom/urbanairship/actions/e$a;->c:Lcom/urbanairship/actions/e$a;

    invoke-static {v0}, Lcom/urbanairship/actions/e;->a(Lcom/urbanairship/actions/e$a;)Lcom/urbanairship/actions/e;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/urbanairship/actions/f;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/urbanairship/actions/f;

    invoke-direct {v0, p0}, Lcom/urbanairship/actions/f;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private b(Lcom/urbanairship/actions/c;)V
    .locals 5

    .prologue
    .line 247
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_1

    .line 1281
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/actions/f;->f:Landroid/os/Bundle;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1282
    :goto_1
    iget-object v2, p0, Lcom/urbanairship/actions/f;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1283
    const-string v2, "com.urbanairship.REGISTRY_ACTION_NAME"

    iget-object v3, p0, Lcom/urbanairship/actions/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :cond_0
    new-instance v2, Lcom/urbanairship/actions/b;

    iget-object v3, p0, Lcom/urbanairship/actions/f;->g:Lcom/urbanairship/actions/p;

    iget-object v4, p0, Lcom/urbanairship/actions/f;->e:Lcom/urbanairship/actions/ActionValue;

    invoke-direct {v2, v3, v4, v1}, Lcom/urbanairship/actions/b;-><init>(Lcom/urbanairship/actions/p;Lcom/urbanairship/actions/ActionValue;Landroid/os/Bundle;)V

    .line 253
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 255
    sget-object v0, Lcom/urbanairship/actions/f;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/urbanairship/actions/f$1;

    invoke-direct {v3, p0, v2, p1, v1}, Lcom/urbanairship/actions/f$1;-><init>(Lcom/urbanairship/actions/f;Lcom/urbanairship/actions/b;Lcom/urbanairship/actions/c;Landroid/os/Handler;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 272
    return-void

    .line 248
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 1281
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/urbanairship/actions/f;->f:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lcom/urbanairship/actions/f;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/urbanairship/actions/f;->f:Landroid/os/Bundle;

    .line 171
    return-object p0
.end method

.method public final a(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/f;
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/urbanairship/actions/f;->e:Lcom/urbanairship/actions/ActionValue;

    .line 141
    return-object p0
.end method

.method public final a(Lcom/urbanairship/actions/p;)Lcom/urbanairship/actions/f;
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/urbanairship/actions/f;->g:Lcom/urbanairship/actions/p;

    .line 183
    return-object p0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/urbanairship/actions/f;->b(Lcom/urbanairship/actions/c;)V

    .line 226
    return-void
.end method

.method public final a(Lcom/urbanairship/actions/c;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/urbanairship/actions/f;->b(Lcom/urbanairship/actions/c;)V

    .line 235
    return-void
.end method
