.class final Lcom/adobe/b/c/a/b/a/b/a$11;
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
    .line 1035
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/b/a$11;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1038
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$11;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v8

    monitor-enter v8

    .line 1039
    :try_start_0
    check-cast p1, Lcom/adobe/b/a/a;

    .line 1040
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1042
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/a$11;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$11;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#_onApiTrackInternalError(source="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "source"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", err_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "error_id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 1048
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/b/a$11;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v1, v0}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Ljava/util/Map;)V

    .line 1050
    new-instance v1, Lcom/adobe/b/c/a/b/a/d/b/b;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$11;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v2

    const-string v3, "error"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/adobe/b/c/a/b/a/d/b/b;-><init>(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;DLjava/lang/Object;Lcom/adobe/b/a/b;)V

    .line 1051
    invoke-virtual {v1}, Lcom/adobe/b/c/a/b/a/d/b/b;->a()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v3

    const-string v2, "error_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/adobe/b/c/a/b/a/d/a/f;->b(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v1}, Lcom/adobe/b/c/a/b/a/d/b/b;->a()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v2

    const-string v3, "source"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/adobe/b/c/a/b/a/d/a/f;->c(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/b/a$11;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v0, v1}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Lcom/adobe/b/c/a/b/a/d/b/b;)V

    .line 1055
    monitor-exit v8

    return-object v9

    .line 1056
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
