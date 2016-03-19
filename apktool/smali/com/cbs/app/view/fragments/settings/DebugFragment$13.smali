.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/DebugFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/SeekBar;

.field final synthetic b:Lcom/cbs/app/view/fragments/settings/DebugFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;->a:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 597
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "afterTextChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->d(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->e(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    const/16 v0, 0x3c

    .line 600
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->d(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->d(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->d(Lcom/cbs/app/view/fragments/settings/DebugFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 606
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    const/16 v1, 0x78

    if-gt v0, v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b(Lcom/cbs/app/view/fragments/settings/DebugFragment;Z)Z

    .line 608
    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sub-double/2addr v0, v2

    const-wide v2, 0x405b800000000000L    # 110.0

    div-double/2addr v0, v2

    .line 609
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    .line 610
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 611
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    .line 612
    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 618
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a(Lcom/cbs/app/view/fragments/settings/DebugFragment;Z)Z

    .line 619
    return-void

    .line 604
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    goto :goto_0

    .line 614
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 585
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "beforeTextChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 591
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTextChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$13;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a(Lcom/cbs/app/view/fragments/settings/DebugFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    return-void
.end method
