.class public Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$EventHandler;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;

    .line 81
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking$EventHandler;->this$0:Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;

    # invokes: Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->closeAppSdk()V
    invoke-static {v0}, Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;->access$000(Lcom/visualon/OSMPAdTracking/VOOSMPNielsenBaseTracking;)V

    .line 90
    :cond_0
    return-void
.end method
