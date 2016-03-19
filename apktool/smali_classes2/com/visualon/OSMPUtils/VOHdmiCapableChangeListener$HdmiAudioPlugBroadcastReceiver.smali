.class final Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiAudioPlugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$1;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;

    # getter for: Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->listener:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;
    invoke-static {v0}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->access$100(Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;)Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;

    move-result-object v0

    new-instance v1, Lcom/visualon/OSMPUtils/VOSupportEncoding;

    const-string v2, "android.media.extra.ENCODINGS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    const-string v3, "android.media.extra.AUDIO_PLUG_STATE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/visualon/OSMPUtils/VOSupportEncoding;-><init>([II)V

    invoke-interface {v0, v1}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;->onHdmiConnectChanged(Lcom/visualon/OSMPUtils/VOSupportEncoding;)V

    goto :goto_0
.end method
