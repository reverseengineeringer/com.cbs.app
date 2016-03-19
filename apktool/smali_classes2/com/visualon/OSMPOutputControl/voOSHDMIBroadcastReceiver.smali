.class public Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$1;,
        Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HDMIBroadcastReceiver"


# instance fields
.field protected m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field protected m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    .line 29
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    .line 30
    return-void
.end method

.method private receiveHTCPC36100Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 116
    const-string v0, "android.intent.action.HTC.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    if-nez p2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string v1, "Headset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 130
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    invoke-interface {v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    goto :goto_0

    .line 128
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private receiveLGP920Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 139
    const-string v0, "android.intent.action.HDMI_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    if-nez p2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v1, "tv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    invoke-interface {v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    goto :goto_0
.end method

.method private receiveMotorola_V2_3Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 78
    const-string v0, "com.motorola.intent.action.externaldisplaystate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    if-nez p2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "hdmi"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    invoke-interface {v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    goto :goto_0
.end method

.method private receiveSELTsBroadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    const-string v0, "com.sonyericsson.intent.action.HDMI_EVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    if-nez p2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v0, "com.sonyericsson.intent.extra.HDMI_STATE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "HDMI_IN_USE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 107
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    invoke-interface {v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    goto :goto_0

    .line 105
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private receiveSharpSHsBroadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v0, "HDMI_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    goto :goto_0

    .line 170
    :cond_2
    const-string v0, "HDMI_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    goto :goto_0
.end method

.method private receiveVersion3Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 180
    const-string v0, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    if-nez p2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v1, "hdmi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    invoke-interface {v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    goto :goto_0
.end method

.method private receiveVersion4Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 203
    const-string v0, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    if-eqz p2, :cond_0

    .line 212
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 216
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 218
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    invoke-interface {v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;->checkHDMIState(I)V

    goto :goto_0

    .line 216
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 43
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    :goto_0
    sget-object v2, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$1;->$SwitchMap$com$visualon$OSMPOutputControl$voOSHDMIDeviceType:[I

    iget-object v3, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    invoke-virtual {v3}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_1
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveMotorola_V2_3Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 50
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveSELTsBroadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 53
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveHTCPC36100Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 56
    :pswitch_3
    invoke-direct {p0, v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveLGP920Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 59
    :pswitch_4
    invoke-direct {p0, v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveSharpSHsBroadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 62
    :pswitch_5
    invoke-direct {p0, v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveVersion3Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 65
    :pswitch_6
    invoke-direct {p0, v1, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->receiveVersion4Broadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setCheckHDMIStateInterface(Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->m_implCheckHDMIState:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;

    .line 34
    return-void
.end method
