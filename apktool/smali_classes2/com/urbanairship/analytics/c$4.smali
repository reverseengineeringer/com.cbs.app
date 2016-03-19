.class final Lcom/urbanairship/analytics/c$4;
.super Lcom/urbanairship/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/c;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/urbanairship/i;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 359
    new-instance v2, Lcom/urbanairship/analytics/c$4$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/urbanairship/analytics/c$4$2;-><init>(Lcom/urbanairship/analytics/c$4;Landroid/app/Activity;J)V

    invoke-static {v2}, Lcom/urbanairship/p;->a(Lcom/urbanairship/p$a;)Lcom/urbanairship/e;

    .line 365
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 348
    new-instance v2, Lcom/urbanairship/analytics/c$4$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/urbanairship/analytics/c$4$1;-><init>(Lcom/urbanairship/analytics/c$4;Landroid/app/Activity;J)V

    invoke-static {v2}, Lcom/urbanairship/p;->a(Lcom/urbanairship/p$a;)Lcom/urbanairship/e;

    .line 354
    return-void
.end method
