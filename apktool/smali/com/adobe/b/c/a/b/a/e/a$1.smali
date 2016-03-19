.class final Lcom/adobe/b/c/a/b/a/e/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/e/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/e/a;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/e/a$1;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 102
    check-cast p1, Lcom/adobe/b/a/a;

    .line 103
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 105
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$1;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;)Lcom/adobe/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/e/a$1;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/e/a;->a(Lcom/adobe/b/c/a/b/a/e/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#_onApiConfig(sb_server="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "tracking_server"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", check_status_server="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "check_status_server"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", publisher="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "publisher"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", quiet_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "quiet_mode"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ssl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ssl"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/e/a$1;->a:Lcom/adobe/b/c/a/b/a/e/a;

    const-string v1, "tracking_server"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ssl"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/adobe/b/c/a/b/a/e/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/adobe/b/c/a/b/a/e/a;->a(Lcom/adobe/b/c/a/b/a/e/a;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/e/a$1;->a:Lcom/adobe/b/c/a/b/a/e/a;

    const-string v1, "check_status_server"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ssl"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/adobe/b/c/a/b/a/e/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/adobe/b/c/a/b/a/e/a;->b(Lcom/adobe/b/c/a/b/a/e/a;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/e/a$1;->a:Lcom/adobe/b/c/a/b/a/e/a;

    const-string v1, "publisher"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/adobe/b/c/a/b/a/e/a;->c(Lcom/adobe/b/c/a/b/a/e/a;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/e/a$1;->a:Lcom/adobe/b/c/a/b/a/e/a;

    const-string v2, "quiet_mode"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/adobe/b/c/a/b/a/e/a;->a(Lcom/adobe/b/c/a/b/a/e/a;Z)Z

    .line 120
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/e/a$1;->a:Lcom/adobe/b/c/a/b/a/e/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/e/a;->c(Lcom/adobe/b/c/a/b/a/e/a;)Z

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method
