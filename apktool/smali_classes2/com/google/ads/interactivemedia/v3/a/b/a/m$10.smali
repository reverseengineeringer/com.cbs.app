.class final Lcom/google/ads/interactivemedia/v3/a/b/a/m$10;
.super Lcom/google/ads/interactivemedia/v3/a/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/a/w",
        "<",
        "Lcom/google/ads/interactivemedia/v3/a/l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/w;-><init>()V

    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/d/c;Lcom/google/ads/interactivemedia/v3/a/l;)V
    .locals 4

    .prologue
    .line 681
    if-eqz p2, :cond_0

    .line 1074
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/a/n;

    .line 681
    if-eqz v0, :cond_1

    .line 682
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->f()Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 706
    :goto_0
    return-void

    .line 2064
    :cond_1
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/a/q;

    .line 683
    if-eqz v0, :cond_4

    .line 684
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/l;->g()Lcom/google/ads/interactivemedia/v3/a/q;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/Number;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto :goto_0

    .line 687
    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 688
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Z)Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto :goto_0

    .line 690
    :cond_3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto :goto_0

    .line 3046
    :cond_4
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/a/i;

    .line 693
    if-eqz v0, :cond_7

    .line 694
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->b()Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 4046
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/a/i;

    .line 3103
    if-eqz v0, :cond_5

    .line 3104
    check-cast p2, Lcom/google/ads/interactivemedia/v3/a/i;

    .line 695
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/i;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    .line 696
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/m$10;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Lcom/google/ads/interactivemedia/v3/a/l;)V

    goto :goto_1

    .line 3106
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->c()Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto :goto_0

    .line 4055
    :cond_7
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/a/o;

    .line 700
    if-eqz v0, :cond_a

    .line 701
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->d()Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 5055
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/a/o;

    .line 4087
    if-eqz v0, :cond_8

    .line 4088
    check-cast p2, Lcom/google/ads/interactivemedia/v3/a/o;

    .line 702
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/o;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 703
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 704
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/m$10;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Lcom/google/ads/interactivemedia/v3/a/l;)V

    goto :goto_2

    .line 4090
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Not a JSON Object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->e()Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto/16 :goto_0

    .line 709
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Couldn\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/a/d/a;)Lcom/google/ads/interactivemedia/v3/a/l;
    .locals 3

    .prologue
    .line 644
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/m$19;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 646
    :pswitch_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/q;-><init>(Ljava/lang/String;)V

    .line 670
    :goto_0
    return-object v0

    .line 648
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 649
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/q;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/b/f;

    invoke-direct {v2, v1}, Lcom/google/ads/interactivemedia/v3/a/b/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/q;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 651
    :pswitch_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/q;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 653
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->j()V

    .line 654
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/n;->a:Lcom/google/ads/interactivemedia/v3/a/n;

    goto :goto_0

    .line 656
    :pswitch_4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/i;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/i;-><init>()V

    .line 657
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a()V

    .line 658
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/a/m$10;->b(Lcom/google/ads/interactivemedia/v3/a/d/a;)Lcom/google/ads/interactivemedia/v3/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/l;)V

    goto :goto_1

    .line 661
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b()V

    goto :goto_0

    .line 664
    :pswitch_5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/o;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/o;-><init>()V

    .line 665
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->c()V

    .line 666
    :goto_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/a/m$10;->b(Lcom/google/ads/interactivemedia/v3/a/d/a;)Lcom/google/ads/interactivemedia/v3/a/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/o;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/l;)V

    goto :goto_2

    .line 669
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->d()V

    goto :goto_0

    .line 644
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
.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/a/m$10;->b(Lcom/google/ads/interactivemedia/v3/a/d/a;)Lcom/google/ads/interactivemedia/v3/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 642
    check-cast p2, Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/b/a/m$10;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Lcom/google/ads/interactivemedia/v3/a/l;)V

    return-void
.end method
