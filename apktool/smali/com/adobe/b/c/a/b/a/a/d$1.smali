.class final Lcom/adobe/b/c/a/b/a/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/a/d;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/a/d;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/a/d$1;->a:Lcom/adobe/b/c/a/b/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 56
    check-cast p1, Lcom/adobe/b/a/a;

    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 57
    const-string v1, "reporting_interval"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 59
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/d$1;->a:Lcom/adobe/b/c/a/b/a/a/d;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/a/d;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/d$1;->a:Lcom/adobe/b/c/a/b/a/a/d;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/a/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#_onCheckStatusComplete(interval="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 61
    if-eqz v0, :cond_1

    .line 62
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/d$1;->a:Lcom/adobe/b/c/a/b/a/a/d;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/a/d;->c:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/d$1;->a:Lcom/adobe/b/c/a/b/a/a/d;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/a/d;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/d$1;->a:Lcom/adobe/b/c/a/b/a/a/d;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/a/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-object v5

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/d$1;->a:Lcom/adobe/b/c/a/b/a/a/d;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/a/d;->b:Lcom/adobe/b/a/c;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/d$1;->a:Lcom/adobe/b/c/a/b/a/a/d;

    iget-object v2, v2, Lcom/adobe/b/c/a/b/a/a/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#_onCheckStatusComplete() > Interval changed to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/d$1;->a:Lcom/adobe/b/c/a/b/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adobe/b/c/a/b/a/a/d;->a(D)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/d$1;->a:Lcom/adobe/b/c/a/b/a/a/d;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/a/d;->b:Lcom/adobe/b/a/c;

    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/a/d$1;->a:Lcom/adobe/b/c/a/b/a/a/d;

    iget-object v1, v1, Lcom/adobe/b/c/a/b/a/a/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->c(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/d$1;->a:Lcom/adobe/b/c/a/b/a/a/d;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/b/c/a/b/a/a/d;->a(D)V

    goto :goto_0
.end method
