.class public Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private scrollDirection:I

.field private wrap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;->wrap:I

    .line 9
    iput v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;->scrollDirection:I

    .line 31
    return-void
.end method


# virtual methods
.method public getScrollDirection()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;->scrollDirection:I

    return v0
.end method

.method public getWrap()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleTextDisplayDescriptor;->wrap:I

    return v0
.end method
