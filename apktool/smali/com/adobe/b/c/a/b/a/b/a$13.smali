.class final Lcom/adobe/b/c/a/b/a/b/a$13;
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
    .line 1060
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1063
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->c(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/a;

    move-result-object v4

    monitor-enter v4

    .line 1064
    :try_start_0
    check-cast p1, Lcom/adobe/b/a/a;

    .line 1065
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1067
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->b(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/a/c;

    move-result-object v3

    iget-object v5, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v5}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "#_onApiQuantumEnd(interval="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v7, v7, Lcom/adobe/b/c/a/b/a/b/a;->a:Lcom/adobe/b/a/b/a;

    const-string v8, "reporting_interval"

    .line 1213
    invoke-virtual {v7, v8}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1067
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 1071
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    const-string v5, "_onApiQuantumEnd"

    invoke-static {v3, v5}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 1090
    :goto_0
    return-object v9

    .line 1073
    :cond_0
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "playhead"

    aput-object v6, v5, v3

    .line 1074
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->d(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/b/b;

    move-result-object v6

    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v6, v3, v5}, Lcom/adobe/b/c/a/b/a/b/b;->a(Ljava/util/HashMap;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1075
    monitor-exit v4

    goto :goto_0

    .line 1091
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1079
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->m(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/b/b;->a()Lcom/adobe/b/c/a/b/a/d/a/f;

    move-result-object v5

    const-string v3, "playhead"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/adobe/b/c/a/b/a/d/a/f;->a(D)V

    .line 1081
    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3, v2}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Ljava/util/Map;)V

    .line 1083
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->m(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/b/c/a/b/a/d/b/b;->d()Lcom/adobe/b/c/a/b/a/d/a/g;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->e:Lcom/adobe/b/c/a/b/a/d/a/g;

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/g;->a()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/adobe/b/c/a/b/a/d/a/g;->a(J)V

    .line 1084
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->m(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/b/c/a/b/a/d/b/b;->d()Lcom/adobe/b/c/a/b/a/d/a/g;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->e:Lcom/adobe/b/c/a/b/a/d/a/g;

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/g;->b()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/adobe/b/c/a/b/a/d/a/g;->a(D)V

    .line 1085
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->m(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/b/c/a/b/a/d/b/b;->d()Lcom/adobe/b/c/a/b/a/d/a/g;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->e:Lcom/adobe/b/c/a/b/a/d/a/g;

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/g;->c()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/adobe/b/c/a/b/a/d/a/g;->b(J)V

    .line 1086
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/b/a;->m(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/b/c/a/b/a/d/b/b;->d()Lcom/adobe/b/c/a/b/a/d/a/g;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/b/a;->e:Lcom/adobe/b/c/a/b/a/d/a/g;

    invoke-virtual {v3}, Lcom/adobe/b/c/a/b/a/d/a/g;->d()J

    move-result-wide v6

    neg-long v6, v6

    invoke-virtual {v2, v6, v7}, Lcom/adobe/b/c/a/b/a/d/a/g;->c(J)V

    .line 1088
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/b/a$13;->a:Lcom/adobe/b/c/a/b/a/b/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/b/a;->m(Lcom/adobe/b/c/a/b/a/b/a;)Lcom/adobe/b/c/a/b/a/d/b/b;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/b/c/a/b/a/b/a;->a(Lcom/adobe/b/c/a/b/a/b/a;Lcom/adobe/b/c/a/b/a/d/b/b;)V

    .line 1090
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
