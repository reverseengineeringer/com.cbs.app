.class public final La/a/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/a;->a:I

    .line 105
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "La/a/a/a/a/a;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 399
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-object p0

    .line 402
    :cond_1
    if-eq p1, p2, :cond_0

    .line 405
    if-nez p1, :cond_2

    .line 406
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 409
    :cond_2
    if-nez p2, :cond_3

    .line 410
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 413
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 417
    instance-of v2, p1, [J

    if-eqz v2, :cond_b

    .line 418
    check-cast p1, [J

    check-cast p2, [J

    .line 1688
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-nez v2, :cond_0

    .line 1691
    if-eq p1, p2, :cond_0

    .line 1694
    if-nez p1, :cond_4

    .line 1695
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 1698
    :cond_4
    if-nez p2, :cond_5

    .line 1699
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 1702
    :cond_5
    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_7

    .line 1703
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_6

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v2, v3

    .line 1706
    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_0

    iget v4, p0, La/a/a/a/a/a;->a:I

    if-nez v4, :cond_0

    .line 1707
    aget-wide v4, p1, v2

    aget-wide v6, p2, v2

    .line 2463
    iget v8, p0, La/a/a/a/a/a;->a:I

    if-nez v8, :cond_8

    .line 2466
    cmp-long v8, v4, v6

    if-gez v8, :cond_9

    move v4, v0

    :goto_3
    iput v4, p0, La/a/a/a/a/a;->a:I

    .line 1706
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2466
    :cond_9
    cmp-long v4, v4, v6

    if-lez v4, :cond_a

    move v4, v1

    goto :goto_3

    :cond_a
    move v4, v3

    goto :goto_3

    .line 419
    :cond_b
    instance-of v2, p1, [I

    if-eqz v2, :cond_13

    .line 420
    check-cast p1, [I

    check-cast p2, [I

    .line 2728
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-nez v2, :cond_0

    .line 2731
    if-eq p1, p2, :cond_0

    .line 2734
    if-nez p1, :cond_c

    .line 2735
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 2738
    :cond_c
    if-nez p2, :cond_d

    .line 2739
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 2742
    :cond_d
    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_f

    .line 2743
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_e

    :goto_4
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_e
    move v0, v1

    goto :goto_4

    :cond_f
    move v2, v3

    .line 2746
    :goto_5
    array-length v4, p1

    if-ge v2, v4, :cond_0

    iget v4, p0, La/a/a/a/a/a;->a:I

    if-nez v4, :cond_0

    .line 2747
    aget v4, p1, v2

    aget v5, p2, v2

    .line 3479
    iget v6, p0, La/a/a/a/a/a;->a:I

    if-nez v6, :cond_10

    .line 3482
    if-ge v4, v5, :cond_11

    move v4, v0

    :goto_6
    iput v4, p0, La/a/a/a/a/a;->a:I

    .line 2746
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3482
    :cond_11
    if-le v4, v5, :cond_12

    move v4, v1

    goto :goto_6

    :cond_12
    move v4, v3

    goto :goto_6

    .line 421
    :cond_13
    instance-of v2, p1, [S

    if-eqz v2, :cond_1b

    .line 422
    check-cast p1, [S

    check-cast p2, [S

    .line 3768
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-nez v2, :cond_0

    .line 3771
    if-eq p1, p2, :cond_0

    .line 3774
    if-nez p1, :cond_14

    .line 3775
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 3778
    :cond_14
    if-nez p2, :cond_15

    .line 3779
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 3782
    :cond_15
    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_17

    .line 3783
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_16

    :goto_7
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    :cond_16
    move v0, v1

    goto :goto_7

    :cond_17
    move v2, v3

    .line 3786
    :goto_8
    array-length v4, p1

    if-ge v2, v4, :cond_0

    iget v4, p0, La/a/a/a/a/a;->a:I

    if-nez v4, :cond_0

    .line 3787
    aget-short v4, p1, v2

    aget-short v5, p2, v2

    .line 4495
    iget v6, p0, La/a/a/a/a/a;->a:I

    if-nez v6, :cond_18

    .line 4498
    if-ge v4, v5, :cond_19

    move v4, v0

    :goto_9
    iput v4, p0, La/a/a/a/a/a;->a:I

    .line 3786
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4498
    :cond_19
    if-le v4, v5, :cond_1a

    move v4, v1

    goto :goto_9

    :cond_1a
    move v4, v3

    goto :goto_9

    .line 423
    :cond_1b
    instance-of v2, p1, [C

    if-eqz v2, :cond_23

    .line 424
    check-cast p1, [C

    check-cast p2, [C

    .line 4808
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-nez v2, :cond_0

    .line 4811
    if-eq p1, p2, :cond_0

    .line 4814
    if-nez p1, :cond_1c

    .line 4815
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 4818
    :cond_1c
    if-nez p2, :cond_1d

    .line 4819
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 4822
    :cond_1d
    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_1f

    .line 4823
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_1e

    :goto_a
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    :cond_1e
    move v0, v1

    goto :goto_a

    :cond_1f
    move v2, v3

    .line 4826
    :goto_b
    array-length v4, p1

    if-ge v2, v4, :cond_0

    iget v4, p0, La/a/a/a/a/a;->a:I

    if-nez v4, :cond_0

    .line 4827
    aget-char v4, p1, v2

    aget-char v5, p2, v2

    .line 5511
    iget v6, p0, La/a/a/a/a/a;->a:I

    if-nez v6, :cond_20

    .line 5514
    if-ge v4, v5, :cond_21

    move v4, v0

    :goto_c
    iput v4, p0, La/a/a/a/a/a;->a:I

    .line 4826
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5514
    :cond_21
    if-le v4, v5, :cond_22

    move v4, v1

    goto :goto_c

    :cond_22
    move v4, v3

    goto :goto_c

    .line 425
    :cond_23
    instance-of v2, p1, [B

    if-eqz v2, :cond_2b

    .line 426
    check-cast p1, [B

    check-cast p2, [B

    .line 5848
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-nez v2, :cond_0

    .line 5851
    if-eq p1, p2, :cond_0

    .line 5854
    if-nez p1, :cond_24

    .line 5855
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 5858
    :cond_24
    if-nez p2, :cond_25

    .line 5859
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 5862
    :cond_25
    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_27

    .line 5863
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_26

    :goto_d
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    :cond_26
    move v0, v1

    goto :goto_d

    :cond_27
    move v2, v3

    .line 5866
    :goto_e
    array-length v4, p1

    if-ge v2, v4, :cond_0

    iget v4, p0, La/a/a/a/a/a;->a:I

    if-nez v4, :cond_0

    .line 5867
    aget-byte v4, p1, v2

    aget-byte v5, p2, v2

    .line 6527
    iget v6, p0, La/a/a/a/a/a;->a:I

    if-nez v6, :cond_28

    .line 6530
    if-ge v4, v5, :cond_29

    move v4, v0

    :goto_f
    iput v4, p0, La/a/a/a/a/a;->a:I

    .line 5866
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 6530
    :cond_29
    if-le v4, v5, :cond_2a

    move v4, v1

    goto :goto_f

    :cond_2a
    move v4, v3

    goto :goto_f

    .line 427
    :cond_2b
    instance-of v2, p1, [D

    if-eqz v2, :cond_31

    .line 428
    check-cast p1, [D

    check-cast p2, [D

    .line 6888
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-nez v2, :cond_0

    .line 6891
    if-eq p1, p2, :cond_0

    .line 6894
    if-nez p1, :cond_2c

    .line 6895
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 6898
    :cond_2c
    if-nez p2, :cond_2d

    .line 6899
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 6902
    :cond_2d
    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_2f

    .line 6903
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_2e

    :goto_10
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    :cond_2e
    move v0, v1

    goto :goto_10

    .line 6906
    :cond_2f
    :goto_11
    array-length v0, p1

    if-ge v3, v0, :cond_0

    iget v0, p0, La/a/a/a/a/a;->a:I

    if-nez v0, :cond_0

    .line 6907
    aget-wide v0, p1, v3

    aget-wide v4, p2, v3

    .line 7548
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-nez v2, :cond_30

    .line 7551
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    .line 6906
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 429
    :cond_31
    instance-of v2, p1, [F

    if-eqz v2, :cond_37

    .line 430
    check-cast p1, [F

    check-cast p2, [F

    .line 7928
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-nez v2, :cond_0

    .line 7931
    if-eq p1, p2, :cond_0

    .line 7934
    if-nez p1, :cond_32

    .line 7935
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 7938
    :cond_32
    if-nez p2, :cond_33

    .line 7939
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 7942
    :cond_33
    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_35

    .line 7943
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_34

    :goto_12
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    :cond_34
    move v0, v1

    goto :goto_12

    .line 7946
    :cond_35
    :goto_13
    array-length v0, p1

    if-ge v3, v0, :cond_0

    iget v0, p0, La/a/a/a/a/a;->a:I

    if-nez v0, :cond_0

    .line 7947
    aget v0, p1, v3

    aget v1, p2, v3

    .line 8569
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-nez v2, :cond_36

    .line 8572
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    .line 7946
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 431
    :cond_37
    instance-of v2, p1, [Z

    if-eqz v2, :cond_3e

    .line 432
    check-cast p1, [Z

    check-cast p2, [Z

    .line 8968
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-nez v2, :cond_0

    .line 8971
    if-eq p1, p2, :cond_0

    .line 8974
    if-nez p1, :cond_38

    .line 8975
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 8978
    :cond_38
    if-nez p2, :cond_39

    .line 8979
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 8982
    :cond_39
    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_3b

    .line 8983
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_3a

    :goto_14
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    :cond_3a
    move v0, v1

    goto :goto_14

    .line 8986
    :cond_3b
    :goto_15
    array-length v2, p1

    if-ge v3, v2, :cond_0

    iget v2, p0, La/a/a/a/a/a;->a:I

    if-nez v2, :cond_0

    .line 8987
    aget-boolean v2, p1, v3

    aget-boolean v4, p2, v3

    .line 9585
    iget v5, p0, La/a/a/a/a/a;->a:I

    if-nez v5, :cond_3c

    .line 9588
    if-eq v2, v4, :cond_3c

    .line 9591
    if-nez v2, :cond_3d

    .line 9592
    iput v0, p0, La/a/a/a/a/a;->a:I

    .line 8986
    :cond_3c
    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 9594
    :cond_3d
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_16

    .line 436
    :cond_3e
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 9648
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-nez v2, :cond_0

    .line 9651
    if-eq p1, p2, :cond_0

    .line 9654
    if-nez p1, :cond_3f

    .line 9655
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 9658
    :cond_3f
    if-nez p2, :cond_40

    .line 9659
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 9662
    :cond_40
    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_42

    .line 9663
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_41

    :goto_17
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    :cond_41
    move v0, v1

    goto :goto_17

    .line 9666
    :cond_42
    :goto_18
    array-length v0, p1

    if-ge v3, v0, :cond_0

    iget v0, p0, La/a/a/a/a/a;->a:I

    if-nez v0, :cond_0

    .line 9667
    aget-object v0, p1, v3

    aget-object v1, p2, v3

    invoke-direct {p0, v0, v1, p3}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;

    .line 9666
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 440
    :cond_43
    if-nez p3, :cond_44

    .line 442
    check-cast p1, Ljava/lang/Comparable;

    .line 443
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 447
    :cond_44
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, La/a/a/a/a/a;->a:I

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;

    move-result-object v0

    return-object v0
.end method
