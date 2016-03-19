.class public Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;
.super Lcom/cbs/app/androiddata/ResponseModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


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
            "Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x522622a23c0b0f4eL


# instance fields
.field private clipsCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "clipsCount"
    .end annotation
.end field

.field private delayCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "delayCount"
    .end annotation
.end field

.field private premiumCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "premiumCount"
    .end annotation
.end field

.field private seasonNum:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "seasonNum"
    .end annotation
.end field

.field private totalCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "totalCount"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->seasonNum:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->premiumCount:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->clipsCount:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->totalCount:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->delayCount:I

    .line 99
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getClipsCount()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->clipsCount:I

    return v0
.end method

.method public getDelayCount()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->delayCount:I

    return v0
.end method

.method public getPremiumCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->premiumCount:I

    return v0
.end method

.method public getSeasonNum()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->seasonNum:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->totalCount:I

    return v0
.end method

.method public setClipsCount(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->clipsCount:I

    .line 68
    return-void
.end method

.method public setDelayCount(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->delayCount:I

    .line 72
    return-void
.end method

.method public setPremiumCount(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->premiumCount:I

    .line 60
    return-void
.end method

.method public setSeasonNum(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->seasonNum:I

    .line 44
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->totalCount:I

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->seasonNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->premiumCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->clipsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->totalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/cbs/app/view/model/rest/ShowSeasonAvailabilityItem;->delayCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
