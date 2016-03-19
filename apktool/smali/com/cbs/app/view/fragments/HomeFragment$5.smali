.class final Lcom/cbs/app/view/fragments/HomeFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/HomeFragment;->a(Lcom/cbs/app/androiddata/ResponseModel;)V
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
    .line 645
    iput-object p1, p0, Lcom/cbs/app/view/fragments/HomeFragment$5;->a:Lcom/cbs/app/view/fragments/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 645
    check-cast p1, Lcom/cbs/app/view/model/VideoData;

    check-cast p2, Lcom/cbs/app/view/model/VideoData;

    .line 1649
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getAirDate()J

    move-result-wide v0

    .line 1650
    invoke-virtual {p2}, Lcom/cbs/app/view/model/VideoData;->getAirDate()J

    move-result-wide v2

    .line 1651
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 1652
    const/4 v0, 0x1

    .line 645
    :goto_0
    return v0

    .line 1653
    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1654
    const/4 v0, -0x1

    goto :goto_0

    .line 1656
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
