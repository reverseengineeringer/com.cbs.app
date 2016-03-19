.class public Lcom/cbs/app/view/model/syncbak/SyncbakStream;
.super Ljava/lang/Object;
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
            "Lcom/cbs/app/view/model/syncbak/SyncbakStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private typeDescription:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "typeDescription"
    .end annotation
.end field

.field private typeId:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "typeId"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/cbs/app/view/model/syncbak/SyncbakStream$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakStream$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->typeId:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->typeDescription:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->url:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getTypeDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->typeDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->typeId:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setTypeDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->typeDescription:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTypeId(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->typeId:I

    .line 50
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->url:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->typeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->typeDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/cbs/app/view/model/syncbak/SyncbakStream;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
