.class final Lcom/comscore/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/a/b;


# direct methods
.method constructor <init>(Lcom/comscore/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/a/p;->a:Lcom/comscore/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/a/p;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/a/p;->a:Lcom/comscore/a/b;

    iget v0, v0, Lcom/comscore/a/b;->P:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/comscore/a/p;->a:Lcom/comscore/a/b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/comscore/a/b;->P:I

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/p;->a:Lcom/comscore/a/b;

    iget-object v0, v0, Lcom/comscore/a/b;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lcom/comscore/a/p;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->o()V

    goto :goto_0
.end method
