.class final Lcom/nielsen/app/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/d$a;
    }
.end annotation


# static fields
.field private static c:Lcom/nielsen/app/sdk/d;


# instance fields
.field private a:Lcom/nielsen/app/sdk/d$a;

.field private b:Landroid/location/Location;

.field private d:Landroid/content/Context;

.field private e:Landroid/location/LocationManager;

.field private f:Landroid/location/Criteria;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/d;->c:Lcom/nielsen/app/sdk/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/nielsen/app/sdk/d;->a:Lcom/nielsen/app/sdk/d$a;

    .line 82
    iput-object v0, p0, Lcom/nielsen/app/sdk/d;->b:Landroid/location/Location;

    .line 115
    iput-object v0, p0, Lcom/nielsen/app/sdk/d;->d:Landroid/content/Context;

    .line 192
    iput-object v0, p0, Lcom/nielsen/app/sdk/d;->e:Landroid/location/LocationManager;

    .line 193
    iput-object v0, p0, Lcom/nielsen/app/sdk/d;->f:Landroid/location/Criteria;

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/d;->g:Ljava/lang/String;

    .line 206
    iput-boolean v1, p0, Lcom/nielsen/app/sdk/d;->h:Z

    .line 219
    iput-boolean v1, p0, Lcom/nielsen/app/sdk/d;->i:Z

    .line 111
    new-instance v0, Lcom/nielsen/app/sdk/d$a;

    invoke-direct {v0, p0}, Lcom/nielsen/app/sdk/d$a;-><init>(Lcom/nielsen/app/sdk/d;)V

    iput-object v0, p0, Lcom/nielsen/app/sdk/d;->a:Lcom/nielsen/app/sdk/d$a;

    .line 112
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lcom/nielsen/app/sdk/d;->f:Landroid/location/Criteria;

    .line 113
    iput-object p1, p0, Lcom/nielsen/app/sdk/d;->d:Landroid/content/Context;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/d;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nielsen/app/sdk/d;->b:Landroid/location/Location;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/nielsen/app/sdk/d;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/nielsen/app/sdk/d;->c:Lcom/nielsen/app/sdk/d;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/nielsen/app/sdk/d;

    invoke-direct {v0, p0}, Lcom/nielsen/app/sdk/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nielsen/app/sdk/d;->c:Lcom/nielsen/app/sdk/d;

    .line 102
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/d;->c:Lcom/nielsen/app/sdk/d;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    iput-boolean v6, p0, Lcom/nielsen/app/sdk/d;->h:Z

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/d;->c()V

    .line 161
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->e:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->d:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nielsen/app/sdk/d;->e:Landroid/location/LocationManager;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->e:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 164
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/d;->h:Z

    .line 190
    :goto_0
    return v0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->f:Landroid/location/Criteria;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 167
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->f:Landroid/location/Criteria;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 168
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->f:Landroid/location/Criteria;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 170
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->f:Landroid/location/Criteria;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 171
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->f:Landroid/location/Criteria;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 173
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->e:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nielsen/app/sdk/d;->f:Landroid/location/Criteria;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/d;->g:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v6

    .line 175
    goto :goto_0

    .line 177
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/d;->h:Z

    .line 179
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->e:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nielsen/app/sdk/d;->g:Ljava/lang/String;

    const-wide/16 v2, 0x1f4

    const/high16 v4, 0x437a0000    # 250.0f

    iget-object v5, p0, Lcom/nielsen/app/sdk/d;->a:Lcom/nielsen/app/sdk/d$a;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 181
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->e:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nielsen/app/sdk/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/d;->b:Landroid/location/Location;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/d;->i:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :goto_1
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/d;->h:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nielsen/app/sdk/d;->i:Z

    if-eqz v0, :cond_4

    move v0, v7

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startUpdate() failed. Invalid arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v6

    .line 190
    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/d;->h:Z

    return v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/d;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->e:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->e:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nielsen/app/sdk/d;->a:Lcom/nielsen/app/sdk/d$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/d;->i:Z

    .line 218
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/d;->c()V

    .line 124
    return-void
.end method

.method public final d()Landroid/location/Location;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/nielsen/app/sdk/d;->b:Landroid/location/Location;

    return-object v0
.end method
