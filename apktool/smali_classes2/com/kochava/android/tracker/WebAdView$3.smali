.class final Lcom/kochava/android/tracker/WebAdView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/android/tracker/WebAdView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/android/tracker/WebAdView;


# direct methods
.method constructor <init>(Lcom/kochava/android/tracker/WebAdView;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/kochava/android/tracker/WebAdView$3;->a:Lcom/kochava/android/tracker/WebAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/kochava/android/tracker/c;->a:Z

    .line 194
    iget-object v0, p0, Lcom/kochava/android/tracker/WebAdView$3;->a:Lcom/kochava/android/tracker/WebAdView;

    iget-object v0, v0, Lcom/kochava/android/tracker/WebAdView;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 196
    return-void
.end method
