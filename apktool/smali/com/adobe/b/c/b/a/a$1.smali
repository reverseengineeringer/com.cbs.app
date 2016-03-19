.class final Lcom/adobe/b/c/b/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/b/a/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/b/a/a;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/adobe/b/c/b/a/a$1;->a:Lcom/adobe/b/c/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 93
    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "repeat_count"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "repeat_count"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/adobe/b/c/b/a/a$1;->a:Lcom/adobe/b/c/b/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/b/a/a;->a(Lcom/adobe/b/c/b/a/a;)Lcom/adobe/b/c/b/a/c;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "interval"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/adobe/b/c/b/a/c;->a(Ljava/lang/String;DI)V

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    const/4 v0, -0x1

    move v2, v0

    goto :goto_0
.end method
