.class public Lcom/adobe/b/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/adobe/b/a/c;

.field private c:Lcom/adobe/b/a/a/f;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/b/a/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-class v0, Lcom/adobe/b/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/b/c/b;->a:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/adobe/b/a/d;

    invoke-direct {v0}, Lcom/adobe/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/c/b;->b:Lcom/adobe/b/a/c;

    .line 66
    new-instance v0, Lcom/adobe/b/a/a/f;

    iget-object v1, p0, Lcom/adobe/b/c/b;->b:Lcom/adobe/b/a/c;

    invoke-direct {v0, v1}, Lcom/adobe/b/a/a/f;-><init>(Lcom/adobe/b/a/c;)V

    iput-object v0, p0, Lcom/adobe/b/c/b;->c:Lcom/adobe/b/a/a/f;

    .line 69
    iget-object v0, p0, Lcom/adobe/b/c/b;->c:Lcom/adobe/b/a/a/f;

    new-instance v1, Lcom/adobe/b/c/b/a/a;

    iget-object v2, p0, Lcom/adobe/b/c/b;->b:Lcom/adobe/b/a/c;

    invoke-direct {v1, v2}, Lcom/adobe/b/c/b/a/a;-><init>(Lcom/adobe/b/a/c;)V

    invoke-virtual {v0, v1}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/a/c;)V

    .line 77
    new-instance v0, Lcom/adobe/b/c/b$1;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/b$1;-><init>(Lcom/adobe/b/c/b;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/a/a/c;

    .line 102
    iget-object v2, p0, Lcom/adobe/b/c/b;->c:Lcom/adobe/b/a/a/f;

    invoke-virtual {v2, v0}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/a/c;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/c/b;->c:Lcom/adobe/b/a/a/f;

    invoke-virtual {v0}, Lcom/adobe/b/a/a/f;->a()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/b/c/b;->d:Z

    .line 111
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/adobe/b/c/c;)V
    .locals 3

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lcom/adobe/b/c/c;->a:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/adobe/b/c/b;->b:Lcom/adobe/b/a/c;

    invoke-interface {v0}, Lcom/adobe/b/a/c;->a()V

    .line 134
    :goto_0
    iget-boolean v0, p0, Lcom/adobe/b/c/b;->d:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/adobe/b/c/b;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/b;->a:Ljava/lang/String;

    const-string v2, "Instance is destroyed."

    invoke-interface {v0, v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/b/c/b;->b:Lcom/adobe/b/a/c;

    invoke-interface {v0}, Lcom/adobe/b/a/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
