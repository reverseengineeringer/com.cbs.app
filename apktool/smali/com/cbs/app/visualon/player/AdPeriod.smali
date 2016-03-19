.class public Lcom/cbs/app/visualon/player/AdPeriod;
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
            "Lcom/cbs/app/visualon/player/AdPeriod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/cbs/app/visualon/player/AdPeriod$1;

    invoke-direct {v0}, Lcom/cbs/app/visualon/player/AdPeriod$1;-><init>()V

    sput-object v0, Lcom/cbs/app/visualon/player/AdPeriod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJJZ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/cbs/app/visualon/player/AdPeriod;->a:I

    .line 17
    iput-wide p2, p0, Lcom/cbs/app/visualon/player/AdPeriod;->b:J

    .line 18
    iput-wide p4, p0, Lcom/cbs/app/visualon/player/AdPeriod;->c:J

    .line 19
    iput-boolean p6, p0, Lcom/cbs/app/visualon/player/AdPeriod;->d:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v6, :cond_0

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cbs/app/visualon/player/AdPeriod;-><init>(IJJZ)V

    .line 24
    return-void

    .line 23
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/AdPeriod;->d:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/cbs/app/visualon/player/AdPeriod;->c:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cbs/app/visualon/player/AdPeriod;->a:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/cbs/app/visualon/player/AdPeriod;->b:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/cbs/app/visualon/player/AdPeriod;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-wide v0, p0, Lcom/cbs/app/visualon/player/AdPeriod;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-wide v0, p0, Lcom/cbs/app/visualon/player/AdPeriod;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-boolean v0, p0, Lcom/cbs/app/visualon/player/AdPeriod;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 48
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
