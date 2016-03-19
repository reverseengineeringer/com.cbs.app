.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/DebugFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:I

.field final synthetic c:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$19;->c:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$19;->a:Landroid/widget/TextView;

    iput p3, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$19;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 753
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    .line 754
    int-to-float v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 755
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    .line 756
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$19;->c:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/CapUtil;->a(Landroid/content/Context;F)V

    .line 757
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$19;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$19;->b:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 762
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 766
    return-void
.end method
