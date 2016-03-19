.class public Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;
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
            "Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x4b6a5955581250f6L


# instance fields
.field private success:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field

.field private upsellInfo:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsellInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/UpsellInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->upsellInfo:Ljava/util/List;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/cbs/app/androiddata/ResponseModel;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->upsellInfo:Ljava/util/List;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->success:Z

    .line 72
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->upsellInfo:Ljava/util/List;

    sget-object v1, Lcom/cbs/app/view/model/UpsellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 73
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cbs/app/view/model/rest/UpsellEndpointResponse$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 61
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
            "Lcom/cbs/app/view/model/UpsellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->upsellInfo:Ljava/util/List;

    return-object v0
.end method

.method public getUpsellInfoforActionTarget(Ljava/lang/String;)Lcom/cbs/app/view/model/UpsellInfo;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->upsellInfo:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->upsellInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/UpsellInfo;

    .line 50
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getActionTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->success:Z

    return v0
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->success:Z

    .line 37
    return-void
.end method

.method public setUpsellInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/UpsellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->upsellInfo:Ljava/util/List;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    iget-object v0, p0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->upsellInfo:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 68
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
