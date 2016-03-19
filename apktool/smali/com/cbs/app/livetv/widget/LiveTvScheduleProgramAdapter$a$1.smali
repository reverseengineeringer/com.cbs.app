.class final Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a$1;
.super Lcom/d/a/b/f/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->a(Ljava/lang/Object;ILcom/cbs/app/view/model/Affiliate;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/content/res/Resources;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;


# direct methods
.method constructor <init>(Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;Landroid/widget/ImageView;Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a$1;->d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;

    iput-object p2, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a$1;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a$1;->b:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a$1;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/d/a/b/f/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a$1;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a$1;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a$1;->b:Landroid/content/res/Resources;

    const v2, 0x7f0d0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 116
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a$1;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_0
    return-void
.end method
