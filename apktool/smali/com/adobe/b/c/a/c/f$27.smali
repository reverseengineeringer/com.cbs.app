.class final Lcom/adobe/b/c/a/c/f$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/c/f;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/c/f;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/adobe/b/c/a/c/f$27;->a:Lcom/adobe/b/c/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 454
    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    .line 455
    const-string v1, "qos"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    check-cast p1, Ljava/util/HashMap;

    const-string v0, "qos"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 461
    :goto_0
    return-object v0

    .line 458
    :cond_0
    const-string v1, "qos"

    iget-object v2, p0, Lcom/adobe/b/c/a/c/f$27;->a:Lcom/adobe/b/c/a/c/f;

    invoke-static {v2}, Lcom/adobe/b/c/a/c/f;->a(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/c/a/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/b/c/a/c/h;->getQoSInfo()Lcom/adobe/b/c/a/c/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v1, p0, Lcom/adobe/b/c/a/c/f$27;->a:Lcom/adobe/b/c/a/c/f;

    invoke-static {v1}, Lcom/adobe/b/c/a/c/f;->k(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/b/c/a/c/f$27;->a:Lcom/adobe/b/c/a/c/f;

    invoke-static {v2}, Lcom/adobe/b/c/a/c/f;->j(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Data from delegate > QoSInfo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/util/HashMap;

    const-string v4, "qos"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 461
    const-string v1, "qos"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
