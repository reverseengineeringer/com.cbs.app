.class final Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;

    invoke-direct {v0, p1}, Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;
    .locals 1

    .prologue
    .line 46
    new-array v0, p1, [Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount$1;->newArray(I)[Lcom/cbs/app/view/fragments/show/model/EpisodeVideoCount;

    move-result-object v0

    return-object v0
.end method