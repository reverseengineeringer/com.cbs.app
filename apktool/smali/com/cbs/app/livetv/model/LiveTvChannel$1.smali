.class final Lcom/cbs/app/livetv/model/LiveTvChannel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/model/LiveTvChannel;
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
        "Lcom/cbs/app/livetv/model/LiveTvChannel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2081
    new-instance v0, Lcom/cbs/app/livetv/model/LiveTvChannel;

    invoke-direct {v0, p1}, Lcom/cbs/app/livetv/model/LiveTvChannel;-><init>(Landroid/os/Parcel;)V

    .line 79
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    .line 1085
    new-array v0, p1, [Lcom/cbs/app/livetv/model/LiveTvChannel;

    .line 79
    return-object v0
.end method
