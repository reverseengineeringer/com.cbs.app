.class public final Lcom/urbanairship/location/LocationService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/location/LocationService;


# direct methods
.method public constructor <init>(Lcom/urbanairship/location/LocationService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/urbanairship/location/LocationService$a;->a:Lcom/urbanairship/location/LocationService;

    .line 545
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 546
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationService - Received message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 552
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 570
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationService - Unexpected message sent to location service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 572
    :goto_0
    return-void

    .line 554
    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$a;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0, p1}, Lcom/urbanairship/location/LocationService;->a(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V

    goto :goto_0

    .line 557
    :pswitch_2
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$a;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0, p1}, Lcom/urbanairship/location/LocationService;->b(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V

    goto :goto_0

    .line 560
    :pswitch_3
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$a;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0, p1}, Lcom/urbanairship/location/LocationService;->c(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V

    goto :goto_0

    .line 563
    :pswitch_4
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$a;->a:Lcom/urbanairship/location/LocationService;

    invoke-static {v0, p1}, Lcom/urbanairship/location/LocationService;->d(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V

    goto :goto_0

    .line 566
    :pswitch_5
    iget-object v1, p0, Lcom/urbanairship/location/LocationService$a;->a:Lcom/urbanairship/location/LocationService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/urbanairship/location/LocationService;->a(Lcom/urbanairship/location/LocationService;Landroid/content/Intent;)V

    .line 567
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$a;->a:Lcom/urbanairship/location/LocationService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/LocationService;->stopSelf(I)V

    goto :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
