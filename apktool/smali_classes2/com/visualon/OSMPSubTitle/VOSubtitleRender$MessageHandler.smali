.class Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/VOSubtitleRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    .line 76
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    const-string v1, "handleMessage"

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->clearSubtitle(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$000(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/VOSubtitleRender$MessageHandler;->this$0:Lcom/visualon/OSMPSubTitle/VOSubtitleRender;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;

    # invokes: Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->createImageView(Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V
    invoke-static {v1, v0}, Lcom/visualon/OSMPSubTitle/VOSubtitleRender;->access$100(Lcom/visualon/OSMPSubTitle/VOSubtitleRender;Lcom/visualon/OSMPSubTitle/DataObject/VOSubtitleInfo;)V

    .line 84
    return-void
.end method
