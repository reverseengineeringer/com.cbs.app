.class public Lcom/cbs/app/androiddata/model/SyncbakStream;
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
            "Lcom/cbs/app/androiddata/model/SyncbakStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "typeId"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "typeDescription"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/cbs/app/androiddata/model/SyncbakStream$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/SyncbakStream$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/SyncbakStream;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/SyncbakStream;->a:I

    .line 1073
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakStream;->b:Ljava/lang/String;

    .line 1074
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakStream;->c:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getTypeDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakStream;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/cbs/app/androiddata/model/SyncbakStream;->a:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakStream;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setTypeDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/SyncbakStream;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTypeId(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/cbs/app/androiddata/model/SyncbakStream;->a:I

    .line 48
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/SyncbakStream;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/cbs/app/androiddata/model/SyncbakStream;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakStream;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/SyncbakStream;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return-void
.end method
