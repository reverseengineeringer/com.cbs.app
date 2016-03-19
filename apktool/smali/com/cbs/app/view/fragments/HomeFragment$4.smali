.class final Lcom/cbs/app/view/fragments/HomeFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/HomeFragment;
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
        "Lcom/cbs/app/view/model/VideoData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/HomeFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/HomeFragment;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeFragment$4;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 574
    check-cast p1, Lcom/cbs/app/view/model/VideoData;

    check-cast p2, Lcom/cbs/app/view/model/VideoData;

    .line 1577
    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->c(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1578
    :goto_0
    invoke-static {p2}, Lcom/cbs/app/view/utils/VideoUtil;->c(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    .line 1579
    :cond_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->isFromMyCBS()Z

    move-result v4

    .line 1580
    invoke-virtual {p2}, Lcom/cbs/app/view/model/VideoData;->isFromMyCBS()Z

    move-result v5

    .line 1582
    if-ne v4, v5, :cond_1

    if-eq v0, v2, :cond_9

    .line 1584
    :cond_1
    if-ne v2, v0, :cond_5

    .line 1585
    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    .line 574
    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v2

    .line 1577
    goto :goto_0

    :cond_4
    move v1, v3

    .line 1588
    goto :goto_1

    .line 1590
    :cond_5
    if-eqz v2, :cond_6

    if-eqz v0, :cond_2

    .line 1592
    :cond_6
    if-eqz v0, :cond_7

    if-nez v2, :cond_7

    move v1, v3

    .line 1593
    goto :goto_1

    .line 1594
    :cond_7
    if-eqz v5, :cond_8

    if-eqz v4, :cond_2

    .line 1596
    :cond_8
    if-eqz v4, :cond_9

    if-nez v5, :cond_9

    move v1, v3

    .line 1597
    goto :goto_1

    .line 1600
    :cond_9
    invoke-static {p1, p2}, Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/model/VideoData;)I

    move-result v1

    goto :goto_1
.end method
