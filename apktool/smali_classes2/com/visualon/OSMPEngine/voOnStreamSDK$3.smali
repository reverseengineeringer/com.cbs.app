.class Lcom/visualon/OSMPEngine/voOnStreamSDK$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPEngine/voOnStreamSDK;->Open(Ljava/lang/Object;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V
    .locals 0

    .prologue
    .line 950
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$3;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 952
    if-ne p1, v1, :cond_0

    .line 953
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$3;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3602(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 954
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$3;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v2, 0x1026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 956
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 4

    .prologue
    .line 958
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$3;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const/4 v1, 0x0

    # setter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$3602(Lcom/visualon/OSMPEngine/voOnStreamSDK;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 960
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$3;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    const-wide/16 v2, 0x1026

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->SetParam(JLjava/lang/Object;)I

    .line 962
    :cond_0
    return-void
.end method
