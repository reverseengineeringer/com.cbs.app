.class public final Lcom/comscore/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/a/b;


# direct methods
.method public constructor <init>(Lcom/comscore/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/a/c;->a:Lcom/comscore/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/a/c;->a:Lcom/comscore/a/b;

    invoke-static {v0}, Lcom/comscore/a/b;->a(Lcom/comscore/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/comscore/a/c;->a:Lcom/comscore/a/b;

    iget-object v0, v0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/a/c;->a:Lcom/comscore/a/b;

    iget-object v0, v0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, p0, Lcom/comscore/a/c;->a:Lcom/comscore/a/b;

    iget-object v1, v1, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/b/a;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/comscore/a/c;->a:Lcom/comscore/a/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/comscore/a/b;->X:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/comscore/a/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->o()V

    goto :goto_0
.end method
