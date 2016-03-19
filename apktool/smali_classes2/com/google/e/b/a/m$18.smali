.class final Lcom/google/e/b/a/m$18;
.super Lcom/google/e/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/e/b/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/e/s",
        "<",
        "Lcom/google/e/i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/google/e/s;-><init>()V

    return-void
.end method

.method private a(Lcom/google/e/d/c;Lcom/google/e/i;)V
    .locals 3

    .prologue
    .line 683
    if-eqz p2, :cond_0

    .line 1074
    instance-of v0, p2, Lcom/google/e/k;

    .line 683
    if-eqz v0, :cond_1

    .line 684
    :cond_0
    invoke-virtual {p1}, Lcom/google/e/d/c;->f()Lcom/google/e/d/c;

    .line 708
    :goto_0
    return-void

    .line 2064
    :cond_1
    instance-of v0, p2, Lcom/google/e/o;

    .line 685
    if-eqz v0, :cond_4

    .line 686
    invoke-virtual {p2}, Lcom/google/e/i;->i()Lcom/google/e/o;

    move-result-object v0

    .line 687
    invoke-virtual {v0}, Lcom/google/e/o;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 688
    invoke-virtual {v0}, Lcom/google/e/o;->b()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/e/d/c;->a(Ljava/lang/Number;)Lcom/google/e/d/c;

    goto :goto_0

    .line 689
    :cond_2
    invoke-virtual {v0}, Lcom/google/e/o;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 690
    invoke-virtual {v0}, Lcom/google/e/o;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/e/d/c;->a(Z)Lcom/google/e/d/c;

    goto :goto_0

    .line 692
    :cond_3
    invoke-virtual {v0}, Lcom/google/e/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/e/d/c;->b(Ljava/lang/String;)Lcom/google/e/d/c;

    goto :goto_0

    .line 3046
    :cond_4
    instance-of v0, p2, Lcom/google/e/g;

    .line 695
    if-eqz v0, :cond_7

    .line 696
    invoke-virtual {p1}, Lcom/google/e/d/c;->b()Lcom/google/e/d/c;

    .line 4046
    instance-of v0, p2, Lcom/google/e/g;

    .line 3103
    if-eqz v0, :cond_5

    .line 3104
    check-cast p2, Lcom/google/e/g;

    .line 697
    invoke-virtual {p2}, Lcom/google/e/g;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/e/i;

    .line 698
    invoke-direct {p0, p1, v0}, Lcom/google/e/b/a/m$18;->a(Lcom/google/e/d/c;Lcom/google/e/i;)V

    goto :goto_1

    .line 3106
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_6
    invoke-virtual {p1}, Lcom/google/e/d/c;->c()Lcom/google/e/d/c;

    goto :goto_0

    .line 4055
    :cond_7
    instance-of v0, p2, Lcom/google/e/l;

    .line 702
    if-eqz v0, :cond_9

    .line 703
    invoke-virtual {p1}, Lcom/google/e/d/c;->d()Lcom/google/e/d/c;

    .line 704
    invoke-virtual {p2}, Lcom/google/e/i;->h()Lcom/google/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/e/l;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 705
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/e/d/c;->a(Ljava/lang/String;)Lcom/google/e/d/c;

    .line 706
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/e/i;

    invoke-direct {p0, p1, v0}, Lcom/google/e/b/a/m$18;->a(Lcom/google/e/d/c;Lcom/google/e/i;)V

    goto :goto_2

    .line 708
    :cond_8
    invoke-virtual {p1}, Lcom/google/e/d/c;->e()Lcom/google/e/d/c;

    goto/16 :goto_0

    .line 711
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/google/e/d/a;)Lcom/google/e/i;
    .locals 3

    .prologue
    .line 646
    sget-object v0, Lcom/google/e/b/a/m$25;->a:[I

    invoke-virtual {p1}, Lcom/google/e/d/a;->f()Lcom/google/e/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/e/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 648
    :pswitch_0
    new-instance v0, Lcom/google/e/o;

    invoke-virtual {p1}, Lcom/google/e/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/e/o;-><init>(Ljava/lang/String;)V

    .line 672
    :goto_0
    return-object v0

    .line 650
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/e/d/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 651
    new-instance v0, Lcom/google/e/o;

    new-instance v2, Lcom/google/e/b/f;

    invoke-direct {v2, v1}, Lcom/google/e/b/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/e/o;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 653
    :pswitch_2
    new-instance v0, Lcom/google/e/o;

    invoke-virtual {p1}, Lcom/google/e/d/a;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/e/o;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 655
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/e/d/a;->j()V

    .line 656
    sget-object v0, Lcom/google/e/k;->a:Lcom/google/e/k;

    goto :goto_0

    .line 658
    :pswitch_4
    new-instance v0, Lcom/google/e/g;

    invoke-direct {v0}, Lcom/google/e/g;-><init>()V

    .line 659
    invoke-virtual {p1}, Lcom/google/e/d/a;->a()V

    .line 660
    :goto_1
    invoke-virtual {p1}, Lcom/google/e/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    invoke-direct {p0, p1}, Lcom/google/e/b/a/m$18;->b(Lcom/google/e/d/a;)Lcom/google/e/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/e/g;->a(Lcom/google/e/i;)V

    goto :goto_1

    .line 663
    :cond_0
    invoke-virtual {p1}, Lcom/google/e/d/a;->b()V

    goto :goto_0

    .line 666
    :pswitch_5
    new-instance v0, Lcom/google/e/l;

    invoke-direct {v0}, Lcom/google/e/l;-><init>()V

    .line 667
    invoke-virtual {p1}, Lcom/google/e/d/a;->c()V

    .line 668
    :goto_2
    invoke-virtual {p1}, Lcom/google/e/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    invoke-virtual {p1}, Lcom/google/e/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/e/b/a/m$18;->b(Lcom/google/e/d/a;)Lcom/google/e/i;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/e/l;->a(Ljava/lang/String;Lcom/google/e/i;)V

    goto :goto_2

    .line 671
    :cond_1
    invoke-virtual {p1}, Lcom/google/e/d/a;->d()V

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/e/d/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/google/e/b/a/m$18;->b(Lcom/google/e/d/a;)Lcom/google/e/i;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/e/d/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 644
    check-cast p2, Lcom/google/e/i;

    invoke-direct {p0, p1, p2}, Lcom/google/e/b/a/m$18;->a(Lcom/google/e/d/c;Lcom/google/e/i;)V

    return-void
.end method
