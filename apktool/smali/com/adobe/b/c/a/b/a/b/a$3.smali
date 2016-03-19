.class final Lcom/adobe/b/c/a/b/a/b/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/b/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/b/a;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 550
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v1

    monitor-enter v1

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const-string v2, "_onApiSeekStart"

    invoke-static {v0, v2}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 567
    :goto_0
    return-object v3

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v2}, Lcom/adobe/b/c/a/b/a/d/a/c;->d()Lcom/adobe/b/c/a/b/a/d/a/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Lcom/adobe/b/c/a/b/a/d/a/a;)Lcom/adobe/b/c/a/b/a/d/a/a;

    .line 558
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v2}, Lcom/adobe/b/c/a/b/a/d/a/c;->e()Lcom/adobe/b/c/a/b/a/d/a/d;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Lcom/adobe/b/c/a/b/a/d/a/d;)Lcom/adobe/b/c/a/b/a/d/a/d;

    .line 561
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Lcom/adobe/b/c/a/b/a/d/a/a;)V

    .line 562
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const-string v2, "main"

    invoke-virtual {v0, v2}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    invoke-virtual {v2}, Lcom/adobe/b/c/a/b/a/d/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Ljava/lang/String;

    .line 565
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$3;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/b/a;->b:Lcom/adobe/b/c/a/b/a/d/a/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/adobe/b/c/a/b/a/d/a/c;->a(Lcom/adobe/b/c/a/b/a/d/a/d;)V

    .line 567
    monitor-exit v1

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
