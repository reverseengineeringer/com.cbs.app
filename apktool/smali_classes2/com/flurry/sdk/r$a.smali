.class final Lcom/flurry/sdk/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/r;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/r;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/flurry/sdk/r$a;->a:Lcom/flurry/sdk/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/flurry/sdk/r$a;->a:Lcom/flurry/sdk/r;

    invoke-static {v0, p1}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/r;Landroid/location/Location;)Landroid/location/Location;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/r$a;->a:Lcom/flurry/sdk/r;

    invoke-static {v0}, Lcom/flurry/sdk/r;->c(Lcom/flurry/sdk/r;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 279
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/r;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Max location reports reached, stopping"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/flurry/sdk/r$a;->a:Lcom/flurry/sdk/r;

    invoke-static {v0}, Lcom/flurry/sdk/r;->b(Lcom/flurry/sdk/r;)V

    .line 282
    :cond_1
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method
