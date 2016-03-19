.class public Lcom/visualon/OSMPUtils/voOSTimedTagImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSTimedTag;


# instance fields
.field private mData:[B

.field private mFlag:I

.field private mReserve:Ljava/lang/Object;

.field private mSize:I

.field private mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(JI[BILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;->mTimeStamp:J

    .line 56
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;->mSize:I

    .line 57
    iput-object p4, p0, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;->mData:[B

    .line 58
    iput p5, p0, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;->mFlag:I

    .line 59
    iput-object p6, p0, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;->mReserve:Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public Data()[B
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;->mData:[B

    return-object v0
.end method

.method public Flag()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;->mFlag:I

    return v0
.end method

.method public Reserve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;->mReserve:Ljava/lang/Object;

    return-object v0
.end method

.method public Size()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;->mSize:I

    return v0
.end method

.method public TimeStamp()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSTimedTagImpl;->mTimeStamp:J

    return-wide v0
.end method
