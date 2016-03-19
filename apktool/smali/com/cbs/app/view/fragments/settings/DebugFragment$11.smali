.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$11;
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
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$11;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$11;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 546
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    .line 547
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$11;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->c(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    .line 549
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$11;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a(Lcom/cbs/app/view/fragments/settings/DebugFragment;Z)Z

    .line 550
    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide v2, 0x405b800000000000L    # 110.0

    mul-double/2addr v0, v2

    .line 551
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 552
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$11;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 553
    if-eqz v1, :cond_0

    .line 554
    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 555
    add-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$11;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b(Lcom/cbs/app/view/fragments/settings/DebugFragment;Z)Z

    .line 559
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 567
    return-void
.end method
