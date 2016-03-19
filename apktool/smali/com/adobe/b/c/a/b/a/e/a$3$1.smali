.class final Lcom/adobe/b/c/a/b/a/e/a$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/b/c/a/b/a/e/a$3;->call(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/e/a$3;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/e/a$3;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/e/a$3$1;->a:Lcom/adobe/b/c/a/b/a/e/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 200
    check-cast p1, Lcom/adobe/b/a/a;

    .line 201
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 203
    const-string v1, "server_response"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    new-instance v1, Lcom/adobe/b/c/a/b/a/e/b;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/e/a$3$1;->a:Lcom/adobe/b/c/a/b/a/e/a$3;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/adobe/b/c/a/b/a/e/b;-><init>(Ljava/lang/String;Lcom/adobe/b/a/c;)V

    .line 207
    invoke-virtual {v1}, Lcom/adobe/b/c/a/b/a/e/b;->a()Ljava/util/Map;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$3$1;->a:Lcom/adobe/b/c/a/b/a/e/a$3;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/e/a;->i(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/b/a;

    move-result-object v1

    new-instance v2, Lcom/adobe/b/a/a;

    const-string v3, "net:check_status_complete"

    invoke-direct {v2, v3, v0}, Lcom/adobe/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/adobe/b/a/b/a;->a(Lcom/adobe/b/a/a;)V

    .line 218
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$3$1;->a:Lcom/adobe/b/c/a/b/a/e/a$3;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$3$1;->a:Lcom/adobe/b/c/a/b/a/e/a$3;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/e/a;->a(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$3$1;->a:Lcom/adobe/b/c/a/b/a/e/a$3;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$3$1;->a:Lcom/adobe/b/c/a/b/a/e/a$3;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/e/a$3;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/e/a;->a(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
