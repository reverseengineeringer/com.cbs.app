.class final Lcom/kochava/android/tracker/WebAdView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/android/tracker/WebAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/android/tracker/WebAdView;


# direct methods
.method private constructor <init>(Lcom/kochava/android/tracker/WebAdView;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/kochava/android/tracker/WebAdView$a;->a:Lcom/kochava/android/tracker/WebAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kochava/android/tracker/WebAdView;B)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/kochava/android/tracker/WebAdView$a;-><init>(Lcom/kochava/android/tracker/WebAdView;)V

    return-void
.end method


# virtual methods
.method public final onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kochava/android/tracker/WebAdView$a;->a:Lcom/kochava/android/tracker/WebAdView;

    iget-object v0, v0, Lcom/kochava/android/tracker/WebAdView;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/kochava/android/tracker/WebAdView$a;->a:Lcom/kochava/android/tracker/WebAdView;

    iget-object v0, v0, Lcom/kochava/android/tracker/WebAdView;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 231
    :cond_0
    return-void
.end method
