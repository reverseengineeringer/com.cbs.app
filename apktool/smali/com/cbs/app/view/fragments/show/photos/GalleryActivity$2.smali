.class final Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$2;->a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$2;->a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    iget-boolean v0, v0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->a:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$2;->a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->b()V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$2;->a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->a()V

    goto :goto_0
.end method
