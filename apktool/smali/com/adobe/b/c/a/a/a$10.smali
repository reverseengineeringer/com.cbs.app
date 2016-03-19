.class final Lcom/adobe/b/c/a/a/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/a/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/a/a;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/adobe/b/c/a/a/a$10;->a:Lcom/adobe/b/c/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 638
    iget-object v1, p0, Lcom/adobe/b/c/a/a/a$10;->a:Lcom/adobe/b/c/a/a/a;

    move-object v0, p1

    check-cast v0, Lcom/adobe/b/c/a;

    invoke-static {v1, v0}, Lcom/adobe/b/c/a/a/a;->a(Lcom/adobe/b/c/a/a/a;Lcom/adobe/b/c/a;)Lcom/adobe/b/c/a;

    .line 639
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$10;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->v(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/a/a$10;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/a/a;->u(Lcom/adobe/b/c/a/a/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/b/c/a/a/a$10;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/a/a;->h(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/b/c/a/a/a$10;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/a/a;->h(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$10;->a:Lcom/adobe/b/c/a/a/a;

    const-string v1, "error"

    invoke-static {v0, v1, p1}, Lcom/adobe/b/c/a/a/a;->d(Lcom/adobe/b/c/a/a/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 643
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$10;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->i(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$10;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->i(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/a/a$10;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/a/a;->h(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/b/c/a/a/c;->onError(Lcom/adobe/b/c/a;)V

    .line 647
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
