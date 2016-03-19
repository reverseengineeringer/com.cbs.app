.class public final Lcom/adobe/b/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/adobe/b/a/a/c;

.field private b:Lcom/adobe/b/a/e;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/b/a/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adobe/b/a/e;Lcom/adobe/b/a/a/c;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/b/a/e;",
            "Lcom/adobe/b/a/a/c;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/b/a/a/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/adobe/b/a/a/b;->b:Lcom/adobe/b/a/e;

    .line 43
    iput-object p3, p0, Lcom/adobe/b/a/a/b;->c:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/b/a/a/b;->d:Ljava/util/Map;

    .line 45
    iput-object p2, p0, Lcom/adobe/b/a/a/b;->a:Lcom/adobe/b/a/a/c;

    .line 47
    invoke-direct {p0, p4}, Lcom/adobe/b/a/a/b;->a(Ljava/util/ArrayList;)V

    .line 48
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/b/a/a/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 69
    :cond_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/a/a/e;

    .line 67
    iget-object v2, p0, Lcom/adobe/b/a/a/b;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/adobe/b/a/a/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/b/a/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/adobe/b/a/a/c;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/b/a/a/b;->a:Lcom/adobe/b/a/a/c;

    return-object v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/b/a/a/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/adobe/b/a/a/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    iget-object v0, p0, Lcom/adobe/b/a/a/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/a/a/e;

    .line 75
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    return-object v1
.end method
