.class final Lcom/urbanairship/location/d$b;
.super Lcom/urbanairship/location/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/location/d;

.field private final b:Landroid/location/Criteria;

.field private final c:Lcom/urbanairship/location/LocationRequestOptions;

.field private d:Ljava/lang/String;

.field private final e:Lcom/urbanairship/location/d$a;

.field private final f:Lcom/urbanairship/location/d$a;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/d;Lcom/urbanairship/location/LocationRequestOptions;)V
    .locals 7

    .prologue
    .line 188
    iput-object p1, p0, Lcom/urbanairship/location/d$b;->a:Lcom/urbanairship/location/d;

    invoke-direct {p0}, Lcom/urbanairship/location/c;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/location/d$b;->d:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/urbanairship/location/d$b;->c:Lcom/urbanairship/location/LocationRequestOptions;

    .line 191
    invoke-static {p2}, Lcom/urbanairship/location/d;->b(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/location/Criteria;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/d$b;->b:Landroid/location/Criteria;

    .line 193
    new-instance v0, Lcom/urbanairship/location/d$b$1;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/location/d$b$1;-><init>(Lcom/urbanairship/location/d$b;Lcom/urbanairship/location/d;)V

    iput-object v0, p0, Lcom/urbanairship/location/d$b;->e:Lcom/urbanairship/location/d$a;

    .line 211
    new-instance v0, Lcom/urbanairship/location/d$b$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/urbanairship/location/d$b$2;-><init>(Lcom/urbanairship/location/d$b;Lcom/urbanairship/location/d;Lcom/urbanairship/location/LocationRequestOptions;)V

    iput-object v0, p0, Lcom/urbanairship/location/d$b;->f:Lcom/urbanairship/location/d$a;

    .line 226
    invoke-virtual {p2}, Lcom/urbanairship/location/LocationRequestOptions;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/urbanairship/location/d$b;->a:Lcom/urbanairship/location/d;

    invoke-static {v0}, Lcom/urbanairship/location/d;->a(Lcom/urbanairship/location/d;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/d$b;->b:Landroid/location/Criteria;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 1255
    if-eqz v0, :cond_0

    .line 1256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1259
    iget-object v0, p0, Lcom/urbanairship/location/d$b;->a:Lcom/urbanairship/location/d;

    invoke-static {v0}, Lcom/urbanairship/location/d;->a(Lcom/urbanairship/location/d;)Landroid/location/LocationManager;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v5, p0, Lcom/urbanairship/location/d$b;->f:Lcom/urbanairship/location/d$a;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/urbanairship/location/d$b;->d()V

    .line 231
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/location/d$b;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/urbanairship/location/d$b;->e()V

    return-void
.end method

.method static synthetic b(Lcom/urbanairship/location/d$b;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/urbanairship/location/d$b;->d()V

    return-void
.end method

.method static synthetic c(Lcom/urbanairship/location/d$b;)Landroid/location/Criteria;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/urbanairship/location/d$b;->b:Landroid/location/Criteria;

    return-object v0
.end method

.method static synthetic d(Lcom/urbanairship/location/d$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/urbanairship/location/d$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 234
    iget-object v0, p0, Lcom/urbanairship/location/d$b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/urbanairship/location/d$b;->a:Lcom/urbanairship/location/d;

    invoke-static {v0}, Lcom/urbanairship/location/d;->a(Lcom/urbanairship/location/d;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/d$b;->e:Lcom/urbanairship/location/d$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/d$b;->a:Lcom/urbanairship/location/d;

    iget-object v1, p0, Lcom/urbanairship/location/d$b;->b:Landroid/location/Criteria;

    iget-object v2, p0, Lcom/urbanairship/location/d$b;->c:Lcom/urbanairship/location/LocationRequestOptions;

    invoke-static {v0, v1, v2}, Lcom/urbanairship/location/d;->a(Lcom/urbanairship/location/d;Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;

    move-result-object v1

    .line 240
    iput-object v1, p0, Lcom/urbanairship/location/d$b;->d:Ljava/lang/String;

    .line 242
    if-eqz v1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/urbanairship/location/d$b;->a:Lcom/urbanairship/location/d;

    invoke-static {v0}, Lcom/urbanairship/location/d;->a(Lcom/urbanairship/location/d;)Landroid/location/LocationManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/urbanairship/location/d$b;->e:Lcom/urbanairship/location/d$a;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 247
    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/urbanairship/location/d$b;->a:Lcom/urbanairship/location/d;

    invoke-static {v0}, Lcom/urbanairship/location/d;->a(Lcom/urbanairship/location/d;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/d$b;->e:Lcom/urbanairship/location/d$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 278
    iget-object v0, p0, Lcom/urbanairship/location/d$b;->a:Lcom/urbanairship/location/d;

    invoke-static {v0}, Lcom/urbanairship/location/d;->a(Lcom/urbanairship/location/d;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/d$b;->f:Lcom/urbanairship/location/d$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 279
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/urbanairship/location/d$b;->e()V

    .line 271
    return-void
.end method
