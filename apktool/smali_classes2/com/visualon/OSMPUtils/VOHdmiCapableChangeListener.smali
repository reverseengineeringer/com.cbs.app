.class public Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$1;,
        Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;,
        Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;
    }
.end annotation


# static fields
.field private static final SUPPORT_ENCODING:Lcom/visualon/OSMPUtils/VOSupportEncoding;


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/visualon/OSMPUtils/VOSupportEncoding;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x2

    aput v2, v1, v3

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPUtils/VOSupportEncoding;-><init>([II)V

    sput-object v0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->SUPPORT_ENCODING:Lcom/visualon/OSMPUtils/VOSupportEncoding;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->listener:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;

    .line 34
    new-instance v0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->receiver:Landroid/content/BroadcastReceiver;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;)Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->listener:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;

    return-object v0
.end method


# virtual methods
.method public register()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->listener:Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;

    sget-object v1, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->SUPPORT_ENCODING:Lcom/visualon/OSMPUtils/VOSupportEncoding;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener$Listener;->onHdmiConnectChanged(Lcom/visualon/OSMPUtils/VOSupportEncoding;)V

    .line 51
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPUtils/VOHdmiCapableChangeListener;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    :cond_0
    return-void
.end method
