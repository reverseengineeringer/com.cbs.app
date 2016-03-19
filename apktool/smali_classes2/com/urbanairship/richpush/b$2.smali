.class final Lcom/urbanairship/richpush/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/richpush/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/richpush/b;


# direct methods
.method constructor <init>(Lcom/urbanairship/richpush/b;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/urbanairship/richpush/b$2;->a:Lcom/urbanairship/richpush/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/urbanairship/richpush/b$2;->a:Lcom/urbanairship/richpush/b;

    invoke-static {v0}, Lcom/urbanairship/richpush/b;->b(Lcom/urbanairship/richpush/b;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 389
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/richpush/b$2;->a:Lcom/urbanairship/richpush/b;

    invoke-static {v2}, Lcom/urbanairship/richpush/b;->b(Lcom/urbanairship/richpush/b;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
