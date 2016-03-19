.class final Lcom/urbanairship/location/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/location/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/d$a;,
        Lcom/urbanairship/location/d$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/urbanairship/location/d;->a:Landroid/location/LocationManager;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/location/d;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/urbanairship/location/d;->a:Landroid/location/LocationManager;

    return-object v0
.end method

.method private a(Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 154
    invoke-virtual {p2}, Lcom/urbanairship/location/LocationRequestOptions;->a()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 155
    iget-object v1, p0, Lcom/urbanairship/location/d;->a:Landroid/location/LocationManager;

    invoke-virtual {v1, p1, v3}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v1

    .line 156
    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :cond_1
    const-string v2, "passive"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v0, "passive"

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/location/d;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/urbanairship/location/d;Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/location/d;->a(Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/location/Criteria;
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Lcom/urbanairship/location/d;->c(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/location/Criteria;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/location/Criteria;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 125
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 127
    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 143
    :goto_0
    return-object v0

    .line 129
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 130
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 134
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    goto :goto_0

    .line 138
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 139
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/location/LocationRequestOptions;",
            ")",
            "Lcom/urbanairship/k",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/urbanairship/location/d$b;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/location/d$b;-><init>(Lcom/urbanairship/location/d;Lcom/urbanairship/location/LocationRequestOptions;)V

    return-object v0
.end method

.method public final a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/urbanairship/location/d;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 108
    return-void
.end method

.method public final a(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V
    .locals 8

    .prologue
    .line 71
    invoke-static {p1}, Lcom/urbanairship/location/d;->c(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/location/Criteria;

    move-result-object v6

    .line 73
    iget-object v0, p0, Lcom/urbanairship/location/d;->a:Landroid/location/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/urbanairship/location/d;->a:Landroid/location/LocationManager;

    const-wide v2, 0x7fffffffffffffffL

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {p0, v6, p1}, Lcom/urbanairship/location/d;->a(Landroid/location/Criteria;Lcom/urbanairship/location/LocationRequestOptions;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/urbanairship/location/d;->a:Landroid/location/LocationManager;

    invoke-virtual {p1}, Lcom/urbanairship/location/LocationRequestOptions;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/urbanairship/location/LocationRequestOptions;->c()F

    move-result v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 93
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
