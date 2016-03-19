.class final Lcom/google/ads/interactivemedia/v3/a/b/a/m$8;
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
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 537
    .line 1547
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->i:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-ne v0, v1, :cond_0

    .line 1548
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->j()V

    .line 1549
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1551
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->c()V

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    .line 1558
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v0

    sget-object v7, Lcom/google/ads/interactivemedia/v3/a/d/b;->d:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-eq v0, v7, :cond_7

    .line 1559
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->g()Ljava/lang/String;

    move-result-object v7

    .line 1560
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->m()I

    move-result v0

    .line 1561
    const-string v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v0

    .line 1562
    goto :goto_1

    .line 1563
    :cond_2
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v2, v0

    .line 1564
    goto :goto_1

    .line 1565
    :cond_3
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v0

    .line 1566
    goto :goto_1

    .line 1567
    :cond_4
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v0

    .line 1568
    goto :goto_1

    .line 1569
    :cond_5
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v5, v0

    .line 1570
    goto :goto_1

    .line 1571
    :cond_6
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v0

    .line 1572
    goto :goto_1

    .line 1575
    :cond_7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->d()V

    .line 1576
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 537
    check-cast p2, Ljava/util/Calendar;

    .line 1581
    if-nez p2, :cond_0

    .line 1582
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->f()Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1583
    :goto_0
    return-void

    .line 1585
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->d()Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1586
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1587
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1588
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1589
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1590
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1591
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1592
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1593
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1594
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1595
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1596
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1597
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(J)Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 1598
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->e()Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto :goto_0
.end method
