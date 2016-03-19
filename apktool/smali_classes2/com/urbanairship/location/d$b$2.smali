.class final Lcom/urbanairship/location/d$b$2;
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

.field final synthetic b:Lcom/urbanairship/location/LocationRequestOptions;

.field final synthetic c:Lcom/urbanairship/location/d$b;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/d$b;Lcom/urbanairship/location/d;Lcom/urbanairship/location/LocationRequestOptions;)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lcom/urbanairship/location/d$b$2;->c:Lcom/urbanairship/location/d$b;

    iput-object p2, p0, Lcom/urbanairship/location/d$b$2;->a:Lcom/urbanairship/location/d;

    iput-object p3, p0, Lcom/urbanairship/location/d$b$2;->b:Lcom/urbanairship/location/LocationRequestOptions;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/urbanairship/location/d$a;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/d$b$2;->c:Lcom/urbanairship/location/d$b;

    invoke-virtual {v0}, Lcom/urbanairship/location/d$b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/urbanairship/location/d$b$2;->c:Lcom/urbanairship/location/d$b;

    iget-object v0, v0, Lcom/urbanairship/location/d$b;->a:Lcom/urbanairship/location/d;

    iget-object v1, p0, Lcom/urbanairship/location/d$b$2;->c:Lcom/urbanairship/location/d$b;

    invoke-static {v1}, Lcom/urbanairship/location/d$b;->c(Lcom/urbanairship/location/d$b;)Landroid/location/Criteria;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/location/d$b$2;->b:Lcom/urbanairship/location/LocationRequestOptions;

    invoke-static {v0, v1, v2}, Lcom/urbanairship/location/d;->a(Lcom/urbanairship/location/d;Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/urbanairship/location/d$b$2;->c:Lcom/urbanairship/location/d$b;

    invoke-static {v1}, Lcom/urbanairship/location/d$b;->d(Lcom/urbanairship/location/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/urbanairship/location/d$b$2;->c:Lcom/urbanairship/location/d$b;

    invoke-static {v0}, Lcom/urbanairship/location/d$b;->b(Lcom/urbanairship/location/d$b;)V

    .line 222
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
