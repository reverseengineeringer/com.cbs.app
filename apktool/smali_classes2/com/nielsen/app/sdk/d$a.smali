.class public final Lcom/nielsen/app/sdk/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/d;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/d;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nielsen/app/sdk/d$a;->a:Lcom/nielsen/app/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/nielsen/app/sdk/d$a;->a:Lcom/nielsen/app/sdk/d;

    invoke-static {v0, p1}, Lcom/nielsen/app/sdk/d;->a(Lcom/nielsen/app/sdk/d;Landroid/location/Location;)Landroid/location/Location;

    .line 51
    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
