.class final Lcom/comscore/streaming/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/comscore/streaming/c;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/c;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/c;

    iput-object p2, p0, Lcom/comscore/streaming/m;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/comscore/streaming/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/c;

    iget-object v0, v0, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    sget-object v1, Lcom/comscore/b/d;->e:Lcom/comscore/b/d;

    iget-object v2, p0, Lcom/comscore/streaming/m;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/comscore/streaming/m;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/comscore/b/c;->a(Lcom/comscore/a/b;Lcom/comscore/b/d;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/c;

    iget-object v1, v1, Lcom/comscore/streaming/c;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->i()Lcom/comscore/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/comscore/c/c;->a(Lcom/comscore/c/b;)Z

    return-void
.end method
