.class public Lcom/visualon/OSMPUtils/voOSHTTPProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFlag:I

.field private mFlagData:Ljava/lang/Object;

.field private mProxyHost:Ljava/lang/String;

.field private mProxyPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSHTTPProxy;->mProxyHost:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSHTTPProxy;->mProxyPort:I

    .line 29
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSHTTPProxy;->mFlag:I

    .line 30
    iput-object p4, p0, Lcom/visualon/OSMPUtils/voOSHTTPProxy;->mFlagData:Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public getmFlag()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSHTTPProxy;->mFlag:I

    return v0
.end method

.method public getmFlagData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSHTTPProxy;->mFlagData:Ljava/lang/Object;

    return-object v0
.end method

.method public getmProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSHTTPProxy;->mProxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getmProxyPort()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSHTTPProxy;->mProxyPort:I

    return v0
.end method
