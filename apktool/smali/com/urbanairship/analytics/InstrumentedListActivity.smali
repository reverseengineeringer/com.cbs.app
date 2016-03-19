.class public Lcom/urbanairship/analytics/InstrumentedListActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/urbanairship/analytics/InstrumentedListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/c;->a(Landroid/app/Application;)V

    .line 51
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 56
    invoke-static {p0}, Lcom/urbanairship/analytics/c;->a(Landroid/app/Activity;)V

    .line 57
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 62
    invoke-static {p0}, Lcom/urbanairship/analytics/c;->b(Landroid/app/Activity;)V

    .line 63
    return-void
.end method
