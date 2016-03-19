.class final Lcom/urbanairship/location/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/location/e;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/e;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/urbanairship/location/e$1;->a:Lcom/urbanairship/location/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/urbanairship/location/e$1;->a:Lcom/urbanairship/location/e;

    invoke-static {v0, p2}, Lcom/urbanairship/location/e;->a(Lcom/urbanairship/location/e;Landroid/os/IBinder;)V

    .line 93
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/urbanairship/location/e$1;->a:Lcom/urbanairship/location/e;

    invoke-static {v0}, Lcom/urbanairship/location/e;->a(Lcom/urbanairship/location/e;)V

    .line 99
    return-void
.end method
