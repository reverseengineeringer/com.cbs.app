.class public Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSIOFailedDesc;


# instance fields
.field private reason:I

.field private response:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->reason:I

    .line 17
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->response:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->url:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->reason:I

    .line 24
    iput-object p2, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->response:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->url:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getReason()Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->reason:I

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;->valueOf(I)Lcom/visualon/OSMPUtils/voOSIOFailedDesc$VOOSMP_SRC_IO_DOWNLOAD_FAIL_REASON;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    if-nez p1, :cond_0

    .line 39
    :goto_0
    return v0

    .line 33
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->reason:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->response:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSIOFailedDescImpl;->url:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 39
    const/4 v0, 0x1

    goto :goto_0
.end method
