.class final Lcom/comscore/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/a/b;


# direct methods
.method constructor <init>(Lcom/comscore/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/a/j;->a:Lcom/comscore/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/comscore/a/j;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->b()V

    iget-object v0, p0, Lcom/comscore/a/j;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->e()V

    return-void
.end method
