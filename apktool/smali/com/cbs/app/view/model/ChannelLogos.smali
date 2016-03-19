.class public Lcom/cbs/app/view/model/ChannelLogos;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private channelName:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

.field private normalImageBitmap:Landroid/graphics/Bitmap;

.field private normalImageUrl:Ljava/lang/String;

.field private selectedImageBitmap:Landroid/graphics/Bitmap;

.field private selectedImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelName()Lcom/cbs/app/view/model/syncbak/SyncbakChannel;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cbs/app/view/model/ChannelLogos;->channelName:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    return-object v0
.end method

.method public getNormalImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cbs/app/view/model/ChannelLogos;->normalImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNormalImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cbs/app/view/model/ChannelLogos;->normalImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cbs/app/view/model/ChannelLogos;->selectedImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSelectedImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cbs/app/view/model/ChannelLogos;->selectedImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelName(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cbs/app/view/model/ChannelLogos;->channelName:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 24
    return-void
.end method

.method public setNormalImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cbs/app/view/model/ChannelLogos;->normalImageBitmap:Landroid/graphics/Bitmap;

    .line 56
    return-void
.end method

.method public setNormalImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cbs/app/view/model/ChannelLogos;->normalImageUrl:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSelectedImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cbs/app/view/model/ChannelLogos;->selectedImageBitmap:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method

.method public setSelectedImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cbs/app/view/model/ChannelLogos;->selectedImageUrl:Ljava/lang/String;

    .line 32
    return-void
.end method
