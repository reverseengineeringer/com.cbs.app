.class final Lcom/urbanairship/analytics/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/urbanairship/b/c;


# direct methods
.method public constructor <init>(Lcom/urbanairship/b/c;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/urbanairship/analytics/k;->a:Lcom/urbanairship/b/c;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/urbanairship/analytics/k;->a:Lcom/urbanairship/b/c;

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->a()I

    move-result v0

    return v0
.end method

.method final b()I
    .locals 3

    .prologue
    const/16 v1, 0x2800

    .line 59
    iget-object v0, p0, Lcom/urbanairship/analytics/k;->a:Lcom/urbanairship/b/c;

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/urbanairship/analytics/k;->a:Lcom/urbanairship/b/c;

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->d()Ljava/util/Map;

    move-result-object v0

    const-string v2, "X-UA-Max-Total"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 61
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 62
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/high16 v2, 0x500000

    invoke-static {v0, v1, v2}, Lcom/urbanairship/d/g;->a(III)I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method final c()I
    .locals 3

    .prologue
    const/16 v1, 0x400

    .line 76
    iget-object v0, p0, Lcom/urbanairship/analytics/k;->a:Lcom/urbanairship/b/c;

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/urbanairship/analytics/k;->a:Lcom/urbanairship/b/c;

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->d()Ljava/util/Map;

    move-result-object v0

    const-string v2, "X-UA-Max-Batch"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 78
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 79
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v2, 0x7d000

    invoke-static {v0, v1, v2}, Lcom/urbanairship/d/g;->a(III)I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method final d()I
    .locals 3

    .prologue
    const v1, 0x240c8400

    .line 93
    iget-object v0, p0, Lcom/urbanairship/analytics/k;->a:Lcom/urbanairship/b/c;

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/urbanairship/analytics/k;->a:Lcom/urbanairship/b/c;

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->d()Ljava/util/Map;

    move-result-object v0

    const-string v2, "X-UA-Max-Wait"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 95
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 96
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v2, 0x48190800

    invoke-static {v0, v1, v2}, Lcom/urbanairship/d/g;->a(III)I

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method final e()I
    .locals 3

    .prologue
    const v1, 0xea60

    .line 110
    iget-object v0, p0, Lcom/urbanairship/analytics/k;->a:Lcom/urbanairship/b/c;

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/urbanairship/analytics/k;->a:Lcom/urbanairship/b/c;

    invoke-virtual {v0}, Lcom/urbanairship/b/c;->d()Ljava/util/Map;

    move-result-object v0

    const-string v2, "X-UA-Min-Batch-Interval"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 112
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 113
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v2, 0x240c8400

    invoke-static {v0, v1, v2}, Lcom/urbanairship/d/g;->a(III)I

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
