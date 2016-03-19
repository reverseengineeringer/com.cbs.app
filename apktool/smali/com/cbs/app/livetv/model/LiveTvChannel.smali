.class public Lcom/cbs/app/livetv/model/LiveTvChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/livetv/model/LiveTvChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/cbs/app/view/model/Affiliate;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/cbs/app/livetv/model/LiveTvChannel$1;

    invoke-direct {v0}, Lcom/cbs/app/livetv/model/LiveTvChannel$1;-><init>()V

    sput-object v0, Lcom/cbs/app/livetv/model/LiveTvChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->a:Lcom/cbs/app/view/model/Affiliate;

    .line 24
    iput-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->b:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->c:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->d:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/cbs/app/view/model/Affiliate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Affiliate;

    iput-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->a:Lcom/cbs/app/view/model/Affiliate;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->b:Ljava/util/List;

    .line 32
    iget-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->b:Ljava/util/List;

    const-class v1, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 33
    const-class v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    iput-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->c:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getAffiliate()Lcom/cbs/app/view/model/Affiliate;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->a:Lcom/cbs/app/view/model/Affiliate;

    return-object v0
.end method

.method public getChannel()Lcom/cbs/app/view/model/syncbak/SyncbakChannel;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->c:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    return-object v0
.end method

.method public getIsMvpd()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->d:Z

    return v0
.end method

.method public getPrograms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->b:Ljava/util/List;

    return-object v0
.end method

.method public setAffiliate(Lcom/cbs/app/view/model/Affiliate;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->a:Lcom/cbs/app/view/model/Affiliate;

    .line 60
    return-void
.end method

.method public setChannel(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->c:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 52
    return-void
.end method

.method public setIsMvpd(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->d:Z

    .line 72
    return-void
.end method

.method public setPrograms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->b:Ljava/util/List;

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->a:Lcom/cbs/app/view/model/Affiliate;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 43
    iget-object v0, p0, Lcom/cbs/app/livetv/model/LiveTvChannel;->c:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    return-void
.end method
