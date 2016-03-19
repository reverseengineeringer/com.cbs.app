.class public abstract Lcom/urbanairship/actions/a/b;
.super Lcom/urbanairship/actions/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/urbanairship/actions/a;-><init>()V

    return-void
.end method

.method protected static d(Lcom/urbanairship/actions/b;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/actions/b;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->b()Lcom/urbanairship/json/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionValue;->b()Lcom/urbanairship/json/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    .line 80
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 81
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 85
    goto :goto_0
.end method


# virtual methods
.method public final b(Lcom/urbanairship/actions/b;)Z
    .locals 1

    .prologue
    .line 55
    invoke-static {p1}, Lcom/urbanairship/actions/a/b;->d(Lcom/urbanairship/actions/b;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
