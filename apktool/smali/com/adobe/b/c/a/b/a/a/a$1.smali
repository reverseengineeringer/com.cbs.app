.class final Lcom/adobe/b/c/a/b/a/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/a/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/a/a;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-wide v6, 0x4082c00000000000L    # 600.0

    .line 57
    check-cast p1, Lcom/adobe/b/a/a;

    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 58
    const-string v1, "check_status_interval"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 60
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/a/a;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#_onCheckStatusComplete(interval="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 62
    if-eqz v0, :cond_2

    .line 63
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/a/a;->c:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/a/a;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/a/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 84
    :goto_0
    return-object v5

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-lez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/a/a;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#_onCheckStatusComplete() - Interval value too large: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    invoke-virtual {v0, v6, v7}, Lcom/adobe/b/c/a/b/a/a/a;->a(D)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/a/a;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#_onCheckStatusComplete() - Interval changed to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adobe/b/c/a/b/a/a/a;->a(D)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/a/a;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/a/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/a$1;->a:Lcom/adobe/b/c/a/b/a/a/a;

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/b/c/a/b/a/a/a;->a(D)V

    goto :goto_0
.end method
