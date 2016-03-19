.class public final Lcom/kochava/android/tracker/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/android/tracker/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/android/tracker/b;


# direct methods
.method protected constructor <init>(Lcom/kochava/android/tracker/b;)V
    .locals 0

    .prologue
    .line 3491
    iput-object p1, p0, Lcom/kochava/android/tracker/b$c;->a:Lcom/kochava/android/tracker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 3513
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    .prologue
    .line 3496
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .prologue
    .line 3501
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 3503
    invoke-static {}, Lcom/kochava/android/a/b;->a()V

    .line 3504
    const-string v0, "is_in_background"

    invoke-static {v0}, Lcom/kochava/android/tracker/b$a;->a(Ljava/lang/String;)V

    .line 3505
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kochava/android/tracker/b;->d(Z)Z

    .line 3507
    :cond_0
    return-void
.end method
