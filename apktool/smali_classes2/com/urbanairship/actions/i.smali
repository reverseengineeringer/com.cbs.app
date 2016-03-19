.class public final Lcom/urbanairship/actions/i;
.super Lcom/urbanairship/actions/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/urbanairship/actions/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/urbanairship/actions/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->b()Lcom/urbanairship/actions/p;

    move-result-object v1

    sget-object v2, Lcom/urbanairship/actions/p;->b:Lcom/urbanairship/actions/p;

    if-ne v1, v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->c()Lcom/urbanairship/json/c;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionValue;->c()Lcom/urbanairship/json/c;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/c;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->h()Z

    move-result v0

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionValue;->c()Lcom/urbanairship/json/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionValue;->c()Lcom/urbanairship/json/c;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/c;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionValue;->c()Lcom/urbanairship/json/c;

    move-result-object v0

    const-string v2, "label"

    invoke-virtual {v0, v2}, Lcom/urbanairship/json/c;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/urbanairship/actions/i$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/urbanairship/actions/i$1;-><init>(Lcom/urbanairship/actions/i;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/actions/e;->a(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/e;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/urbanairship/actions/b;->a()Lcom/urbanairship/actions/ActionValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionValue;->a()Ljava/lang/String;

    move-result-object v1

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method
