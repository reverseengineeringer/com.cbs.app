.class public Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse;
.super Lcom/cbs/app/androiddata/ResponseModel;
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
            "Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsellInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/UpsellInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse;->a:Z

    .line 60
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse;->b:Ljava/util/List;

    sget-object v1, Lcom/cbs/app/androiddata/model/UpsellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 61
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getUpsellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/UpsellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse;->b:Ljava/util/List;

    return-object v0
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse;->a:Z

    .line 36
    return-void
.end method

.method public setUpsellInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/UpsellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse;->b:Ljava/util/List;

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 55
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/UpsellEndpointResponse;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 56
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
