.class public Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityItem;
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
            "Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "seasonNum"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityItem$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityItem$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityItem;->a:I

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getSeasonNum()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityItem;->a:I

    return v0
.end method

.method public setSeasonNum(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityItem;->a:I

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/cbs/app/androiddata/model/ShowSeasonAvailabilityItem;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void
.end method
