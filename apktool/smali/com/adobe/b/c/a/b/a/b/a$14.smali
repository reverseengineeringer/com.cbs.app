.class final Lcom/adobe/b/c/a/b/a/b/a$14;
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
    .line 1095
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v1

    monitor-enter v1

    .line 1099
    :try_start_0
    check-cast p1, Lcom/adobe/b/a/a;

    .line 1100
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1102
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const-string v3, "track_external_errors"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v2, v0}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;Z)Z

    .line 1104
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#_onNetworkCheckStatusComplete(track_ext_err="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adobe/b/c/a/b/a/b/a$14;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v4}, Lcom/adobe/b/c/a/b/a/b/a;->l(Lcom/adobe/b/c/a/b/a/b/a;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 1106
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 1107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
