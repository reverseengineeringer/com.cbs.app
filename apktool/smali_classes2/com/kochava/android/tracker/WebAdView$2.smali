.class final Lcom/kochava/android/tracker/WebAdView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 165
    iput-object p1, p0, Lcom/kochava/android/tracker/WebAdView$2;->a:Lcom/kochava/android/tracker/WebAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/kochava/android/tracker/WebAdView$2;->a:Lcom/kochava/android/tracker/WebAdView;

    invoke-virtual {v0}, Lcom/kochava/android/tracker/WebAdView;->onBackPressed()V

    .line 169
    return-void
.end method
