.class final Lcom/cbs/app/service/social/model/FBLink$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/service/social/model/FBLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2011
    new-instance v0, Lcom/cbs/app/service/social/model/TweetOperation;

    invoke-direct {v0, p1}, Lcom/cbs/app/service/social/model/TweetOperation;-><init>(Landroid/os/Parcel;)V

    .line 8
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    .line 1016
    new-array v0, p1, [Lcom/cbs/app/service/social/model/TweetOperation;

    .line 8
    return-object v0
.end method