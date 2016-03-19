.class public Lcom/visualon/OSMPUtils/voOSRectImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSRect;


# instance fields
.field mBottom:I

.field mLeft:I

.field mRight:I

.field mTop:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mLeft:I

    .line 38
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mTop:I

    .line 39
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mRight:I

    .line 40
    iput p4, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mBottom:I

    .line 41
    return-void
.end method


# virtual methods
.method public Bottom()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mBottom:I

    return v0
.end method

.method public Left()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mLeft:I

    return v0
.end method

.method public Right()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mRight:I

    return v0
.end method

.method public Top()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSRectImpl;->mTop:I

    return v0
.end method
