.class final Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/adapter/LiveTVScheduleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->c:Ljava/util/ArrayList;

    .line 254
    new-instance v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;-><init>(B)V

    iput-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    .line 257
    iput-object p1, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->a:Ljava/lang/String;

    .line 258
    iput p2, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->b:I

    .line 259
    iput-object p3, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->c:Ljava/util/ArrayList;

    .line 260
    iput-object p4, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    .line 261
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 265
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    iget-object v0, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x234

    if-lt v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    iget-object v0, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x22f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-static {}, Lcom/cbs/app/adapter/LiveTVScheduleAdapter;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "description inside onClick at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    iget-object v1, v1, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    iget-object v0, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    const-string v1, "More"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    const-string v1, "more"

    iput-object v1, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->b:I

    iget-object v2, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    iget-object v2, v2, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 278
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    iget-object v0, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    iget-object v0, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->i:Landroid/widget/TextView;

    const-string v1, "Less"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    const-string v1, "less"

    iput-object v1, v0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->b:I

    iget-object v2, p0, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$a;->d:Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;

    iget-object v2, v2, Lcom/cbs/app/adapter/LiveTVScheduleAdapter$b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
