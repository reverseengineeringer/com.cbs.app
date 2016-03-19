.class final Lcom/adobe/b/c/a/c/f$12;
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
    .line 405
    iput-object p1, p0, Lcom/adobe/b/c/a/c/f$12;->a:Lcom/adobe/b/c/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 409
    check-cast p1, Ljava/util/HashMap;

    .line 410
    const-string v0, "ad"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "ad"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    .line 413
    :cond_0
    const-string v0, "ad"

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f$12;->a:Lcom/adobe/b/c/a/c/f;

    invoke-static {v1}, Lcom/adobe/b/c/a/c/f;->a(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/c/a/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/b/c/a/c/h;->getAdInfo()Lcom/adobe/b/c/a/c/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/adobe/b/c/a/c/f$12;->a:Lcom/adobe/b/c/a/c/f;

    invoke-static {v0}, Lcom/adobe/b/c/a/c/f;->e(Lcom/adobe/b/c/a/c/f;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/c/f$12;->a:Lcom/adobe/b/c/a/c/f;

    invoke-static {v1}, Lcom/adobe/b/c/a/c/f;->d(Lcom/adobe/b/c/a/c/f;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data from delegate > AdInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ad"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->b(Ljava/lang/String;)V

    .line 416
    const-string v0, "ad"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
