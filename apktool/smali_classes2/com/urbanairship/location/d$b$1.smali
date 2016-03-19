.class final Lcom/urbanairship/location/d$b$1;
.super Lcom/urbanairship/location/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/location/d$b;-><init>(Lcom/urbanairship/location/d;Lcom/urbanairship/location/LocationRequestOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/location/d;

.field final synthetic b:Lcom/urbanairship/location/d$b;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/d$b;Lcom/urbanairship/location/d;)V
    .locals 1

    .prologue
    .line 193
    iput-object p1, p0, Lcom/urbanairship/location/d$b$1;->b:Lcom/urbanairship/location/d$b;

    iput-object p2, p0, Lcom/urbanairship/location/d$b$1;->a:Lcom/urbanairship/location/d;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/urbanairship/location/d$a;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/urbanairship/location/d$b$1;->b:Lcom/urbanairship/location/d$b;

    invoke-static {v0}, Lcom/urbanairship/location/d$b;->a(Lcom/urbanairship/location/d$b;)V

    .line 197
    iget-object v0, p0, Lcom/urbanairship/location/d$b$1;->b:Lcom/urbanairship/location/d$b;

    invoke-virtual {v0, p1}, Lcom/urbanairship/location/d$b;->a(Landroid/location/Location;)V

    .line 198
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/d$b$1;->b:Lcom/urbanairship/location/d$b;

    invoke-virtual {v0}, Lcom/urbanairship/location/d$b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/urbanairship/location/d$b$1;->b:Lcom/urbanairship/location/d$b;

    invoke-static {v0}, Lcom/urbanairship/location/d$b;->b(Lcom/urbanairship/location/d$b;)V

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
