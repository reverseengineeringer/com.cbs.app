.class public Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSModuleVersion;


# instance fields
.field private mModuleType:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->mModuleType:I

    .line 27
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->mVersion:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->mModuleType:I

    .line 43
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->mVersion:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->mModuleType:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->mVersion:Ljava/lang/String;

    .line 35
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->mModuleType:I

    .line 36
    iput-object p2, p0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->mVersion:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public GetModuleType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->mModuleType:I

    return v0
.end method

.method public GetVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return v0

    .line 63
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->mModuleType:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSModuleVersionImpl;->mVersion:Ljava/lang/String;

    .line 66
    const/4 v0, 0x1

    goto :goto_0
.end method
