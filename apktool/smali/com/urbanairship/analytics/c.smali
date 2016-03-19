.class public final Lcom/urbanairship/analytics/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/urbanairship/i;


# instance fields
.field private final b:Lcom/urbanairship/analytics/a;

.field private final c:Lcom/urbanairship/analytics/j;

.field private final d:Lcom/urbanairship/analytics/d;

.field private e:Z

.field private final f:I

.field private final g:Lcom/urbanairship/a;

.field private final h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/a;)V
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lcom/urbanairship/analytics/a;

    iget v1, p3, Lcom/urbanairship/a;->r:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v3, p3, Lcom/urbanairship/a;->m:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/urbanairship/analytics/a;-><init>(IIZ)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/urbanairship/analytics/c;-><init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/a;Lcom/urbanairship/analytics/a;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/urbanairship/l;Lcom/urbanairship/a;Lcom/urbanairship/analytics/a;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/urbanairship/analytics/d;

    invoke-direct {v0, p2}, Lcom/urbanairship/analytics/d;-><init>(Lcom/urbanairship/l;)V

    iput-object v0, p0, Lcom/urbanairship/analytics/c;->d:Lcom/urbanairship/analytics/d;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/c;->h:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/urbanairship/analytics/j;

    invoke-direct {v0}, Lcom/urbanairship/analytics/j;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/c;->c:Lcom/urbanairship/analytics/j;

    .line 102
    iget v0, p3, Lcom/urbanairship/a;->r:I

    iput v0, p0, Lcom/urbanairship/analytics/c;->f:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/analytics/c;->e:Z

    .line 105
    iput-object p3, p0, Lcom/urbanairship/analytics/c;->g:Lcom/urbanairship/a;

    .line 107
    invoke-virtual {p0}, Lcom/urbanairship/analytics/c;->e()V

    .line 109
    iput-object p4, p0, Lcom/urbanairship/analytics/c;->b:Lcom/urbanairship/analytics/a;

    .line 110
    iget-object v0, p0, Lcom/urbanairship/analytics/c;->b:Lcom/urbanairship/analytics/a;

    new-instance v1, Lcom/urbanairship/analytics/c$1;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/analytics/c$1;-><init>(Lcom/urbanairship/analytics/c;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/a;->a(Lcom/urbanairship/analytics/a$a;)V

    .line 137
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 148
    new-instance v2, Lcom/urbanairship/analytics/c$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/urbanairship/analytics/c$2;-><init>(Landroid/app/Activity;J)V

    invoke-static {v2}, Lcom/urbanairship/p;->a(Lcom/urbanairship/p$a;)Lcom/urbanairship/e;

    .line 154
    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 343
    sget-object v0, Lcom/urbanairship/analytics/c;->a:Lcom/urbanairship/i;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lcom/urbanairship/analytics/c$4;

    invoke-direct {v0, p0}, Lcom/urbanairship/analytics/c$4;-><init>(Landroid/app/Application;)V

    .line 368
    sput-object v0, Lcom/urbanairship/analytics/c;->a:Lcom/urbanairship/i;

    invoke-virtual {v0}, Lcom/urbanairship/i;->a()V

    .line 370
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/analytics/c;Landroid/app/Activity;IJ)V
    .locals 1

    .prologue
    .line 52
    .line 2200
    iget-object v0, p0, Lcom/urbanairship/analytics/c;->b:Lcom/urbanairship/analytics/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/urbanairship/analytics/a;->a(Landroid/app/Activity;IJ)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/analytics/c;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/urbanairship/analytics/c;->e:Z

    return p1
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    new-instance v2, Lcom/urbanairship/analytics/c$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/urbanairship/analytics/c$3;-><init>(Landroid/app/Activity;J)V

    invoke-static {v2}, Lcom/urbanairship/p;->a(Lcom/urbanairship/p$a;)Lcom/urbanairship/e;

    .line 171
    return-void
.end method

.method static synthetic b(Lcom/urbanairship/analytics/c;Landroid/app/Activity;IJ)V
    .locals 1

    .prologue
    .line 52
    .line 3185
    iget-object v0, p0, Lcom/urbanairship/analytics/c;->b:Lcom/urbanairship/analytics/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/urbanairship/analytics/a;->b(Landroid/app/Activity;IJ)V

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;Lcom/urbanairship/location/LocationRequestOptions;Lcom/urbanairship/analytics/n$a;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 270
    if-nez p2, :cond_1

    move v3, v4

    .line 282
    :cond_0
    :goto_0
    new-instance v0, Lcom/urbanairship/analytics/n;

    invoke-virtual {p0}, Lcom/urbanairship/analytics/c;->a()Z

    move-result v5

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/analytics/n;-><init>(Landroid/location/Location;Lcom/urbanairship/analytics/n$a;IIZ)V

    .line 283
    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/c;->a(Lcom/urbanairship/analytics/h;)V

    .line 284
    return-void

    .line 274
    :cond_1
    invoke-virtual {p2}, Lcom/urbanairship/location/LocationRequestOptions;->c()F

    move-result v0

    float-to-int v4, v0

    .line 275
    invoke-virtual {p2}, Lcom/urbanairship/location/LocationRequestOptions;->a()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 278
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public final a(Lcom/urbanairship/analytics/h;)V
    .locals 4

    .prologue
    .line 220
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/urbanairship/analytics/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Analytics - Invalid event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 1422
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/analytics/c;->g:Lcom/urbanairship/a;

    iget-boolean v0, v0, Lcom/urbanairship/a;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/urbanairship/analytics/c;->d:Lcom/urbanairship/analytics/d;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 225
    :goto_1
    if-nez v0, :cond_4

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Analytics disabled - ignoring event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/analytics/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1422
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/urbanairship/analytics/c;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/urbanairship/analytics/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    if-nez v0, :cond_5

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analytics - Failed to add event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/analytics/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 235
    :cond_5
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/urbanairship/analytics/c;->h:Landroid/content/Context;

    const-class v3, Lcom/urbanairship/analytics/EventService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.analytics.ADD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_EVENT_TYPE"

    invoke-virtual {p1}, Lcom/urbanairship/analytics/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_EVENT_ID"

    invoke-virtual {p1}, Lcom/urbanairship/analytics/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_EVENT_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_EVENT_TIME_STAMP"

    invoke-virtual {p1}, Lcom/urbanairship/analytics/h;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_EVENT_SESSION_ID"

    iget-object v3, p0, Lcom/urbanairship/analytics/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/urbanairship/analytics/c;->h:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Analytics - Added event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/analytics/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/urbanairship/analytics/c;->j:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/urbanairship/analytics/c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/urbanairship/analytics/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method final c()Lcom/urbanairship/analytics/j;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/urbanairship/analytics/c;->c:Lcom/urbanairship/analytics/j;

    return-object v0
.end method

.method final d()Lcom/urbanairship/analytics/d;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/urbanairship/analytics/c;->d:Lcom/urbanairship/analytics/d;

    return-object v0
.end method

.method final e()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/c;->i:Ljava/lang/String;

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Analytics - New session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/analytics/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    return-void
.end method
