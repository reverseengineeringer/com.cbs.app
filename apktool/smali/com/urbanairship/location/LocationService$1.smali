.class final Lcom/urbanairship/location/LocationService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/urbanairship/k$a",
        "<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Messenger;

.field final synthetic b:I

.field final synthetic c:Lcom/urbanairship/location/LocationRequestOptions;

.field final synthetic d:Lcom/urbanairship/location/LocationService;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;ILcom/urbanairship/location/LocationRequestOptions;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/urbanairship/location/LocationService$1;->d:Lcom/urbanairship/location/LocationService;

    iput-object p2, p0, Lcom/urbanairship/location/LocationService$1;->a:Landroid/os/Messenger;

    iput p3, p0, Lcom/urbanairship/location/LocationService$1;->b:I

    iput-object p4, p0, Lcom/urbanairship/location/LocationService$1;->c:Lcom/urbanairship/location/LocationRequestOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 284
    check-cast p1, Landroid/location/Location;

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationService - Single location received for client: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/location/LocationService$1;->a:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/location/LocationService$1;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received single location update: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1291
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/LocationService$1;->c:Lcom/urbanairship/location/LocationRequestOptions;

    sget-object v2, Lcom/urbanairship/analytics/n$a;->b:Lcom/urbanairship/analytics/n$a;

    invoke-virtual {v0, p1, v1, v2}, Lcom/urbanairship/analytics/c;->a(Landroid/location/Location;Lcom/urbanairship/location/LocationRequestOptions;Lcom/urbanairship/analytics/n$a;)V

    .line 1294
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$1;->a:Landroid/os/Messenger;

    iget v1, p0, Lcom/urbanairship/location/LocationService$1;->b:I

    invoke-static {v0, v1, p1}, Lcom/urbanairship/location/LocationService;->a(Landroid/os/Messenger;ILjava/lang/Object;)Z

    .line 1296
    iget-object v0, p0, Lcom/urbanairship/location/LocationService$1;->d:Lcom/urbanairship/location/LocationService;

    iget-object v1, p0, Lcom/urbanairship/location/LocationService$1;->a:Landroid/os/Messenger;

    iget v2, p0, Lcom/urbanairship/location/LocationService$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/urbanairship/location/LocationService;->a(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;I)Lcom/urbanairship/k;

    .line 284
    return-void
.end method
