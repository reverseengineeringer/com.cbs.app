.class public Lcom/urbanairship/analytics/InstrumentedActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/urbanairship/analytics/InstrumentedActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/c;->a(Landroid/app/Application;)V

    .line 50
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 55
    invoke-static {p0}, Lcom/urbanairship/analytics/c;->a(Landroid/app/Activity;)V

    .line 56
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 61
    invoke-static {p0}, Lcom/urbanairship/analytics/c;->b(Landroid/app/Activity;)V

    .line 62
    return-void
.end method
