.class public final Lcom/adobe/adobepass/accessenabler/api/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/adobe/adobepass/accessenabler/api/e$a;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Lcom/adobe/adobepass/accessenabler/a/j;

.field public g:Lcom/adobe/adobepass/accessenabler/a/k;

.field public h:Lcom/adobe/adobepass/accessenabler/c/b;

.field public i:Lcom/adobe/adobepass/accessenabler/b/b;

.field public j:Lcom/adobe/adobepass/accessenabler/api/d;

.field private k:I

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Ljava/util/concurrent/Semaphore;

.field private o:Lcom/adobe/adobepass/accessenabler/a/c;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->m:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->n:Ljava/util/concurrent/Semaphore;

    .line 46
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-direct {v0, p0}, Lcom/adobe/adobepass/accessenabler/a/j;-><init>(Lcom/adobe/adobepass/accessenabler/api/b;)V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->g:Lcom/adobe/adobepass/accessenabler/a/k;

    .line 49
    new-instance v0, Lcom/adobe/adobepass/accessenabler/b/b;

    invoke-direct {v0}, Lcom/adobe/adobepass/accessenabler/b/b;-><init>()V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->i:Lcom/adobe/adobepass/accessenabler/b/b;

    .line 59
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/c;

    invoke-direct {v0}, Lcom/adobe/adobepass/accessenabler/a/c;-><init>()V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->o:Lcom/adobe/adobepass/accessenabler/a/c;

    .line 53
    new-instance v0, Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-direct {v0, p1}, Lcom/adobe/adobepass/accessenabler/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    .line 54
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/b$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/adobepass/accessenabler/api/b$1;-><init>(Lcom/adobe/adobepass/accessenabler/api/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/b;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/b;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->l:Z

    if-nez v0, :cond_0

    .line 69
    iput-boolean p1, p0, Lcom/adobe/adobepass/accessenabler/api/b;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->l:Z

    .line 81
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    return-void
.end method

.method public final declared-synchronized b(Z)V
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->n:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    :try_start_1
    const-string v1, "AccessEnablerContext"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 106
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->n:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 3

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->k:I

    .line 86
    const-string v0, "AccessEnablerContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Increase the setRequestor() thread count to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/adobe/adobepass/accessenabler/api/b;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->k:I

    .line 91
    const-string v0, "AccessEnablerContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decrease the setRequestor() thread count to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/adobe/adobepass/accessenabler/api/b;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()I
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->m:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()Lcom/adobe/adobepass/accessenabler/a/c;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/b;->o:Lcom/adobe/adobepass/accessenabler/a/c;

    return-object v0
.end method
