.class final Lcom/adobe/b/c/a/b/a/c/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/c/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/c/a;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 150
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/c/a;->a(Lcom/adobe/b/c/a/b/a/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return-object v6

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/c/a;->b(Lcom/adobe/b/c/a/b/a/c/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/c/a;->b(Lcom/adobe/b/c/a/b/a/c/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/c/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/c/a;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/c/a;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v2, v0}, Lcom/adobe/b/c/a/b/a/c/a;->a(Lcom/adobe/b/c/a/b/a/c/a;Ljava/util/ArrayList;)V

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/a/b/a/d/b/a;

    .line 170
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 171
    const-string v4, "report"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/c/a;->d(Lcom/adobe/b/c/a/b/a/c/a;)Lcom/adobe/b/a/b/a;

    move-result-object v0

    new-instance v4, Lcom/adobe/b/a/a;

    const-string v5, "filter:data_available"

    invoke-direct {v4, v5, v3}, Lcom/adobe/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/adobe/b/a/b/a;->a(Lcom/adobe/b/a/a;)V

    goto :goto_1

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/c/a;->b(Lcom/adobe/b/c/a/b/a/c/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/c/a;->d(Lcom/adobe/b/c/a/b/a/c/a;)Lcom/adobe/b/a/b/a;

    move-result-object v0

    const-string v1, "session_id"

    .line 1213
    invoke-virtual {v0, v1}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    check-cast v0, Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/c/a;->e(Lcom/adobe/b/c/a/b/a/c/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/c/a;->e(Lcom/adobe/b/c/a/b/a/c/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 189
    :goto_2
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/c/a;->e(Lcom/adobe/b/c/a/b/a/c/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 190
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/c/a;->e(Lcom/adobe/b/c/a/b/a/c/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a$2;->a:Lcom/adobe/b/c/a/b/a/c/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/b/c/a/b/a/c/a;->a(Lcom/adobe/b/c/a/b/a/c/a;Z)Z

    goto/16 :goto_0

    .line 187
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_2
.end method
