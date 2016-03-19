.class final Lcom/adobe/b/c/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/b/c/b;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/adobe/b/a/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/b;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/b;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/adobe/b/c/b$1;->a:Lcom/adobe/b/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 77
    check-cast p1, Lcom/adobe/b/a/a/c;

    check-cast p2, Lcom/adobe/b/a/a/c;

    .line 1080
    invoke-interface {p1}, Lcom/adobe/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adobe-heartbeat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Lcom/adobe/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adobe-analytics"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return v0

    .line 1082
    :cond_1
    invoke-interface {p1}, Lcom/adobe/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adobe-heartbeat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Lcom/adobe/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "player"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1084
    :cond_2
    invoke-interface {p1}, Lcom/adobe/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adobe-analytics"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Lcom/adobe/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adobe-heartbeat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 1085
    goto :goto_0

    .line 1087
    :cond_3
    invoke-interface {p1}, Lcom/adobe/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adobe-analytics"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Lcom/adobe/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "player"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1090
    :cond_4
    invoke-interface {p1}, Lcom/adobe/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "player"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lcom/adobe/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "adobe-heartbeat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 1091
    goto :goto_0

    .line 1093
    :cond_5
    invoke-interface {p1}, Lcom/adobe/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "player"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lcom/adobe/b/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "adobe-analytics"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 1094
    goto :goto_0

    .line 1097
    :cond_6
    const/4 v0, 0x0

    .line 77
    goto :goto_0
.end method
