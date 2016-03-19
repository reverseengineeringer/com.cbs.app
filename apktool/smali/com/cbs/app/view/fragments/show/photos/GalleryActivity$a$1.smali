.class final Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a$1;
.super Lcom/d/a/b/f/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a$1;->a:Lcom/cbs/app/view/fragments/show/photos/GalleryActivity$a;

    invoke-direct {p0}, Lcom/d/a/b/f/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 862
    invoke-static {}, Lcom/cbs/app/view/fragments/show/photos/GalleryActivity;->c()Ljava/lang/String;

    .line 863
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 864
    return-void
.end method
