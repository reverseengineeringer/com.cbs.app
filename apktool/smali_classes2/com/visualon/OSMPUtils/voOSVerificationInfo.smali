.class public Lcom/visualon/OSMPUtils/voOSVerificationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private DataFlag:I

.field private DataSize:I

.field private ResponseData:[B

.field private ResponseDataSize:I

.field private UserData:I

.field private VerificationData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->UserData:I

    .line 121
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->VerificationData:Ljava/lang/String;

    .line 122
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->DataSize:I

    .line 123
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->DataFlag:I

    .line 124
    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->ResponseData:[B

    .line 125
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->ResponseDataSize:I

    .line 126
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I[B)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->UserData:I

    .line 111
    iput-object p2, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->VerificationData:Ljava/lang/String;

    .line 112
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->DataFlag:I

    .line 113
    iput-object p4, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->ResponseData:[B

    .line 114
    return-void
.end method


# virtual methods
.method public getDataFlag()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->DataFlag:I

    return v0
.end method

.method public getResponseData()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->ResponseData:[B

    return-object v0
.end method

.method public getUserData()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->UserData:I

    return v0
.end method

.method public getVerificationData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->VerificationData:Ljava/lang/String;

    return-object v0
.end method

.method public setDataFlag(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->DataFlag:I

    .line 83
    return-void
.end method

.method public setResponseData([B)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->ResponseData:[B

    .line 98
    return-void
.end method

.method public setUserData(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->UserData:I

    .line 49
    return-void
.end method

.method public setVerificationData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;->VerificationData:Ljava/lang/String;

    .line 65
    return-void
.end method
