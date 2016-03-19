.class public Lcom/cbs/app/androiddata/model/EpisodeVideoCount;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/androiddata/model/EpisodeVideoCount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/EpisodeVideoCount$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->a:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->b:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->c:I

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalClips()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->a:I

    return v0
.end method

.method public getTotalEpisodes()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->b:I

    return v0
.end method

.method public getTotalPremiumEpisodes()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->c:I

    return v0
.end method

.method public setTotalClips(I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->a:I

    .line 23
    return-void
.end method

.method public setTotalEpisodes(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->b:I

    .line 31
    return-void
.end method

.method public setTotalPremiumEpisodes(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->c:I

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/cbs/app/androiddata/model/EpisodeVideoCount;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
