.class final Lcom/adobe/b/c/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/b/c/b/a/c$b;,
        Lcom/adobe/b/c/b/a/c$a;
    }
.end annotation


# static fields
.field static a:D


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/adobe/b/a/c;

.field private d:Lcom/adobe/b/c/b/a/a;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/b/c/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/adobe/b/c/b/a/c$a;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    sput-wide v0, Lcom/adobe/b/c/b/a/c;->a:D

    return-void
.end method

.method constructor <init>(Lcom/adobe/b/c/b/a/a;Lcom/adobe/b/a/c;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to ClockService object cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/adobe/b/c/b/a/c;->d:Lcom/adobe/b/c/b/a/a;

    .line 52
    if-nez p2, :cond_1

    .line 53
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to logger cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    const-class v0, Lcom/adobe/b/c/b/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/b/c/b/a/c;->b:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/adobe/b/c/b/a/c;->c:Lcom/adobe/b/a/c;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/b/c/b/a/c;->g:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/c/b/a/c;->e:Ljava/util/Map;

    .line 62
    new-instance v0, Lcom/adobe/b/c/b/a/c$a;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/b/a/c$a;-><init>(Lcom/adobe/b/c/b/a/c;)V

    iput-object v0, p0, Lcom/adobe/b/c/b/a/c;->f:Lcom/adobe/b/c/b/a/c$a;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/adobe/b/c/b/a/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/adobe/b/c/b/a/c;)Lcom/adobe/b/a/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c;->c:Lcom/adobe/b/a/c;

    return-object v0
.end method

.method static synthetic c(Lcom/adobe/b/c/b/a/c;)V
    .locals 11

    .prologue
    .line 33
    .line 1167
    iget-boolean v0, p0, Lcom/adobe/b/c/b/a/c;->g:Z

    if-nez v0, :cond_5

    .line 1169
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    iget-object v8, p0, Lcom/adobe/b/c/b/a/c;->e:Ljava/util/Map;

    monitor-enter v8

    .line 1172
    :try_start_0
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/b/a/b;

    .line 1175
    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1180
    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->a()I

    move-result v10

    .line 1181
    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->c()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 1182
    iget-object v1, p0, Lcom/adobe/b/c/b/a/c;->c:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/b/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#_onTick() > "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->c()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 1186
    :cond_1
    if-eqz v10, :cond_2

    .line 1188
    new-instance v1, Lcom/adobe/b/c/b/a/c$b;

    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->c()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->e()I

    move-result v6

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/adobe/b/c/b/a/c$b;-><init>(Lcom/adobe/b/c/b/a/c;Ljava/lang/String;DI)V

    .line 1189
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    const/4 v1, -0x1

    if-eq v10, v1, :cond_0

    invoke-virtual {v0, v10}, Lcom/adobe/b/c/b/a/b;->a(I)V

    goto/16 :goto_0

    .line 1197
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1192
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/b/c/b/a/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1197
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1202
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/b/a/c$b;

    .line 1203
    iget-object v2, p0, Lcom/adobe/b/c/b/a/c;->d:Lcom/adobe/b/c/b/a/a;

    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/c$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/c$b;->b()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/c$b;->c()I

    move-result v0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/adobe/b/c/b/a/a;->a(Ljava/lang/String;DI)V

    .line 1201
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1206
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 33
    :cond_5
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/adobe/b/c/b/a/c;->e:Ljava/util/Map;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final a(Ljava/lang/String;DI)V
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lcom/adobe/b/c/b/a/c;->e:Ljava/util/Map;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c;->e:Ljava/util/Map;

    new-instance v2, Lcom/adobe/b/c/b/a/b;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/adobe/b/c/b/a/b;-><init>(Ljava/lang/String;DI)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 112
    iget-object v1, p0, Lcom/adobe/b/c/b/a/c;->e:Ljava/util/Map;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c;->c:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/b/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#resumedTimer(name="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/b/a/b;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/b/c/b/a/b;->a(Z)V

    .line 123
    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->f()V

    .line 127
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final b(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 131
    iget-object v1, p0, Lcom/adobe/b/c/b/a/c;->e:Ljava/util/Map;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c;->c:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/b/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#pauseTimer(name="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/b/a/b;

    .line 139
    if-eqz v0, :cond_0

    .line 140
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/adobe/b/c/b/a/b;->a(Z)V

    .line 142
    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->f()V

    .line 146
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/b/a/b;

    .line 160
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/adobe/b/c/b/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
