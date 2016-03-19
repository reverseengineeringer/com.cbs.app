.class final Lcom/cbs/app/androiddata/model/VideoData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/androiddata/model/VideoData;->getVideoThumbnailUrl()Ljava/lang/String;
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
        "Lcom/cbs/app/androiddata/model/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/androiddata/model/VideoData;


# direct methods
.method constructor <init>(Lcom/cbs/app/androiddata/model/VideoData;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/VideoData$1;->a:Lcom/cbs/app/androiddata/model/VideoData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 328
    check-cast p1, Lcom/cbs/app/androiddata/model/Thumbnail;

    check-cast p2, Lcom/cbs/app/androiddata/model/Thumbnail;

    .line 1331
    invoke-virtual {p2}, Lcom/cbs/app/androiddata/model/Thumbnail;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1332
    invoke-virtual {p1}, Lcom/cbs/app/androiddata/model/Thumbnail;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1333
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 1334
    if-nez v0, :cond_0

    .line 1335
    invoke-virtual {p2}, Lcom/cbs/app/androiddata/model/Thumbnail;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1336
    invoke-virtual {p1}, Lcom/cbs/app/androiddata/model/Thumbnail;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1337
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 328
    :cond_0
    return v0
.end method
