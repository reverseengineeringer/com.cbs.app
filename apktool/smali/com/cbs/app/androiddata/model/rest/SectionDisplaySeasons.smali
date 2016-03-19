.class public Lcom/cbs/app/androiddata/model/rest/SectionDisplaySeasons;
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
            "Lcom/cbs/app/androiddata/model/rest/SectionDisplaySeasons;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sectionId"
    .end annotation
.end field

.field private b:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isDisplaySeason"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/cbs/app/androiddata/model/rest/SectionDisplaySeasons$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/rest/SectionDisplaySeasons$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/rest/SectionDisplaySeasons;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1049
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cbs/app/androiddata/model/rest/SectionDisplaySeasons;->a:J

    .line 1050
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/androiddata/model/rest/SectionDisplaySeasons;->b:Z

    .line 34
    return-void

    .line 1050
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/SectionDisplaySeasons;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/rest/SectionDisplaySeasons;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
