.class final Lcom/adobe/b/c/a/a/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/a/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/a/a;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/adobe/b/c/a/a/a$6;->a:Lcom/adobe/b/c/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 484
    check-cast p1, Ljava/lang/String;

    .line 485
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 487
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-object v0

    .line 491
    :cond_1
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/adobe/b/c/a/a/a$a;->valueOf(Ljava/lang/String;)Lcom/adobe/b/c/a/a/a$a;

    move-result-object v1

    .line 492
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 494
    if-eqz v1, :cond_0

    .line 495
    sget-object v3, Lcom/adobe/b/c/a/a/a$11;->a:[I

    invoke-virtual {v1}, Lcom/adobe/b/c/a/a/a$a;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 497
    :pswitch_0
    const-string v1, "*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$6;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->q(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 500
    :cond_2
    iget-object v1, p0, Lcom/adobe/b/c/a/a/a$6;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/a/a;->q(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/b/c/a/a/a$6;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/a/a;->q(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$6;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->q(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 505
    :pswitch_1
    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$6;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->r(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 508
    :cond_3
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$6;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->r(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 512
    :pswitch_2
    const-string v1, "*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 513
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$6;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->s(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 515
    :cond_4
    iget-object v1, p0, Lcom/adobe/b/c/a/a/a$6;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/a/a;->s(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/b/c/a/a/a$6;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/a/a;->s(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$6;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->s(Lcom/adobe/b/c/a/a/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
