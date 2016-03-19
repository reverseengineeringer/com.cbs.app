.class final Lcom/comscore/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/b/d;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/comscore/a/b;


# direct methods
.method constructor <init>(Lcom/comscore/a/b;Lcom/comscore/b/d;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/a/u;->c:Lcom/comscore/a/b;

    iput-object p2, p0, Lcom/comscore/a/u;->a:Lcom/comscore/b/d;

    iput-object p3, p0, Lcom/comscore/a/u;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/comscore/a/u;->c:Lcom/comscore/a/b;

    iget-object v1, p0, Lcom/comscore/a/u;->a:Lcom/comscore/b/d;

    iget-object v2, p0, Lcom/comscore/a/u;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/a/b;->a(Lcom/comscore/b/d;Ljava/util/HashMap;)V

    return-void
.end method
