.class final Lcom/cbs/app/view/model/ShowConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/model/ShowConfig;
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
        "Lcom/cbs/app/view/model/ShowConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cbs/app/view/model/ShowConfig;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/cbs/app/view/model/ShowConfig;

    invoke-direct {v0, p1}, Lcom/cbs/app/view/model/ShowConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/ShowConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cbs/app/view/model/ShowConfig;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/cbs/app/view/model/ShowConfig;
    .locals 1

    .prologue
    .line 26
    new-array v0, p1, [Lcom/cbs/app/view/model/ShowConfig;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/ShowConfig$1;->newArray(I)[Lcom/cbs/app/view/model/ShowConfig;

    move-result-object v0

    return-object v0
.end method
