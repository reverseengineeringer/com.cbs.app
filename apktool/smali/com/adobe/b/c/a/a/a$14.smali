.class final Lcom/adobe/b/c/a/a/a$14;
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
    .line 249
    iput-object p1, p0, Lcom/adobe/b/c/a/a/a$14;->a:Lcom/adobe/b/c/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 253
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$14;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->h(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-object v4

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$14;->a:Lcom/adobe/b/c/a/a/a;

    new-instance v1, Lcom/adobe/b/c/a;

    const-string v2, "Internal error"

    const-string v3, "HeartbeatPlugin is in ERROR state."

    invoke-direct {v1, v2, v3}, Lcom/adobe/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/adobe/b/c/a/a/a;->a(Lcom/adobe/b/c/a/a/a;Lcom/adobe/b/c/a;)Lcom/adobe/b/c/a;

    .line 256
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$14;->a:Lcom/adobe/b/c/a/a/a;

    const-string v1, "error"

    iget-object v2, p0, Lcom/adobe/b/c/a/a/a$14;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/a/a;->h(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/b/c/a/a/a;->a(Lcom/adobe/b/c/a/a/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$14;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->i(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$14;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->i(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/a/a$14;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/a/a;->h(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/b/c/a/a/c;->onError(Lcom/adobe/b/c/a;)V

    goto :goto_0
.end method
