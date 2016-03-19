.class final Lcom/comscore/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/a/a;

.field final synthetic b:Lcom/comscore/a/a;

.field final synthetic c:Lcom/comscore/a/d;

.field final synthetic d:Lcom/comscore/a/d;

.field final synthetic e:Lcom/comscore/a/b;


# direct methods
.method constructor <init>(Lcom/comscore/a/b;Lcom/comscore/a/a;Lcom/comscore/a/a;Lcom/comscore/a/d;Lcom/comscore/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    iput-object p2, p0, Lcom/comscore/a/i;->a:Lcom/comscore/a/a;

    iput-object p3, p0, Lcom/comscore/a/i;->b:Lcom/comscore/a/a;

    iput-object p4, p0, Lcom/comscore/a/i;->c:Lcom/comscore/a/d;

    iput-object p5, p0, Lcom/comscore/a/i;->d:Lcom/comscore/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/comscore/a/i;->a:Lcom/comscore/a/a;

    iget-object v2, p0, Lcom/comscore/a/i;->b:Lcom/comscore/a/a;

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    iget-object v1, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    iget-object v1, v1, Lcom/comscore/a/b;->x:Lcom/comscore/a/a;

    invoke-virtual {v0, v1}, Lcom/comscore/a/b;->b(Lcom/comscore/a/a;)V

    iget-object v0, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    iget-object v1, p0, Lcom/comscore/a/i;->b:Lcom/comscore/a/a;

    invoke-virtual {v0, v1}, Lcom/comscore/a/b;->c(Lcom/comscore/a/a;)V

    iget-object v0, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->p()V

    iget-object v0, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    iget-object v1, p0, Lcom/comscore/a/i;->b:Lcom/comscore/a/a;

    iput-object v1, v0, Lcom/comscore/a/b;->x:Lcom/comscore/a/a;

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/comscore/a/i;->c:Lcom/comscore/a/d;

    iget-object v2, p0, Lcom/comscore/a/i;->d:Lcom/comscore/a/d;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    iget-object v2, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    iget-object v2, v2, Lcom/comscore/a/b;->K:Lcom/comscore/a/d;

    invoke-virtual {v1, v2}, Lcom/comscore/a/b;->a(Lcom/comscore/a/d;)V

    iget-object v1, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    iget-object v2, p0, Lcom/comscore/a/i;->d:Lcom/comscore/a/d;

    invoke-virtual {v1, v2}, Lcom/comscore/a/b;->b(Lcom/comscore/a/d;)V

    iget-object v1, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->q()V

    iget-object v1, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    iget-object v2, p0, Lcom/comscore/a/i;->d:Lcom/comscore/a/d;

    iput-object v2, v1, Lcom/comscore/a/b;->K:Lcom/comscore/a/d;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    iget-object v1, p0, Lcom/comscore/a/i;->e:Lcom/comscore/a/b;

    iget-object v1, v1, Lcom/comscore/a/b;->x:Lcom/comscore/a/a;

    invoke-virtual {v0, v1}, Lcom/comscore/a/b;->a(Lcom/comscore/a/a;)V

    :cond_2
    return-void
.end method
