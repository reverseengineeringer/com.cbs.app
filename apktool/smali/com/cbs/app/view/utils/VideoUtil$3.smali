.class final Lcom/cbs/app/view/utils/VideoUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/ResumeDialogFragment$ResumeDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;JLcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;

.field final synthetic b:Lcom/cbs/app/view/model/VideoData;

.field final synthetic c:Lcom/cbs/app/view/fragments/show/model/ShowItem;

.field final synthetic d:I

.field final synthetic e:J


# direct methods
.method constructor <init>(Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;IJ)V
    .locals 1

    .prologue
    .line 907
    iput-object p1, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->a:Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;

    iput-object p2, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->b:Lcom/cbs/app/view/model/VideoData;

    iput-object p3, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->c:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->d:I

    iput-wide p5, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 912
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->a:Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;

    iget-object v1, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->b:Lcom/cbs/app/view/model/VideoData;

    iget-object v2, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->c:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget v3, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->d:I

    iget-wide v4, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->e:J

    invoke-interface/range {v0 .. v5}, Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;->a(Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;IJ)V

    .line 913
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 919
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->a:Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;

    iget-object v1, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->b:Lcom/cbs/app/view/model/VideoData;

    iget-object v2, p0, Lcom/cbs/app/view/utils/VideoUtil$3;->c:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-interface/range {v0 .. v5}, Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;->a(Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;IJ)V

    .line 920
    return-void
.end method
