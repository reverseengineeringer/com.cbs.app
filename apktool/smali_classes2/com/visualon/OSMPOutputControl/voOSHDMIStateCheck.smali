.class public Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$1;,
        Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;,
        Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;
    }
.end annotation


# static fields
.field public static final HDMISTATE_CONNECT:I = 0x1

.field public static final HDMISTATE_DISCONNECT:I = 0x0

.field public static final HDMISTATE_INITED:I = 0x800

.field private static final TAG:Ljava/lang/String; = "HDMIStateCheck"


# instance fields
.field protected m_Context:Landroid/content/Context;

.field protected m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

.field private m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

.field protected m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

.field protected m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

.field protected m_ifReceiveIntent:Landroid/content/IntentFilter;

.field protected m_nHDMIState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    .line 147
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    .line 148
    iput-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    .line 149
    iput-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_nHDMIState:I

    .line 310
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    new-instance v1, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;-><init>(Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    .line 312
    const-string v0, "HDMIStateCheck"

    const-string v1, "Looper.myLooper()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    :goto_0
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    .line 323
    invoke-direct {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->checkManufacturerAndModel()V

    .line 326
    return-void

    .line 313
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    new-instance v1, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;-><init>(Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    .line 315
    const-string v0, "HDMIStateCheck"

    const-string v1, "getMainLooper()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_1
    iput-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    goto :goto_0
.end method

.method private checkManufacturerAndModel()V
    .locals 5

    .prologue
    const/16 v3, 0xe

    const/16 v4, 0xa

    .line 524
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 525
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 528
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 533
    if-lt v2, v3, :cond_1

    .line 534
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->StandardVersion4:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    if-le v2, v4, :cond_2

    if-ge v2, v3, :cond_2

    .line 537
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->StandardVersion3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    .line 539
    :cond_2
    const-string v3, "Motorola"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 540
    const/16 v0, 0x8

    if-le v2, v0, :cond_0

    if-gt v2, v4, :cond_0

    .line 541
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->Motorola_V2_3:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    .line 544
    :cond_3
    const-string v2, "Sony"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 545
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SE_LTs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    .line 547
    :cond_4
    const-string v2, "htc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 548
    const-string v0, "PC36100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 549
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->HTC_PC36100:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    .line 552
    :cond_5
    const-string v1, "LGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 553
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->LG_P920:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    .line 555
    :cond_6
    const-string v1, "Sharp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 556
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SHARP_SHs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0

    .line 559
    :cond_7
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    goto :goto_0
.end method


# virtual methods
.method protected InitCheck_v3()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 567
    .line 568
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/switch/hdmi/state"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 575
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 576
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 580
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 588
    :goto_0
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->checkHDMIState(I)V

    .line 589
    return-void

    .line 582
    :catch_0
    move-exception v0

    move v0, v1

    .line 585
    goto :goto_0

    .line 584
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public Release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v1, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v1, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SHARP_SHs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    if-eq v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->setCheckHDMIStateInterface(Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    iput-object v5, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    .line 346
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    invoke-virtual {v0, v5}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 349
    :cond_1
    iput-object v5, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    .line 351
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 342
    const-string v1, "HDMIStateCheck"

    const-string v2, "HDMI Check module release occur error! error message is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public checkHDMIState(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 600
    iget v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_nHDMIState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 601
    iput p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_nHDMIState:I

    .line 602
    const/16 v0, 0x800

    .line 617
    :goto_0
    iget-object v3, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    if-eqz v3, :cond_0

    .line 619
    iget-object v3, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 620
    iget-object v4, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Handler:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;

    invoke-virtual {v4, v3}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    const-string v3, "HDMIStateCheck"

    const-string v4, "sendMessage HDMI status, ID is %d, status is %d."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    :cond_0
    return-void

    .line 605
    :cond_1
    iget v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_nHDMIState:I

    if-eq p1, v0, :cond_0

    .line 608
    iput p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_nHDMIState:I

    .line 610
    if-ne p1, v1, :cond_2

    move v0, v1

    .line 611
    goto :goto_0

    :cond_2
    move v0, v2

    .line 613
    goto :goto_0
.end method

.method protected excuteStart()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    invoke-direct {v0, v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;-><init>(Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;)V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    .line 187
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;->setCheckHDMIStateInterface(Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver$ICheckHDMIState;)V

    .line 192
    sget-object v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$1;->$SwitchMap$com$visualon$OSMPOutputControl$voOSHDMIDeviceType:[I

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    invoke-virtual {v1}, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    const-string v0, "HDMIStateCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HDMI module register completed, ready to receive HDMI broadcast, HDMI model is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    return-void

    .line 194
    :pswitch_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    .line 196
    const-string v0, "android.intent.action.HDMI_AUDIO_PLUG"

    .line 197
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->InitCheck_v3()V

    goto :goto_0

    .line 207
    :pswitch_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    .line 209
    const-string v0, "com.motorola.intent.action.externaldisplaystate"

    .line 210
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 216
    :pswitch_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    .line 218
    const-string v0, "com.sonyericsson.intent.action.HDMI_EVENT"

    .line 219
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 225
    :pswitch_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    .line 227
    const-string v0, "android.intent.action.HTC.HEADSET_PLUG"

    .line 228
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 233
    :pswitch_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    .line 235
    const-string v0, "android.intent.action.HDMI_PLUG"

    .line 236
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 241
    :pswitch_5
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->initSharpHDMIState()V

    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    .line 244
    const-string v0, "HDMI_CONNECTED"

    .line 245
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    const-string v1, "HDMI_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 252
    :pswitch_6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    .line 254
    const-string v0, "android.intent.action.HDMI_PLUGGED"

    .line 255
    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_HDMIBroadcastReceiver:Lcom/visualon/OSMPOutputControl/voOSHDMIBroadcastReceiver;

    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ifReceiveIntent:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 192
    nop

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

.method protected initSharpHDMIState()V
    .locals 5

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    const-string v1, "jp.co.sharp.android.hdmi"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 275
    const-string v1, "jp.co.sharp.android.hdmi.service.external.HDMIState"

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 279
    const-string v1, "getHDMIState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 281
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 282
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 284
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 286
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->checkHDMIState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected isDeviceSupportMultiGraphicsAnd1080p()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 358
    .line 360
    new-instance v2, Ljava/io/File;

    const-string v1, "/sys/class/graphics/"

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    :cond_0
    return v0

    .line 365
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 367
    array-length v1, v3

    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    .line 369
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 370
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/modes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 371
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 377
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 379
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 382
    :cond_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 383
    const-string v8, "1280"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 384
    const/4 v0, 0x1

    .line 389
    :cond_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    .line 392
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public isHDMIConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 506
    iget v1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_nHDMIState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLGHDMISupported()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    const-string v3, "android"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 426
    const-string v3, "android.media.HDMINative"

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 429
    const-string v3, "nativeIsHdmiEnabled"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 430
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 432
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 435
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 432
    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method protected isSharpHDMISupported()Z
    .locals 3

    .prologue
    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_Context:Landroid/content/Context;

    const-string v1, "jp.co.sharp.android.hdmi"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v2, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->NoHDMI:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 495
    :cond_0
    :goto_0
    return v0

    .line 462
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/switch/hdmi/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 466
    if-nez v0, :cond_0

    .line 470
    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v3, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SE_LTs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    if-ne v2, v3, :cond_2

    .line 471
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isDeviceSupportMultiGraphicsAnd1080p()Z

    move-result v0

    goto :goto_0

    .line 473
    :cond_2
    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v3, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->LG_P920:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    if-ne v2, v3, :cond_3

    .line 474
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isLGHDMISupported()Z

    move-result v0

    goto :goto_0

    .line 476
    :cond_3
    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_ManufacturerModel:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    sget-object v3, Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;->SHARP_SHs:Lcom/visualon/OSMPOutputControl/voOSHDMIDeviceType;

    if-ne v2, v3, :cond_4

    .line 477
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->isSharpHDMISupported()Z

    move-result v0

    goto :goto_0

    .line 480
    :cond_4
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/drm/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 488
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 489
    const-string v5, "HDMI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 490
    const/4 v0, 0x1

    .line 491
    goto :goto_0

    .line 488
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public restart(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public setOnHDMIStateChangeListener(Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    .line 516
    invoke-virtual {p0}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->excuteStart()V

    .line 517
    return-void
.end method
