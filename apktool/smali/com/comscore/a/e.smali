.class final Lcom/comscore/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/comscore/a/b;


# direct methods
.method constructor <init>(Lcom/comscore/a/b;Z)V
    .locals 1

    iput-object p1, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/comscore/a/e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/comscore/a/e;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    invoke-static {v0}, Lcom/comscore/a/b;->a(Lcom/comscore/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/comscore/a/b;->a(Lcom/comscore/a/b;Z)Z

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    iget-object v1, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    invoke-static {v1}, Lcom/comscore/a/b;->b(Lcom/comscore/a/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/comscore/a/b;->o(Z)V

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->a()V

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    .line 1000
    iget-object v0, v0, Lcom/comscore/a/b;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    .line 0
    invoke-virtual {v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->a()V

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    .line 2000
    iget-object v0, v0, Lcom/comscore/a/b;->c:Lcom/comscore/b/e;

    .line 0
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/comscore/b/e;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/comscore/a/e;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    invoke-static {v0}, Lcom/comscore/a/b;->a(Lcom/comscore/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/comscore/a/b;->a(Lcom/comscore/a/b;Z)Z

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    iget-object v1, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    iget-boolean v1, v1, Lcom/comscore/a/b;->af:Z

    invoke-static {v0, v1}, Lcom/comscore/a/b;->b(Lcom/comscore/a/b;Z)Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    iget-object v1, v1, Lcom/comscore/a/b;->ag:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    iget-object v0, v0, Lcom/comscore/a/b;->ag:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_2
    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    .line 3000
    iget-object v0, v0, Lcom/comscore/a/b;->h:Lcom/comscore/utils/ConnectivityChangeReceiver;

    .line 0
    invoke-virtual {v0}, Lcom/comscore/utils/ConnectivityChangeReceiver;->b()V

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    .line 4000
    iget-object v0, v0, Lcom/comscore/a/b;->c:Lcom/comscore/b/e;

    .line 0
    invoke-virtual {v0}, Lcom/comscore/b/e;->b()V

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    .line 5000
    iget-object v0, v0, Lcom/comscore/a/b;->a:Lcom/comscore/utils/i;

    .line 0
    invoke-virtual {v0}, Lcom/comscore/utils/i;->b()V

    iget-object v0, p0, Lcom/comscore/a/e;->b:Lcom/comscore/a/b;

    iget-object v0, v0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    invoke-virtual {v0}, Lcom/comscore/utils/b/a;->c()V

    goto :goto_0
.end method
