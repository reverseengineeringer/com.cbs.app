.class final Lcom/cbs/app/view/model/rest/UpsellEndpointResponse$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;
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
        "Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;-><init>(Landroid/os/Parcel;Lcom/cbs/app/view/model/rest/UpsellEndpointResponse$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;
    .locals 1

    .prologue
    .line 81
    new-array v0, p1, [Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse$1;->newArray(I)[Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    move-result-object v0

    return-object v0
.end method
