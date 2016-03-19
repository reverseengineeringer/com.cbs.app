.class final Lcom/adobe/b/c/a/b/a$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 567
    check-cast p1, Lcom/adobe/b/a/a;

    .line 568
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a;

    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/a;

    invoke-static {v1, v0}, Lcom/adobe/b/c/a/b/a;->a(Lcom/adobe/b/c/a/b/a;Lcom/adobe/b/c/a;)Lcom/adobe/b/c/a;

    .line 570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 571
    const-string v1, "source"

    const-string v2, "sourceErrorHeartbeat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v1, "error_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a;->a(Lcom/adobe/b/c/a/b/a;)Lcom/adobe/b/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a;->a(Lcom/adobe/b/c/a/b/a;)Lcom/adobe/b/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a;->c(Lcom/adobe/b/c/a/b/a;)Lcom/adobe/b/a/b/a;

    move-result-object v1

    new-instance v2, Lcom/adobe/b/a/a;

    invoke-static {}, Lcom/adobe/b/c/a/b/a;->u()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/adobe/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/adobe/b/a/b/a;->a(Lcom/adobe/b/a/a;)V

    .line 577
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 578
    const-string v1, "reset"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a;->c(Lcom/adobe/b/c/a/b/a;)Lcom/adobe/b/a/b/a;

    move-result-object v1

    const-string v2, "clock:reporting.pause"

    invoke-virtual {v1, v2, v0}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a;

    const-string v1, "error"

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a;->a(Lcom/adobe/b/c/a/b/a;)Lcom/adobe/b/c/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/b/c/a/b/a;->b(Lcom/adobe/b/c/a/b/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 584
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a;->b(Lcom/adobe/b/c/a/b/a;)Lcom/adobe/b/c/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a;->b(Lcom/adobe/b/c/a/b/a;)Lcom/adobe/b/c/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a;->a(Lcom/adobe/b/c/a/b/a;)Lcom/adobe/b/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/b/c/a/b/c;->onError(Lcom/adobe/b/c/a;)V

    .line 588
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
