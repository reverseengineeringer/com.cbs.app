.class public Lcom/adobe/b/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/a/c;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/adobe/b/a/c;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/Object;

.field protected e:Lcom/adobe/b/a/a/f;

.field protected f:Z

.field protected g:Z

.field protected h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/adobe/b/a/a/a;->c:Ljava/lang/String;

    .line 47
    iput-boolean v0, p0, Lcom/adobe/b/a/a/a;->h:Z

    .line 48
    iput-boolean v0, p0, Lcom/adobe/b/a/a/a;->f:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/b/a/a/a;->g:Z

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/a/a/a;->d:Ljava/lang/Object;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/b/a/a/a;->a:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/adobe/b/a/d;

    invoke-direct {v0}, Lcom/adobe/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/a/a/a;->b:Lcom/adobe/b/a/c;

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 118
    iget-boolean v1, p0, Lcom/adobe/b/a/a/a;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/adobe/b/a/a/a;->h:Z

    if-nez v1, :cond_2

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/adobe/b/a/a/a;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to retrieve plugin data.. Plugin: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adobe/b/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/adobe/b/a/a/a;->g:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Initialized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/adobe/b/a/a/a;->h:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 155
    :cond_1
    :goto_0
    return-object v0

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/adobe/b/a/a/a;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/adobe/b/a/a/a;->d:Ljava/lang/Object;

    instance-of v1, v1, Lcom/adobe/b/a/b;

    if-eqz v1, :cond_3

    .line 132
    iget-object v0, p0, Lcom/adobe/b/a/a/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/b/a/b;

    invoke-interface {v0, p1}, Lcom/adobe/b/a/b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/adobe/b/a/a/a;->d:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/adobe/b/a/a/a;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 143
    instance-of v3, v1, Lcom/adobe/b/a/b;

    if-eqz v3, :cond_4

    .line 145
    check-cast v1, Lcom/adobe/b/a/b;

    invoke-interface {v1, v0}, Lcom/adobe/b/a/b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/adobe/b/a/a/a;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 150
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/b/a/a/a;->h:Z

    .line 79
    const-string v0, "initialized"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/b/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public a(Lcom/adobe/b/a/a/d;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public a(Lcom/adobe/b/a/a/f;)V
    .locals 4

    .prologue
    .line 67
    iput-object p1, p0, Lcom/adobe/b/a/a/a;->e:Lcom/adobe/b/a/a/f;

    .line 69
    iget-boolean v0, p0, Lcom/adobe/b/a/a/a;->f:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/adobe/b/a/a/a;->e:Lcom/adobe/b/a/a/f;

    new-instance v1, Lcom/adobe/b/c/a;

    const-string v2, "Invalid State."

    const-string v3, "Plugin already destroyed."

    invoke-direct {v1, v2, v3}, Lcom/adobe/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/c/a;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Lcom/adobe/b/a/e;

    iget-object v1, p0, Lcom/adobe/b/a/a/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/adobe/b/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    new-instance v1, Lcom/adobe/b/a/a;

    invoke-virtual {v0}, Lcom/adobe/b/a/e;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/adobe/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v1, p2}, Lcom/adobe/b/a/a;->a(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/adobe/b/a/a/a;->e:Lcom/adobe/b/a/a/f;

    invoke-virtual {v0, v1}, Lcom/adobe/b/a/a/f;->a(Lcom/adobe/b/a/a;)V

    .line 202
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adobe/b/a/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 185
    iget-boolean v1, p0, Lcom/adobe/b/a/a/a;->g:Z

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/adobe/b/a/a/a;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/a/a/a;->a:Ljava/lang/String;

    const-string v3, "#_canProcess() > Plugin disabled."

    invoke-interface {v1, v2, v3}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return v0

    .line 190
    :cond_0
    iget-boolean v1, p0, Lcom/adobe/b/a/a/a;->f:Z

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/adobe/b/a/a/a;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/a/a/a;->a:Ljava/lang/String;

    const-string v3, "#_canProcess() > Plugin destroyed."

    invoke-interface {v1, v2, v3}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<plugin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adobe/b/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
