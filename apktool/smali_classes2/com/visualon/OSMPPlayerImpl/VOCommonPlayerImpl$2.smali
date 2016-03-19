.class Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->adstartTimer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)V
    .locals 0

    .prologue
    .line 3811
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$2;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3814
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$2;->this$0:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    # getter for: Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mEventHandler:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->access$900(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;

    move-result-object v0

    const v1, -0xf0fffff

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl$EventHandler;->sendEmptyMessage(I)Z

    .line 3815
    return-void
.end method
