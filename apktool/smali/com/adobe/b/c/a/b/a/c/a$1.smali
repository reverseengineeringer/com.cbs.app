.class final Lcom/adobe/b/c/a/b/a/c/a$1;
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
    .line 107
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/c/a$1;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 111
    check-cast p1, Ljava/util/HashMap;

    .line 113
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a$1;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/c/a;->a(Lcom/adobe/b/c/a/b/a/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v5

    .line 115
    :cond_1
    const-string v0, "report"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/a/b/a/d/b/a;

    .line 116
    if-eqz v0, :cond_3

    .line 124
    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a/d/b/a;->d()Lcom/adobe/b/c/a/b/a/d/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/b/c/a/b/a/d/a/i;->a()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/c/a$1;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/c/a;->b(Lcom/adobe/b/c/a/b/a/c/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/c/a$1;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/c/a;->b(Lcom/adobe/b/c/a/b/a/c/a;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/c/a$1;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/c/a;->b(Lcom/adobe/b/c/a/b/a/c/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a$1;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/c/a;->c(Lcom/adobe/b/c/a/b/a/c/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a$1;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v0, v4}, Lcom/adobe/b/c/a/b/a/c/a;->a(Lcom/adobe/b/c/a/b/a/c/a;Z)Z

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    const-string v1, "reset"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "repeat_count"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/c/a$1;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/c/a;->d(Lcom/adobe/b/c/a/b/a/c/a;)Lcom/adobe/b/a/b/a;

    move-result-object v1

    const-string v2, "clock:flush_filter.resume"

    invoke-virtual {v1, v2, v0}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
