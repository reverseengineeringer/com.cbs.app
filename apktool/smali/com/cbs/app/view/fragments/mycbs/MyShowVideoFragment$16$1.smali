.class final Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;->a(Lcom/cbs/app/androiddata/ResponseModel;)V
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
        "Lcom/cbs/app/view/model/ShowVideo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16$1;->a:Lcom/cbs/app/view/fragments/mycbs/MyShowVideoFragment$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 450
    check-cast p1, Lcom/cbs/app/view/model/ShowVideo;

    check-cast p2, Lcom/cbs/app/view/model/ShowVideo;

    .line 1452
    invoke-virtual {p1}, Lcom/cbs/app/view/model/ShowVideo;->getShowTitle()Ljava/lang/String;

    move-result-object v0

    .line 1453
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1455
    const-string v1, "The "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1456
    const-string v1, "the "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    :cond_0
    invoke-virtual {p2}, Lcom/cbs/app/view/model/ShowVideo;->getShowTitle()Ljava/lang/String;

    move-result-object v1

    .line 1459
    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "the"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1461
    const-string v2, "The "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1462
    const-string v2, "the "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1465
    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
