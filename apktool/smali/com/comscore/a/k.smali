.class public final Lcom/comscore/a/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/comscore/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/comscore/a/b;

    invoke-direct {v0}, Lcom/comscore/a/b;-><init>()V

    sput-object v0, Lcom/comscore/a/k;->a:Lcom/comscore/a/b;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/comscore/a/k;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->k()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 0
    sget-object v0, Lcom/comscore/a/k;->a:Lcom/comscore/a/b;

    .line 1000
    iget-object v1, v0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p0, v0, Lcom/comscore/a/b;->aa:Landroid/content/Context;

    .line 2000
    new-instance v1, Lcom/comscore/utils/b/a;

    invoke-direct {v1, v0}, Lcom/comscore/utils/b/a;-><init>(Lcom/comscore/a/b;)V

    .line 1000
    iput-object v1, v0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    iget-object v1, v0, Lcom/comscore/a/b;->f:Lcom/comscore/utils/b/a;

    new-instance v2, Lcom/comscore/a/j;

    invoke-direct {v2, v0}, Lcom/comscore/a/j;-><init>(Lcom/comscore/a/b;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/comscore/a/k;->a:Lcom/comscore/a/b;

    invoke-virtual {v0, p0}, Lcom/comscore/a/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/comscore/a/k;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->l()V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/comscore/a/k;->a:Lcom/comscore/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/a/b;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lcom/comscore/a/k;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->m()V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/comscore/a/k;->a:Lcom/comscore/a/b;

    invoke-virtual {v0, p0}, Lcom/comscore/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static d()V
    .locals 1

    sget-object v0, Lcom/comscore/a/k;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->n()V

    return-void
.end method

.method public static e()V
    .locals 3

    sget-object v0, Lcom/comscore/a/k;->a:Lcom/comscore/a/b;

    const/16 v1, 0x3c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/a/b;->a(IZ)V

    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/comscore/a/k;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Lcom/comscore/a/b;
    .locals 1

    sget-object v0, Lcom/comscore/a/k;->a:Lcom/comscore/a/b;

    return-object v0
.end method
