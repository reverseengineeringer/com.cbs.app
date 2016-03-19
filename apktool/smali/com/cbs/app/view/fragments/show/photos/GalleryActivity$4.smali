.class final Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$4;->b:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$4;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$4;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 534
    return-void
.end method
