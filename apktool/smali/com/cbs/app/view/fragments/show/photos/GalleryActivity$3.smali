.class final Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/widget/TouchTimeoutParent$TouchTimeoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3;->b:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 224
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3;->a:Landroid/app/Activity;

    new-instance v1, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3$1;-><init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 234
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3;->a:Landroid/app/Activity;

    new-instance v1, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3$2;-><init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method
